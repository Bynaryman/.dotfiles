Dotfiles layout note
--------------------
This repo keeps dotfiles in a nested folder so the symlinked targets stay clean and the .git directory does not appear in $HOME.

Layout:
``` bash
    ~/.dotfiles/actual_dots/   <-- stow package (files live here)
    ~/.dotfiles/.git           <-- repo metadata stays here
```
``` bash
Usage:
    cd ~/.dotfiles
    stow -t ~ actual_dots
```

