#!/bin/bash

# Read JSON input from stdin
input=$(cat)

# Extract values from JSON
cwd=$(echo "$input" | jq -r '.workspace.current_dir')
model_name=$(echo "$input" | jq -r '.model.display_name')

# Get just the directory name
dir_name=$(basename "$cwd")

# Get git branch if in a git repo
git_branch=""
if git -C "$cwd" rev-parse --git-dir > /dev/null 2>&1; then
  git_branch=$(git -C "$cwd" --no-optional-locks branch --show-current 2>/dev/null)
fi

# Get remaining context percentage
remaining_pct=$(echo "$input" | jq -r '.context_window.remaining_percentage // empty')

# Dracula color scheme (RGB values)
# Cyan: 139,233,253 | Purple: 189,147,249 | Green: 80,250,123 | Orange: 255,184,108
CYAN="\033[38;2;139;233;253m"
PURPLE="\033[38;2;189;147;249m"
GREEN="\033[38;2;80;250;123m"
ORANGE="\033[38;2;255;184;108m"
RESET="\033[0m"

# Build status line with colors
output="${CYAN}${dir_name}${RESET}"

if [ -n "$git_branch" ]; then
  output="${output} at ${PURPLE}${git_branch}${RESET}"
fi

output="${output} using ${GREEN}${model_name}${RESET}"

if [ -n "$remaining_pct" ]; then
  output="${output} with ${ORANGE}${remaining_pct}%${RESET} remaining"
fi

# Output the status line
printf "%b" "$output"
