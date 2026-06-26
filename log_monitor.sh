#!/bin/bash

echo "=== Automated Log Monitor Report ===" > summary.txt

echo "" >> summary.txt
echo "Date:" >> summary.txt
date >> summary.txt

echo "" >> summary.txt
echo "Log File Analyzed:" >> summary.txt
echo "sample.log" >> summary.txt

echo "" >> summary.txt
echo "Info Messages:" >> summary.txt
grep -c "INFO" sample.log >> summary.txt

echo "" >> summary.txt 
echo "Errors:" >> summary.txt
grep -c "ERROR" sample.log >> summary.txt

echo "" >> summary.txt
echo "Warnings:" >> summary.txt
grep -c "WARNING" sample.log >> summary.txt

echo "" >> summary.txt
echo "Failed Events:" >> summary.txt
grep -c "FAILED" sample.log >> summary.txt

echo "" >> summary.txt
echo "Report saved to summary.txt"
