#!/bin/bash

# Start the SSH agent
eval "$(ssh-agent -s)"

# Add your SSH key to the agent
SSH_KEY_PATH="c:/Users/Hammoud/.ssh/id_haselmut"

if [ -f "$SSH_KEY_PATH" ]; then
    ssh-add "$SSH_KEY_PATH"
    echo "SSH key added successfully."
else
    echo "SSH key not found at $SSH_KEY_PATH."
    exit 1
fi

# Verify the key was added
ssh-add -l

# Test SSH connection to GitHub
echo "Testing connection to GitHub..."
ssh -T git@github.com
