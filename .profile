# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.

# (mac bash changeup)
# eval "$(/opt/homebrew/bin/brew shellenv)" 

if [ -n "$BASH_VERSION" ]; then 
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then 
        . "$HOME/.bashrc"
    fi
fi

# pulled from default ubuntu server .profile
if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
