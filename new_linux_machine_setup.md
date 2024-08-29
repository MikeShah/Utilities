```
# Helpful guide here:
# https://wiki.blender.org/wiki/Building_Blender/Linux/Ubuntu

# Install some common tools
sudo apt install -Y build-essential
sudo apt install -Y tree
sudo apt install -Y cmake
sudo apt install -Y vim
sudo apt install -Y tmux
sudo apt install -Y git
sudo apt install -Y make

# G++ Install

# Install blender
mkdir ~/blender-git
cd ~/blender-git
git clone https://git.blender.org/blender.git
cd blender
git submodule update --init --recursive
git submodule foreach git checkout master
git submodule foreach git pull --rebase origin master
cd ~

# Get blender dependencies
cd ~/blender-git
./blender/build_files/build_environment/install_deps.sh

# Do a periodic update
make update



```
