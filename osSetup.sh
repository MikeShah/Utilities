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
sudo apt install -y entr

# Web browser
sudo apt install -y firefox

# Additional Text Editor
sudo apt install -y kate

# Install nasm assembler
sudo apt install nasm -y

# Install C++ Tools
sudo apt install -y cmake
sudo apt install -y cppcheck
sudo apt install -y cppman
sudo apt install -y doxygen

# Install graphics libraries
sudo apt install -y libsdl3-dev
sudo apt install -y mesa-utils
sudo apt install -y glxinfo

# OpenCL headers
sudo apt install opencl-headers ocl-icd-opencl-dev -y
sudo apt install clinfo -y

# Windowing libraries (X11)
# Install the manual pages
sudo apt install libx11-doc -y

# Install D Compiler
wget https://downloads.dlang.org/pre-releases/2.x/2.113.0/dmd_2.113.0~rc.1-0_amd64.deb
sudo dpkg -i dmd_2.113.0~rc.1-0_amd64.deb

# Install zeal docs
sudo apt install -y zeal

# Note for arm based machines you'll want 'ldc' compiler
curl -fsS https://dlang.org/install.sh | bash -s ldc

# Install the D language GDC compiler
sudo apt-get install -y gdc-14

# Useful libraries specifically for DLang
sudo apt-get install -y libgtk-3-dev

# Tool for visualizing .dot files and graphing them
sudo apt-get install -y xdot

# Helpful tool for recording .gif animations
sudo apt-get install -y peek

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


# Silly tool to get matrix background
sudo apt install -y cmatrix
# Useful tool for seeing visualization of hardware
sudo apt install -y lstopo

# Do a periodic update
# make update
