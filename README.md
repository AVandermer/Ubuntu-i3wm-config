#  Dotfiles                                                                          
This repository contains my personal configuration files for a Linux tiling window manager setup based on **i3wm**. The aesthetic and color palette of the entire system are fully dynamic and generated on the fly using **pywal**.                                  

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/e5185edc-bd50-4840-9a5b-df001570704b" />



 ##  Features & Setup   
 
* **Window Manager:** [i3wm](https://i3wm.org/)                                     
* **Bar:** [Polybar](https://polybar.github.io/)    
* **App Launcher:** [Rofi](https://github.com/davatorium/rofi) 
* **Terminal:** [Kitty](https://sw.kovidgoyal.net/kitty/)  
* **Compositor:** [Picom](https://github.com/yshui/picom)                                        
* **Notifications:** [Dunst](https://dunst-project.org/) 
* **Screenshots:** [Flameshot](https://flameshot.org/)  
* **Audio Visualizer:** [Cava](https://github.com/karlstav/cava)
* **Shell:** Bash / Zsh

## Pywal Integration (Dynamic Colors)                                               

The core feature of this rice is the **[pywal](https://github.com/dylanaraps/pywal)** integration. 
Whenever the wallpaper changes, `pywal` automatically extracts the dominant colors and applies them system-wide.

Currently, `pywal` dynamically themes:
- i3 window borders
- Polybar
- Rofi menus
- Kitty terminal
- Dunst notifications

###  Planned Features (TODO)                                                         
- [ ] **Firefox Theme:** Integrate `pywal` to dynamically generate userChrome.css / Firefox colors based on the current wallpaper (e.g., using Pywalfox).
- [ ] **Spotify Theme:** Add dynamic color support for Spotify using [Spicetify](https://spicetify.app/) and `pywal`.

## Installation                                                                     

To use these dotfiles, clone the repository and copy/symlink the configurations to your`~/.config` directory.
 ```bash
 # Clone the repository
 git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles

 # Copy the configs
 cp -r ~/dotfiles/.config/* ~/.config/
 cp ~/dotfiles/.bashrc ~/
 cp ~/dotfiles/.zshrc ~/
```
│ Warning: Make sure to backup your existing configurations before replacing them!
