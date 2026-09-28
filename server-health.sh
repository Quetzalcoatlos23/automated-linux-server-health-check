#!/bin/bash

echo "Checking Server Health..."

# Check Date
echo "DATE:"
date

# Check CPU Usage
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "Used: " $2 "%, Idle: " $8 "%"}'

# Check Memory Usage
echo "Memory Usage:"
free -h | awk 'NR==2{print "Total: " $2 ", Used: " $3 ", Free: " $4}'

# Check Disk Usage
echo "Disk Usage:"
df -h --output=source,pcent | grep '^/dev/'

echo "✅ Health Check Completed!"