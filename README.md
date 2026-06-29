# skedster-dotfiles

personal debian i3wm rice, use at your own risk (i mean its not inherently evil its just it will most likely work only on my machine)

# Details
* **Distro**: Debian
* **WM**: i3wm
* **Bar**: Polybar
* **Fetch**: nitch
* **Shell**: zsh 

# Preview
<img width="1920" height="1079" alt="tpVPD1k-" src="https://github.com/user-attachments/assets/de44549b-5526-478f-bcdd-50e43e6dafec" />
<img width="1920" height="1079" alt="Yl0jleH7" src="https://github.com/user-attachments/assets/8d33eae3-cb4e-4fae-98f0-2793c371e605" />



## Installation
> [REMINDER]
> make sure to back up your current config cause im like 50/50 on wether this will work on other machines

Dependencies:
btop, gtk-3.0, mpv, polybar, sesh, copyq, gtk-4.0, nvim, tmux, walker, yazi, dunst, i3, picom, rofi, ulauncher, wezterm

```bash
cd ~
git clone [https://github.com/skedster/skedster-dotfiles.git](https://github.com/skedster/skedster-dotfiles.git) ~/dotfiles
cd ~/dotfiles

# script execution
chmod +x link.sh

# run stow script
./link.sh
