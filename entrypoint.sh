#!/bin/bash

# Run terraform fmt check and capture the output
fmt_output=$(terraform fmt -check -recursive -diff)

if [[ -n "$fmt_output" ]]; then
  echo "Some terraform files need to be formatted. Please run 'terraform fmt -recursive' to fix them."
  echo "Details of the formatting issues:"
  echo "$fmt_output"
  exit 1
else
  echo "All terraform files are properly formatted."
  exit 0
fi