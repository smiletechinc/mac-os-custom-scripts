#!/bin/zsh

# Define the extra commands to append
extra_commands=(
  "My custom command in history 1.0'"
  "My custom command in history 2.0"
  "My custom command in history 3.0"
)

# Append each command to .zsh_history
for command in "${extra_commands[@]}"; do
  echo "$command" >> ~/.zsh_history
done

echo "Refreshed history (.zsh_history) with custom commands"
