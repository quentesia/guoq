#!/bin/bash

# Directories to compare
DIR1="benchmarks/nam_rz"
DIR2="benchmarks/nam_t_tdg"

# ANSI color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'   # For directory names/headers
NC='\033[0m'     # No Color
BOLD='\033[1m'

# --- Helper function to check if an element is in an array ---
# Not strictly needed with associative arrays but kept for clarity if preferred
# containsElement () {
#   local e match="$1"
#   shift
#   for e; do [[ "$e" == "$match" ]] && return 0; done
#   return 1
# }

# --- 1. Check if directories exist ---
if [ ! -d "$DIR1" ]; then
    echo -e "${RED}Error: Directory '$DIR1' not found.${NC}"
    exit 1
fi
if [ ! -d "$DIR2" ]; then
    echo -e "${RED}Error: Directory '$DIR2' not found.${NC}"
    exit 1
fi

# --- 2. Get sorted lists of filenames and store them in arrays ---
# Using process substitution and mapfile to read sorted lists into arrays
mapfile -t files1_sorted < <(ls -1 "$DIR1" | sort)
mapfile -t files2_sorted < <(ls -1 "$DIR2" | sort)

# --- 3. Use associative arrays for efficient lookup of file existence ---
declare -A is_in_dir1
declare -A is_in_dir2

max_len1=0
for f in "${files1_sorted[@]}"; do
    is_in_dir1["$f"]=1 # Mark file as present in DIR1
    if (( ${#f} > max_len1 )); then max_len1=${#f}; fi
done
# Also consider directory name length for header formatting
if (( ${#DIR1} > max_len1 )); then max_len1=${#DIR1}; fi
# Ensure a minimum column width if all filenames are very short
if (( max_len1 < 10 )); then max_len1=10; fi


max_len2=0
for f in "${files2_sorted[@]}"; do
    is_in_dir2["$f"]=1 # Mark file as present in DIR2
    if (( ${#f} > max_len2 )); then max_len2=${#f}; fi
done
if (( ${#DIR2} > max_len2 )); then max_len2=${#DIR2}; fi
if (( max_len2 < 10 )); then max_len2=10; fi


# --- 4. Print headers ---
# Use calculated max_len for column widths to ensure alignment
printf "${BOLD}${BLUE}%-${max_len1}s${NC}  |  ${BOLD}${BLUE}%-${max_len2}s${NC}\n" "$DIR1" "$DIR2"
# Print a separator line matching the width of the headers
header_sep1=$(printf '=%.0s' $(seq 1 $max_len1))
header_sep2=$(printf '=%.0s' $(seq 1 $max_len2))
printf "${BOLD}%-${max_len1}s${NC}  |  ${BOLD}%-${max_len2}s${NC}\n" "$header_sep1" "$header_sep2"

# --- 5. Create a combined list of all unique filenames across both directories, sorted ---
mapfile -t all_files_globally_sorted < <( (printf "%s\n" "${files1_sorted[@]}" "${files2_sorted[@]}") | sort -u )

# --- 6. Iterate through all sorted unique files and print side-by-side with highlighting ---
for file in "${all_files_globally_sorted[@]}"; do
    display_name_dir1=""
    display_name_dir2=""
    color_dir1="${NC}" # Default: No Color
    color_dir2="${NC}" # Default: No Color

    file_exists_in_dir1=0
    file_exists_in_dir2=0

    # Check presence using the associative arrays
    if [[ -n "${is_in_dir1[$file]}" ]]; then
        file_exists_in_dir1=1
        display_name_dir1="$file"
    fi

    if [[ -n "${is_in_dir2[$file]}" ]]; then
        file_exists_in_dir2=1
        display_name_dir2="$file"
    fi

    # Determine highlighting based on uniqueness
    if (( file_exists_in_dir1 == 1 && file_exists_in_dir2 == 0 )); then # Unique to DIR1
        color_dir1="${RED}"
    elif (( file_exists_in_dir1 == 0 && file_exists_in_dir2 == 1 )); then # Unique to DIR2
        color_dir2="${GREEN}"
    fi
    # Common files (file_exists_in_dir1 == 1 && file_exists_in_dir2 == 1) will use NC (No Color)

    # Print the formatted line for the current file
    printf "${color_dir1}%-${max_len1}s${NC}  |  ${color_dir2}%-${max_len2}s${NC}\n" "$display_name_dir1" "$display_name_dir2"
done

