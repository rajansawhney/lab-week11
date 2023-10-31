echo "Running tests..."
echo

echo "*****"
echo
echo "Difference between two-time periods..."
output_time_diff=$(./time_diff <test/input_time_diff.txt)
echo $output_time_diff
expected_output_time_diff="4:37:20"

if [ $? -eq 0 ] ; then
  echo "Pass: Program exited zero"
else
  echo "Fail: Program did not exit zero"
  exit 1
fi

if [[ $output_time_diff == *$expected_output_time_diff* ]] ; then
  echo "Pass: Output is correct"
else
  echo "Expected '$expected_output_time_diff' but got: $output_time_diff"
  exit 1
fi

echo
echo "*****"
echo
echo "All tests passed."

exit 0