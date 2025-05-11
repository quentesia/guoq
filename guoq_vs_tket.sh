#!/usr/bin/env bash
set -euo pipefail

BASE_GUOQ="results/guoq_results"
BASE_TKET="results/tket_results"
BASE_PYZX="results/pyzx_results"

# --- Initialize Grand Total Counters ---
grand_total_guoq_wins=0
grand_total_tket_wins=0
grand_total_pyzx_wins=0
grand_total_benchmark_ties=0 # Counter for benchmarks that ended in a tie

# --- Determine hardware list solely from GUOQ ---
if [ ! -d "$BASE_GUOQ" ]; then
    echo "[ERROR] GUOQ results directory not found: $BASE_GUOQ"
    exit 1
fi

mapfile -t HWS < <(ls -1 "$BASE_GUOQ" | sort)

if [ ${#HWS[@]} -eq 0 ]; then
    echo "[INFO] No hardware subdirectories found in GUOQ results directory: $BASE_GUOQ"
    exit 0
fi
echo "Processing all hardware found in $BASE_GUOQ (excluding any specified skips): ${HWS[*]}"
echo

# --- Check availability of other tools' base directories ---
TKET_BASE_DIR_EXISTS=false
if [ -d "$BASE_TKET" ]; then
    TKET_BASE_DIR_EXISTS=true
    echo "[INFO] TKET results directory found: $BASE_TKET. Will attempt to find matching results."
else
    echo "[INFO] TKET results directory not found: $BASE_TKET. TKET results will generally be N/A."
fi

PYZX_BASE_DIR_EXISTS=false
if [ -d "$BASE_PYZX" ]; then
    PYZX_BASE_DIR_EXISTS=true
    echo "[INFO] PYZX results directory found: $BASE_PYZX. Will attempt to find matching results."
else
    echo "[INFO] PYZX results directory not found: $BASE_PYZX. PYZX results will generally be N/A."
fi
echo # Blank line for readability before processing starts

# --- Main processing loop ---
for hw in "${HWS[@]}"; do
    # --- Skip specified hardware ---
    if [[ "$hw" == "nam_t_tdg" ]]; then # Example skip condition
        echo "[INFO] Skipping specified hardware: $hw"
        echo # Add a blank line for clarity after skipping
        continue
    fi

    GUOQ_HW_DIR="$BASE_GUOQ/$hw"
    echo "=== $hw ==="
    found_benchmarks_in_hw=false

    # --- Initialize Hardware-Specific Counters & Flags ---
    hw_guoq_wins=0
    hw_tket_wins=0
    hw_pyzx_wins=0
    hw_benchmark_ties_count=0 # Counter for benchmarks tied on this hardware
    hw_benchmarks_analyzed_count=0 # Count benchmarks processed for this hardware

    hw_tket_had_any_results=false # Flag: did TKET have any numeric data for this HW?
    hw_pyzx_had_any_results=false # Flag: did PYZX have any numeric data for this HW?


    for guoq_path in "$GUOQ_HW_DIR"/latest_sol__*.qasm; do
        [ -e "$guoq_path" ] || continue # Skip if no guoq files match
        found_benchmarks_in_hw=true
        hw_benchmarks_analyzed_count=$((hw_benchmarks_analyzed_count + 1))

        base=${guoq_path##*/}
        base=${base#latest_sol__}
        base=${base%.qasm}

        declare -A counts_map # Associative array to store gate counts for current benchmark {GUOQ:count, TKET:count, PYZX:count}
        output_parts=()      # Array to build the "GUOQ=X  TKET=Y  PYZX=Z" part of the output

        # --- GUOQ Processing (always primary) ---
        guoq_cnt=$(grep -cE '^\s*(cx|rxx)\b' "$guoq_path" || true)
        counts_map["GUOQ"]=$guoq_cnt
        output_parts+=("GUOQ=$guoq_cnt")

        # --- TKET Processing ---
        tket_display_info="TKET=N/A" # Default display for TKET
        if $TKET_BASE_DIR_EXISTS; then
            TKET_HW_DIR_FOR_CURRENT_HW="$BASE_TKET/$hw"
            if [ -d "$TKET_HW_DIR_FOR_CURRENT_HW" ]; then
                tket_qasm_path="$TKET_HW_DIR_FOR_CURRENT_HW/${base}_ibmn_tket.qasm"
                if [ -f "$tket_qasm_path" ]; then
                    tket_cnt_val=$(grep -cE '^\s*(cx|rxx)\b' "$tket_qasm_path" || true)
                    counts_map["TKET"]=$tket_cnt_val
                    tket_display_info="TKET=$tket_cnt_val"
                    hw_tket_had_any_results=true # TKET provided a numeric result for this HW
                else
                    echo "  [WARN] no TKET result file for $base in $TKET_HW_DIR_FOR_CURRENT_HW (expected $tket_qasm_path)"
                fi
            # If $TKET_HW_DIR_FOR_CURRENT_HW doesn't exist, tket_display_info remains N/A.
            fi
        fi
        output_parts+=("$tket_display_info")

        # --- PYZX Processing ---
        pyzx_display_info="PYZX=N/A" # Default display for PYZX
        if $PYZX_BASE_DIR_EXISTS; then
            PYZX_HW_DIR_FOR_CURRENT_HW="$BASE_PYZX/$hw"
            if [ -d "$PYZX_HW_DIR_FOR_CURRENT_HW" ]; then
                pyzx_qasm_path_variant1="$PYZX_HW_DIR_FOR_CURRENT_HW/${base}.qasm"
                pyzx_qasm_path_variant2="$PYZX_HW_DIR_FOR_CURRENT_HW/${base}_pyzx.qasm"
                pyzx_qasm_path_to_use=""

                if [ -f "$pyzx_qasm_path_variant1" ]; then
                    pyzx_qasm_path_to_use="$pyzx_qasm_path_variant1"
                elif [ -f "$pyzx_qasm_path_variant2" ]; then
                    pyzx_qasm_path_to_use="$pyzx_qasm_path_variant2"
                fi
                
                if [ -n "$pyzx_qasm_path_to_use" ]; then
                    pyzx_cnt_val=$(grep -cE '^\s*(cx|rxx)\b' "$pyzx_qasm_path_to_use" || true)
                    counts_map["PYZX"]=$pyzx_cnt_val
                    pyzx_display_info="PYZX=$pyzx_cnt_val"
                    hw_pyzx_had_any_results=true # PYZX provided a numeric result for this HW
                else
                    echo "  [WARN] no PYZX result file for $base in $PYZX_HW_DIR_FOR_CURRENT_HW (tried ${base}.qasm and ${base}_pyzx.qasm)"
                fi
            fi
        fi
        output_parts+=("$pyzx_display_info")

        # --- Determine winner(s) for this benchmark based on available counts ---
        min_val=-1
        for tool_name in "${!counts_map[@]}"; do
            current_count=${counts_map[$tool_name]}
            if ! [[ "$current_count" =~ ^[0-9]+$ ]]; then 
                continue 
            fi
            if [[ "$min_val" -eq -1 || "$current_count" -lt "$min_val" ]]; then
                min_val=$current_count
            fi
        done

        winners_list=()
        if [[ "$min_val" -ne -1 ]]; then 
            for tool_name in "${!counts_map[@]}"; do
                if [[ "${counts_map[$tool_name]}" -eq "$min_val" ]]; then
                    winners_list+=("$tool_name")
                fi
            done
        fi
        
        IFS=$'\n' sorted_winners_list=($(sort <<<"${winners_list[*]}"))
        unset IFS 

        result_str=""
        if [ ${#sorted_winners_list[@]} -eq 0 ]; then
            result_str="No comparable data" 
        elif [ ${#sorted_winners_list[@]} -eq 1 ]; then # Sole winner
            result_str="${sorted_winners_list[0]} wins"
            case "${sorted_winners_list[0]}" in
                GUOQ) hw_guoq_wins=$((hw_guoq_wins + 1));;
                TKET) hw_tket_wins=$((hw_tket_wins + 1));;
                PYZX) hw_pyzx_wins=$((hw_pyzx_wins + 1));;
            esac
        else # This case means multiple tools tied for the win on this benchmark
            joined_winners=$(printf " & %s" "${sorted_winners_list[@]}")
            result_str="${joined_winners:3} tie" 
            hw_benchmark_ties_count=$((hw_benchmark_ties_count + 1)) # Increment tie counter ONLY
            # DO NOT increment individual win counters for tools involved in a tie
        fi
        
        echo "  $base: $(IFS=$'  '; echo "${output_parts[*]}")  → $result_str"
    done # End of benchmark loop for one hardware

    # --- Print Summary for the Current Hardware ---
    if ! $found_benchmarks_in_hw; then
        echo "  [INFO] No 'latest_sol__*.qasm' benchmark files found in $GUOQ_HW_DIR"
    else
        echo "--- $hw Summary (Processed $hw_benchmarks_analyzed_count benchmarks) ---"
        echo "  GUOQ wins on $hw: $hw_guoq_wins"
        if $TKET_BASE_DIR_EXISTS; then 
            echo "  TKET wins on $hw: $hw_tket_wins"
        fi
        if $PYZX_BASE_DIR_EXISTS; then 
             echo "  PYZX wins on $hw: $hw_pyzx_wins"
        fi
        echo "  Benchmarks tied on $hw: $hw_benchmark_ties_count" # Display count of tied benchmarks

        # Sanity check: Wins + Ties should equal total benchmarks analyzed
        # local total_accounted_for=$((hw_guoq_wins + hw_tket_wins + hw_pyzx_wins + hw_benchmark_ties_count))
        # if [[ "$total_accounted_for" -ne "$hw_benchmarks_analyzed_count" ]]; then
        #     echo "  [DEBUG] Discrepancy: Wins ($hw_guoq_wins+$hw_tket_wins+$hw_pyzx_wins) + Ties ($hw_benchmark_ties_count) = $total_accounted_for != Analyzed ($hw_benchmarks_analyzed_count)"
        # fi


        hw_overall_leader_names=()
        max_hw_wins_for_summary=-1

        # Determine leader based on sole wins
        if [[ $hw_guoq_wins -gt $max_hw_wins_for_summary ]]; then max_hw_wins_for_summary=$hw_guoq_wins; fi
        # Only consider TKET/PYZX if their base directory exists AND they had results for this hardware
        if $TKET_BASE_DIR_EXISTS && $hw_tket_had_any_results && [[ $hw_tket_wins -gt $max_hw_wins_for_summary ]]; then max_hw_wins_for_summary=$hw_tket_wins; fi
        if $PYZX_BASE_DIR_EXISTS && $hw_pyzx_had_any_results && [[ $hw_pyzx_wins -gt $max_hw_wins_for_summary ]]; then max_hw_wins_for_summary=$hw_pyzx_wins; fi
        
        if [[ $max_hw_wins_for_summary -le 0 && $hw_benchmark_ties_count -eq 0 ]]; then 
             # This case means no sole wins AND no ties, only makes sense if no benchmarks were processed or all were N/A
            if [[ $hw_benchmarks_analyzed_count -gt 0 ]]; then
                 echo "  Overall for $hw: No tool achieved any sole wins and no benchmarks were tied (check for N/A results)."
            else
                 echo "  Overall for $hw: No benchmarks processed or all results were N/A."
            fi
        elif [[ $max_hw_wins_for_summary -le 0 && $hw_benchmark_ties_count -gt 0 ]]; then
            echo "  Overall for $hw: No tool achieved any sole wins, but $hw_benchmark_ties_count benchmarks were tied."
        else # At least one tool has sole wins
            if [[ $hw_guoq_wins -eq $max_hw_wins_for_summary ]]; then hw_overall_leader_names+=("GUOQ"); fi
            if $TKET_BASE_DIR_EXISTS && $hw_tket_had_any_results && [[ $hw_tket_wins -eq $max_hw_wins_for_summary ]]; then hw_overall_leader_names+=("TKET"); fi
            if $PYZX_BASE_DIR_EXISTS && $hw_pyzx_had_any_results && [[ $hw_pyzx_wins -eq $max_hw_wins_for_summary ]]; then hw_overall_leader_names+=("PYZX"); fi

            IFS=$'\n' hw_overall_leader_names=($(sort <<<"${hw_overall_leader_names[*]}"))
            unset IFS

            if [ ${#hw_overall_leader_names[@]} -eq 1 ]; then
                echo "  Overall for $hw: ${hw_overall_leader_names[0]} is the winner for $hw ($max_hw_wins_for_summary sole wins)"
            else
                num_leaders=${#hw_overall_leader_names[@]}
                joined_hw_leaders_str=""
                for i in "${!hw_overall_leader_names[@]}"; do
                    if [[ $i -gt 0 ]]; then
                        if [[ $i -eq $((num_leaders - 1)) ]]; then
                            joined_hw_leaders_str+=" and "
                        else
                            joined_hw_leaders_str+=", "
                        fi
                    fi
                    joined_hw_leaders_str+="${hw_overall_leader_names[$i]}"
                done
                echo "  Overall for $hw: $joined_hw_leaders_str lead with $max_hw_wins_for_summary sole wins each."
            fi
        fi
    fi
    echo 

    # --- Update Grand Totals ---
    grand_total_guoq_wins=$((grand_total_guoq_wins + hw_guoq_wins))
    # Only add to TKET/PYZX grand total wins if their base dir exists AND they had results for this HW
    # This prevents skewing grand totals if a tool is N/A for an entire hardware set
    if $TKET_BASE_DIR_EXISTS && $hw_tket_had_any_results; then 
        grand_total_tket_wins=$((grand_total_tket_wins + hw_tket_wins))
    fi
    if $PYZX_BASE_DIR_EXISTS && $hw_pyzx_had_any_results; then 
        grand_total_pyzx_wins=$((grand_total_pyzx_wins + hw_pyzx_wins))
    fi
    grand_total_benchmark_ties=$((grand_total_benchmark_ties + hw_benchmark_ties_count)) 

done # End of hardware loop

# --- Print Grand Total Summary ---
echo "========================================"
echo "=== OVERALL GRAND TOTALS ==="
echo "========================================"
echo "Total GUOQ sole wins across all processed hardware: $grand_total_guoq_wins"
if $TKET_BASE_DIR_EXISTS; then
    echo "Total TKET sole wins across all processed hardware (where results were found): $grand_total_tket_wins"
fi
if $PYZX_BASE_DIR_EXISTS; then
    echo "Total PYZX sole wins across all processed hardware (where results were found): $grand_total_pyzx_wins"
fi
echo "Total benchmarks tied across all hardware: $grand_total_benchmark_ties" 

grand_overall_leader_names=()
max_grand_wins=-1

# Determine grand leader based on sole wins
if [[ $grand_total_guoq_wins -gt $max_grand_wins ]]; then max_grand_wins=$grand_total_guoq_wins; fi
if $TKET_BASE_DIR_EXISTS && [[ $grand_total_tket_wins -gt $max_grand_wins ]]; then max_grand_wins=$grand_total_tket_wins; fi
if $PYZX_BASE_DIR_EXISTS && [[ $grand_total_pyzx_wins -gt $max_grand_wins ]]; then max_grand_wins=$grand_total_pyzx_wins; fi

if [[ $max_grand_wins -le 0 && $grand_total_benchmark_ties -eq 0 ]]; then
    echo "Overall Result: No tool achieved any sole wins and no benchmarks resulted in a tie across all hardware."
elif [[ $max_grand_wins -le 0 && $grand_total_benchmark_ties -gt 0 ]]; then
    echo "Overall Result: No tool achieved any sole wins, but $grand_total_benchmark_ties benchmarks were tied."
else # At least one tool has sole wins
    if [[ $grand_total_guoq_wins -eq $max_grand_wins ]]; then grand_overall_leader_names+=("GUOQ"); fi
    if $TKET_BASE_DIR_EXISTS && [[ $grand_total_tket_wins -eq $max_grand_wins ]]; then grand_overall_leader_names+=("TKET"); fi
    if $PYZX_BASE_DIR_EXISTS && [[ $grand_total_pyzx_wins -eq $max_grand_wins ]]; then grand_overall_leader_names+=("PYZX"); fi

    IFS=$'\n' grand_overall_leader_names=($(sort <<<"${grand_overall_leader_names[*]}"))
    unset IFS

    if [ ${#grand_overall_leader_names[@]} -eq 1 ]; then
        echo "Overall Result: ${grand_overall_leader_names[0]} is the grand winner! ($max_grand_wins sole wins)"
    else
        num_grand_leaders=${#grand_overall_leader_names[@]}
        joined_grand_leaders_str=""
        for i in "${!grand_overall_leader_names[@]}"; do
            if [[ $i -gt 0 ]]; then
                if [[ $i -eq $((num_grand_leaders - 1)) ]]; then
                    joined_grand_leaders_str+=" and "
                else
                    joined_grand_leaders_str+=", "
                fi
            fi
            joined_grand_leaders_str+="${grand_overall_leader_names[$i]}"
        done
        echo "Overall Result: $joined_grand_leaders_str lead with $max_grand_wins sole wins each."
    fi
fi
echo "========================================"

