#!/bin/bash

# === Function to check disk space ===
check_disk_space() {
    echo "=== Disk Space Usage ==="
    df -h
    echo ""
}

# === Function to check memory usage ===
check_memory() {
    echo "=== Memory Usage ==="
    free -h
    echo ""
}

# === Function to check CPU load ===
check_cpu_load() {
    echo "=== CPU Load ==="
    uptime
    echo ""
}

# === Function to check top memory-consuming processes ===
check_processes() {
    echo "=== Top 5 Processes by Memory Usage ==="
    ps aux --sort=-%mem | head -n 6
    echo ""
}

# === Function to check for system updates ===
check_updates() {
    echo "=== Checking for System Updates ==="
    sudo apt update && sudo apt list --upgradable
    echo ""
}

# === Call the functions ===
check_disk_space
check_memory
check_cpu_load
check_processes
check_updates
