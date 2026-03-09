#!/bin/bash

# Top 5 IP addresses
echo "=== Top 5 IP Addresses ==="
awk '{print $1}' $1 | sort | uniq -c | sort -rn | head -5

# Top 5 requested paths
echo ""
echo "=== Top 5 Requested Paths ==="
awk '{print $6}' $1 | sort | uniq -c | sort -rn | head -5

# Top 5 response status codes
echo ""
echo "=== Top 5 Response Status Codes ==="
awk '{print $8}' $1 | sort | uniq -c | sort -rn | head -5

# Top 5 user agents
echo ""
echo "=== Top 5 User Agents ==="
awk -F'"' '{print $6}' $1 | sort | uniq -c | sort -rn | head -5