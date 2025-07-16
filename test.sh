#!/bin/bash

# Simple test logic (replace with your own tests)
echo "Running dummy test..."
echo "<html><body><h1>Test Report</h1><p>Test Passed!</p></body></html>" > result.html

# Detect OS and rename file accordingly
OS_NAME="$(uname -s)"

if [[ "$OS_NAME" == "Linux" ]]; then
  mv result.html test_output_linux.html
  echo "Saved test results to test_output_linux.html"
elif [[ "$OS_NAME" == "MINGW64_NT"* || "$OS_NAME" == "CYGWIN_NT"* || "$OS_NAME" == "MSYS_NT"* ]]; then
  mv result.html test_output_windows.html
  echo "Saved test results to test_output_windows.html"
else
  echo "Unknown OS: $OS_NAME"
  mv result.html test_output_unknown.html
fi
