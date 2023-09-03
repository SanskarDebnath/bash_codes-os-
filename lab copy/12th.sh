#!/bin/bash

# Function to simulate process execution
simulate_process() {
  process_id=$1
  total_time=$2

  io_time=$((total_time * 20 / 100))
  computation_time=$((total_time * 70 / 100))
  remaining_time=$total_time

  echo "Process $process_id:"

  while [ $remaining_time -gt 0 ]; do
    if [ $remaining_time -le $io_time ]; then
      echo "  Running I/O for $remaining_time units"
      sleep $remaining_time
    else
      echo "  Running I/O for $io_time units"
      sleep $io_time
    fi

    remaining_time=$((remaining_time - io_time))

    if [ $remaining_time -le $computation_time ]; then
      echo "  Running Computation for $remaining_time units"
      sleep $remaining_time
    else
      echo "  Running Computation for $computation_time units"
      sleep $computation_time
    fi

    remaining_time=$((remaining_time - computation_time))
  done

  echo "Process $process_id completed."
}

# Main script

# Simulate execution for Process 1 with total time of 10 units
simulate_process 1 10 &

# Simulate execution for Process 2 with total time of 20 units
simulate_process 2 20 &

# Simulate execution for Process 3 with total time of 30 units
simulate_process 3 30 &

# Wait for all processes to complete
wait

echo "All processes have completed."

# Calculate the CPU idle time
cpu_idle_time=$(($(ps -e -o etimes= | awk '{sum+=$1} END {print sum}') / 100))

# Calculate the total CPU execution time
cpu_execution_time=$(($(ps -e -o etimes= | awk '{sum+=$1} END {print sum + 1}') / 100))

# Calculate the percentage of CPU idle time
cpu_idle_percentage=$(awk "BEGIN { printf \"%.1f\", ($cpu_idle_time / $cpu_execution_time) * 100 }")

echo "CPU idle time: ${cpu_idle_time}s"
echo "CPU execution time: ${cpu_execution_time}s"
echo "Percentage of CPU idle time: ${cpu_idle_percentage}%"
