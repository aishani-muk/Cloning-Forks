#!/bin/bash

LOG_FOLDER="git_logs"
USERNAME=$1
REPO_NAME="CMSC320-Assignment-1-Dr.Alam"
FILE_TO_OPEN="answers.txt"

# Check if the username was provided or if it exists
if [ -z "$USERNAME" ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

# Path for git log file of specified username
LOG_FILE="${LOG_FOLDER}/${USERNAME}_log.txt"
if [ -f "$LOG_FILE" ]; then
    echo "Found log file: $LOG_FILE"
    cat "$LOG_FILE"
else
    echo "No log file found for username: $USERNAME"
fi

# CAN BE MODIFIED FOR FUTURE ASSIGNMENTS
# Open the answer.txt file if it exists
REPO_DIR="${USERNAME}_$REPO_NAME"
ANSWER_FILE="${REPO_DIR}/$FILE_TO_OPEN"

if [ -f "$ANSWER_FILE" ]; then
    echo "Opening $FILE_TO_OPEN for user: $USERNAME"

     # xdg-open (Linux) or open (macOS) or start (Windows)
    xdg-open "$ANSWER_FILE" || open "$ANSWER_FILE" || start "" "$ANSWER_FILE"
else
    echo "No $FILE_TO_OPEN file found for user: $USERNAME"
fi