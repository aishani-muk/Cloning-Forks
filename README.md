
# Cloning Forks Script Guide (mainly for grading purposes)

The only edits that needs to be made to make it easier depending on the git assignment:
- In the clone_forks.sh file, change the GITHUB_USER and REPO_NAME based on the repo where all the forks need to be cloned from.
- There can be edits within the loop as well, such as line 32 (which only saves the git log of a cloned repo).
- The task completion message can also be modified.

## Prerequisites
Before running any of the commands to get the repos, make sure you have jq on your system.

The bash scripts used for this uses the jq module to run.

For macOS: 
   ```bash
      brew install jq
   ```

For Windows:
- If you have Chocolatey installed (a package manager for Windows), you can install jq with the following command:
   ```bash
      choco install jq
   ```
- If you don't have Chocolatey, you can install it from https://chocolatey.org/install

**NEXT: MAKE SURE YOU ARE INSIDE OF THIS FOLDER AFTER YOU CLONED THIS REPOSITORY**

## Actual Instructions
1. Open a new default terminal (if you have macOS) or Git Bash terminal on your device. For windows, MAKE SURE you have Git Bash.
2. cd into this folder that has the two bash scripts

3. Run the following command in terminal **ONLY ONCE** if the directory you're working on only has the two bash scripts (clone_forks.sh and search_logs.sh) and this README and nothing else:

This command will fill this directory with directories of all the clones from the forks (LOTS OF FOLDERS)
*Copy Paste for macOS zsh terminal:*
   ```bash
      chmod +x clone_forks.sh
      ./clone_forks.sh
   ```

*Copy Paste for Git Bash terminal:*
   ```bash
      ./clone_forks.sh
   ```

## For Grading Git Logs based on Username
THE search_logs.sh IS TAILORED FOR THE GIT SECTION OF University of Maryland's HOMEWORK 1 FOR CMSC320 OF FALL 2024 (CMSC320-Assignment-1-Dr.Alam).

Run the following command to search the git logs and open answers.txt if it exists based on the git username of the student submission:
**REPLACE <username> WITH THE git USERNAME OF THE STUDENT**

*Copy Paste for macOS zsh terminal but REPLACE THE USERNAME:*
   ```bash
      chmod +x search_logs.sh
      ./search_logs.sh <username>
   ```

*Copy Paste for Git Bash terminal but REPLACE THE USERNAME:*
   ```bash
      ./search_logs.sh <username>
   ```
