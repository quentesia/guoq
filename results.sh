#stdbuf -oL ./guoq_vs_tket.sh | tee compare.log

echo "TKET wins:  $(grep -c '→ TKET wins'  compare.log)"
echo "GUOQ wins:  $(grep -c '→ GUOQ wins' compare.log)"
echo "PYZX wins:  $(grep -c '→ PYZX wins' compare.log)"
echo "GUOQ & PYZX & TKET ties:  $(grep -c '→ GUOQ & PYZX & TKET tie' compare.log)"
echo "GUOQ & TKET ties:  $(grep -c '→ GUOQ & TKET tie' compare.log)"
echo "GUOQ & PYZX ties:  $(grep -c '→ GUOQ & PYZX tie' compare.log)"

echo
echo "===== Circuits where GUOQ wins ====="
grep '→ GUOQ wins' compare.log | awk '{print $1}'

#echo
#echo "===== Circuits where GUOQ tied ====="
#grep '→ GUOQ &' compare.log     | awk '{print $1}'

{
  grep '→ GUOQ wins' compare.log | awk '{print $1}'
  grep '→ GUOQ &'    compare.log | awk '{print $1}'
} | awk -F'_' '{print $1}' | sort | uniq -c | sort -nr
