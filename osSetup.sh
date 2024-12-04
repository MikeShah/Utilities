# Consider somethings such as changing:
# 'resolution' of the Virtual Machine display

# Install some common tools
sudo apt update -y
sudo apt install -y build-essential
sudo apt install -y vim
# Optionally create a ~/.vimrc
# set number
# set tabstop=4
# set shiftwidth=4
# set expandtab
# set autoindent
sudo apt install -y tmux
sudo apt install -y git
sudo apt install -y tree
sudo apt install -y gdb
sudo apt install -y valgrind
sudo apt install -y pkg-config
sudo apt install -y curl

# Web browser
sudo apt install -y firefox

# Additional Text Editor
sudo apt install -y kate

# Install C++ Tools
sudo apt install -y cmake
sudo apt install -y cppcheck
sudo apt install -y cppman

# Install graphics libraries
sudo apt install -y libsdl2-dev
sudo apt install -y mesa-utils

# Windowing libraries (X11)
# Install the manual pages
sudo apt install libx11-doc

# Install D Compiler
wget https://downloads.dlang.org/releases/2.x/2.109.1/dmd_2.109.1-0_amd64.deb
sudo dpkg -i dmd_2.109.1-0_amd64.deb

# Note for arm based machines you'll want 'ldc' compiler
# curl -fsS https://dlang.org/install.sh | bash -s ldc

# Install the D language GDC compiler
sudo apt-get install -y gdc-12

# Useful libraries specifically for DLang
sudo apt-get install -y libgtk-3-dev

# Tool for visualizing .dot files and graphing them
sudo apt-get install -y xdot

# Helpful guide here:
# https://wiki.blender.org/wiki/Building_Blender/Linux/Ubuntu

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
