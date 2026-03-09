#!/bin/bash

# Total CPU usage
echo "=== CPU Usage ==="
top -l 1 | grep "CPU usage" | awk '{print "Used: " $3}'

# Total memory usage
echo ""
echo "=== Memory Usage ==="
top -l 1 | grep "PhysMem" | awk '{print "Used: " $2 "  Free: " $6}'

# Total disk usage
echo ""
echo "=== Disk Usage ==="
df -h / | awk 'NR==2 {printf "Total: %s  Used: %s  Free: %s  Usage: %s\n", $2, $3, $4, $5}'

# Top 5 processes by CPU
echo ""
echo "=== Top 5 Processes by CPU ==="
ps aux -r | awk 'NR==1 || NR<=6 {printf "%-10s %-8s %-6s %s\n", $1, $2, $3, $11}'

# Top 5 processes by Memory
echo ""
echo "=== Top 5 Processes by Memory ==="
ps aux -m | awk 'NR==1 || NR<=6 {printf "%-10s %-8s %-6s %s\n", $1, $2, $4, $11}'