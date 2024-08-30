# Helpful guide here:
# https://wiki.blender.org/wiki/Building_Blender/Linux/Ubuntu

# Install some common tools
sudo apt update -Y
sudo apt install -Y build-essentials
sudo apt install -Y cmake
sudo apt install -Y vim
sudo apt install -Y tmux
sudo apt install -Y git
sudo apt install -Y tree
sudo apt install -Y gdb
sudo apt install -Y make
sudo apt install -Y valgrind
sudo apt install -Y cppcheck
sudo apt install -Y perf

# Install graphics libraries
sudo apt install -Y libsdl2-dev

# Install D Compiler
wget https://downloads.dlang.org/releases/2.x/2.109.1/dmd_2.109.1-0_amd64.deb
sudo dpkg -i dmd_2.109.1-0_amd64.deb

# Install blender
mkdir ~/blender-git
cd ~/blender-git
git clone https://git.blender.org/blender.git
cd blender
git submodule update --init --recursive
git submodule foreach git checkout master
git submodule foreach git pull --rebase origin master

# Get blender dependencies
cd ~/blender-git
./blender/build_files/build_environment/install_deps.sh

# Do a periodic update
make update
