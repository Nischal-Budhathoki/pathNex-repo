#!/bin/bash

echo "system-health-check"

echo
echo "Date:"
date

echo
echo "Current User:"
whoami

echo
echo "Disk Usage:"
df -h

echo
echo "Memory:"
free -h 2>/dev/null || vm_stat

echo
echo "Top Processes:"
ps aux | head

echo
echo "Health Check Completed"