# Helpful guide here:
# https://wiki.blender.org/wiki/Building_Blender/Linux/Ubuntu

# Install some common tools
sudo apt update -y
sudo apt install -y build-essentials
sudo apt install -y cmake
sudo apt install -y vim
sudo apt install -y tmux
sudo apt install -y git
sudo apt install -y tree
sudo apt install -y gdb
sudo apt install -y make
sudo apt install -y valgrind
sudo apt install -y cppcheck
sudo apt install -y perf
sudo apt install -y pkg-config
sudo apt install -y curl

# Install graphics libraries
sudo apt install -y libsdl2-dev

# Install D Compiler
wget https://downloads.dlang.org/releases/2.x/2.109.1/dmd_2.109.1-0_amd64.deb
sudo dpkg -i dmd_2.109.1-0_amd64.deb

# Useful libraries specifically for DLang
sudo apt install -Y libgtk-3-dev

# Install blender
#mkdir ~/blender-git
#cd ~/blender-git
#git clone https://git.blender.org/blender.git
#cd blender
#git submodule update --init --recursive
#git submodule foreach git checkout master
#git submodule foreach git pull --rebase origin master

# Get blender dependencies
# cd ~/blender-git
#./blender/build_files/build_environment/install_deps.sh

# Do a periodic update
# make update
