!/bin/bash

# Get CPU model
cpu_model=$(cat /proc/cpuinfo | grep "model name" | uniq | awk -F ":" '{print $2}' | xargs)

# Get number of CPU cores
cpu_cores=$(cat /proc/cpuinfo | grep "cpu cores" | uniq | awk -F ":" '{print $2}' | xargs)

# Get  CPU Architecture
cpu_arch=$(lscpu |grep "Architecture" |awk -F  ":" '{print $2}' | xargs)
# Get CPU Frequency 
cpu_frequency=$(lscpu |grep "Frequency" |awk -F ":" '{print $2}'| xargs)

# Get CPU cache size
cpu_cache=$(lscpu | grep "L3 cache" | awk -F ":" '{print $2}' | xargs)

# Output CPU details
echo "CPU Model: $cpu_model"
echo "Number of CPU Cores: $cpu_cores"
echo "CPU Architecture: $cpu_arch"
echo "CPU Frequency: $cpu_frequency MHz"
echo "CPU Cache Size: $cpu_cache"
