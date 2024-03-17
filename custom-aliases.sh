#!/bin/zsh

# Create .zshrc if it doesn't exist
touch ~/.zshrc

# Add the previous to ~/.zshrc
if ! grep -q "alias previous=" ~/.zshrc; then
    echo "alias previous='history'" >> ~/.zshrc
    echo "Alias 'previous' created for 'history'."
else
    echo "Alias 'previous' already exists in ~/.zshrc."
fi

# Add the status to ~/.zshrc
if ! grep -q "alias status=" ~/.zshrc; then
    echo "alias status='git status'" >> ~/.zshrc
    echo "Alias 'status' created for 'git status'."
else
    echo "Alias 'status' already exists in ~/.zshrc."
fi

# Add the remove to ~/.zshrc
if ! grep -q "alias remove=" ~/.zshrc; then
    echo "alias remove='sudo rm'" >> ~/.zshrc
    echo "Alias 'remove' created for 'sudo rm'."
else
    echo "Alias 'remove' already exists in ~/.zshrc."
fi

# Add the remove to ~/.zshrc
if ! grep -q "alias permission=" ~/.zshrc; then
    echo "alias permission='chmod +x'" >> ~/.zshrc
    echo "Alias 'permission' created for 'sudo rm'."
else
    echo "Alias 'permission' already exists in ~/.zshrc."
fi

# Add the remove to ~/.zshrc
if ! grep -q "alias list=" ~/.zshrc; then
    echo "alias list='ls -l'" >> ~/.zshrc
    echo "Alias 'list' created for 'sudo rm'."
else
    echo "Alias 'list' already exists in ~/.zshrc."
fi

# Apply changes immediately
source ~/.zshrc

# Create Shortcut
# sudo ln -s "$(pwd)/open_terminal_at_vortex.sh" /usr/local/bin/vortex