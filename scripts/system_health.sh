#!/bin/bash

LOGFILE="../logs/system_health.log"

echo "==================================" > $LOGFILE
echo "System Health Report" >> $LOGFILE
echo "Generated on: $(date)" >> $LOGFILE
echo "==================================" >> $LOGFILE

echo "" >> $LOGFILE
echo "Hostname:" >> $LOGFILE
hostname >> $LOGFILE

echo "" >> $LOGFILE
echo "Uptime:" >> $LOGFILE
uptime >> $LOGFILE

echo "" >> $LOGFILE
echo "CPU Information:" >> $LOGFILE
lscpu | grep "Model name" >> $LOGFILE

echo "" >> $LOGFILE
echo "Memory Usage:" >> $LOGFILE
free -h >> $LOGFILE

echo "" >> $LOGFILE
echo "Disk Usage:" >> $LOGFILE
df -h >> $LOGFILE

echo "" >> $LOGFILE
echo "Top 5 Memory Consuming Processes:" >> $LOGFILE
ps aux --sort=-%mem | head -6 >> $LOGFILE

echo "Report generated successfully"
