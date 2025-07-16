#!/bin/bash
echo "Running ..."
echo "WORKING ON IT ..."
curl -s http://localhost:8000 > test_output.html
if grep -q "WordPress" test_output.html; then
  echo "Test Passed"
else
  echo "Test Failed"
  exit 1
fi
