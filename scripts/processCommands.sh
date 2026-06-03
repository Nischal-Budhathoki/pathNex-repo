#!/bin/bash

echo "========================================="
echo " DevOps Process Management Script"
echo "========================================="

# -----------------------------

# 1. LIST ALL PROCESSES

# -----------------------------

echo
echo "-----------------------------------------"
echo "1. ps - list running processes"
echo "-----------------------------------------"

ps aux | head -n 10

echo
echo "-----------------------------------------"
echo "2. Filtering processes using grep"
echo "Example: searching for 'bash'"
echo "-----------------------------------------"

ps aux | grep bash | grep -v grep

# -----------------------------

# 2. TOP COMMAND (snapshot mode)

# -----------------------------

echo
echo "-----------------------------------------"
echo "3. top (batch mode - 1 iteration)"
echo "-----------------------------------------"

top -b -n 1 | head -n 10

# -----------------------------

# 3. FIND PROCESS BY NAME

# -----------------------------

echo
echo "-----------------------------------------"
echo "4. pgrep example"
echo "-----------------------------------------"

pgrep bash

echo "Process IDs of bash shown above"

# -----------------------------

# 4. CREATE A TEST PROCESS (background job)

# -----------------------------

echo
echo "-----------------------------------------"
echo "5. Creating background test process"
echo "-----------------------------------------"

sleep 300 &
TEST_PID=$!

echo "Started test process (sleep 300) with PID: $TEST_PID"

# -----------------------------

# 5. VERIFY PROCESS USING ps

# -----------------------------

echo
echo "-----------------------------------------"
echo "6. Verifying process using ps"
echo "-----------------------------------------"

ps -p $TEST_PID

# -----------------------------

# 6. KILL PROCESS USING kill

# -----------------------------

echo
echo "-----------------------------------------"
echo "7. Killing process using kill"
echo "-----------------------------------------"

kill $TEST_PID

echo "Process $TEST_PID terminated"

# -----------------------------

# 7. VERIFY TERMINATION

# -----------------------------

echo
echo "-----------------------------------------"
echo "8. Verify process is gone"
echo "-----------------------------------------"

ps -p $TEST_PID || echo "Process no longer exists"

# -----------------------------

# 8. PKILL EXAMPLE (name-based kill)

# -----------------------------

echo
echo "-----------------------------------------"
echo "9. pkill example (demo safe process)"
echo "-----------------------------------------"

sleep 200 &
ANOTHER_PID=$!

echo "Started another sleep process: $ANOTHER_PID"

pgrep sleep

pkill sleep

echo "All sleep processes killed using pkill"

# -----------------------------

# FINAL SECTION

# -----------------------------

echo
echo "========================================="
echo " Process Management Completed"
echo "========================================="

echo "Key Commands Summary:"
echo "ps     -> list processes"
echo "top    -> live system monitoring"
echo "pgrep  -> find PID by name"
echo "pkill  -> kill by name"
echo "kill   -> kill by PID"
echo "grep   -> filter output"
