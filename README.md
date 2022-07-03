# dotfiles
My configuration

## Requirements

- Git

## Install
This requires the public key of the machine where the setup is being installed
to be registered as authorized on Github.

Clone config as bare repo
    git clone --bare git@github.com:coryebner/dotfiles.git ./dotfiles

Create an alias `config` which we will use instead of the regular `git` when we want to interact with our configuration repository.
    alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

Hide files that are not explicitly being tracked yet. When you type `config status` and other commands later, files that we are not interested in tracking will not show up as untracked
    config config status.showUntrackedFiles no
