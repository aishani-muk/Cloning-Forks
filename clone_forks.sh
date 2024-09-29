#!/bin/bash

# User and Repo name of assignment
GITHUB_USER="ENTER-GIT-USERNAME"
REPO_NAME="ENTER-GIT-REPOSITORY-NAME"

mkdir -p git_logs

# Retrieve list of all forks and users.
# Might need to install jq to get responses
forks=""
pg=1
while true; do
    response=$(curl -s "https://api.github.com/repos/$GITHUB_USER/$REPO_NAME/forks?per_page=100&page=$pg")
    if [[ $(echo "$response" | jq '. | length') -eq 0 ]]; then
        break
    fi
    forks+=$(echo "$response" | jq -r '.[] | "\(.owner.login) \(.clone_url)"')
    ((pg++))
done

while read -r line; do
    user=$(echo "$line" | awk '{print $1}')
    clone_url=$(echo "$line" | awk '{print $2}')

    # Clone fork from the clone URL and save with unique name
    unique_dir="${user}_$REPO_NAME"
    git clone "$clone_url" "$unique_dir"

    # Save git log to txt named after user, then go back to prev directory
    cd "$unique_dir" || continue
    git log --pretty=format:"%h %an %ad %s [%d]" --date=short --all > "../git_logs/${user}_log.txt"
    cd ..
done <<< "$forks"

# Task Completion message
echo "DONE. Forks cloned and git logs saved in git_logs directory."