#!/bin/bash

# This script monitors CPU and memory usage on a Linux system.

# Record CPU usage percentage
cpu_usage=$(top -b -n 1 | grep '%Cpu' | awk '{print $2}')

# Monitor memory usage
memory_info=$(free -m | grep Mem)
total_memory=$(echo "$memory_info" | awk '{print $2}')
used_memory=$(echo "$memory_info" | awk '{print $3}')

# Display CPU and memory usage information
echo "CPU Usage: $cpu_usage%"
echo "Total Memory: ${total_memory}MB"
echo "Used Memory: ${used_memory}MB"
