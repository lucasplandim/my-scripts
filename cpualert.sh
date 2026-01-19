#!/bin/bash

# Set the maximum CPU usage threshold (in percent)
MAX_CPU_USAGE=90

# Set email to send alert
EMAIL=teste@teste.com.br

# Get the current CPU usage
CPU_USAGE=$(top -bn2 | grep '%Cpu' | tail -1 | grep -P '(....|...) id,'|awk '{print int(100-$8)}')

# Check if the CPU usage is above the threshold
if [ "$CPU_USAGE" -ge "$MAX_CPU_USAGE" ] ; then

# Send e-mail with the alert
echo "A CPU da máquina 10.XXX.XXX.XXX atingiu $CPU_USAGE%. Favor verificar!" | mail -s "CPU WARNING" $EMAIL
fi
