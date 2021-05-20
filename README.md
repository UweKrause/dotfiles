# $HOME

Adjusting a new machine (or full system container) to my needs.
Dotfiles under version control, without the need of symlinking, is based on https://www.reddit.com/r/vim/comments/3cohmv/manage_dotfiles_with_vimplug_and_github/

Intended to work under GNU/Linux
Intended for my personal use, but feel free to copy, if you like something.

[as root on new machine]
0. (interactive -> password for new user)
```bash
useradd -m -G wheel -s /bin/bash uwe
passwd uwe
pacman -Syu sudo git zsh vim openssh nodejs 
```

-> set up as required:  
* sudoers
* sshd


In $HOME of desired user
1.
```bash
git init -b main .
git remote add -t \* -f origin https://github.com/UweKrause/dotfiles.git
git checkout main
```

In $HOME of desired user
2. 
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

todo: autoinstall vim Plug-plugins

3. 
```
?
```

