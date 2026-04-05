#!/bin/bash
# health-check.sh — prints CPU, memory, and disk usage

echo "====== System Health Report ======"
echo "Date: $(date)"
echo ""
echo "-- CPU Usage --"
top -bn1 | grep "Cpu(s)" | awk '{print "Used: " $2 "%"}'

echo ""
echo "-- Memory Usage --"
free -h | awk '/Mem:/ {print "Total: "$2 "  Used: "$3 "  Free: "$4}'

echo ""
echo "-- Disk Usage --"
df -h | grep -v tmpfs
echo "=================================="
