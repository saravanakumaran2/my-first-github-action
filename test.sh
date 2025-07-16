#!/bin/bash
echo "Running ..."
echo "WORKING ON IT ..."
curl -Ls http://localhost:8000 > test_output.html  # -L follows redirects
cat test_output.html

if grep -qi "WordPress" test_output.html; then
  echo "Test Passed"
else
  echo "Test Failed"
  exit 1
fi
