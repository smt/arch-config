#!/bin/sh

yaourt -S xorg xorg-xinit haskell-xmonad haskell-xmonad-contrib \
    rxvt-unicode urxvt-perls-git dmenu numlockx xxkb slock openssh \
    chromium rsync unzip unrar tree subversion alsa-utils flashplugin \
    ntp ranger glances aspell aspell-en ispell bc colordiff colorsvn fasd \
    dmidecode elinks htop iftop lesspipe highlight ncdu feh hwinfo pydf\
    atool libcaca dzen2 mplayer tcl tk lnav cloc zathura \
    zathura-pdf-poppler dtrx ctags gvim fzf-git cabal-install \
    the_silver_searcher wmctrl haskell-hlint fish emacs

mkdir -p ~/.config/ranger
ranger --copy-config=scope

cabal update
cabal install cabal-install
cabal install happy haskell-awk fast-tags ghc-mod stylish-haskell
