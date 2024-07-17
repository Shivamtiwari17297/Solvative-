#!/bin/bash

check_system_usage() {
  echo "CPU and Memory Usage:"
  echo "---------------------"
  
  echo "CPU Usage:"
  mpstat
  
  echo -e "\nMemory Usage:"
  free -h
  
  echo -e "\nTop 10 CPU-consuming processes:"
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -11
  
  echo -e "\nTop 10 Memory-consuming processes:"
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -11
}

check_system_usage
