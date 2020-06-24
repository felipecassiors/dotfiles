#!/bin/sh

# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if not coming from .bashrc and running in bash and .bashrc exists
if [ -z "$COMING_FROM_BASHRC" ] && [ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ]; then
  export COMING_FROM_PROFILE="true"
  . "$HOME/.bashrc"
  unset COMING_FROM_PROFILE
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ]; then
  PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

if [ -z "$WSL_DISTRO_NAME" ] || [ -z "$IS_WSL" ]; then
  export BROWSER="wslview"
fi
