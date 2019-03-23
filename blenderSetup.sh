# Helpful guide here:
# https://wiki.blender.org/wiki/Building_Blender/Linux/Ubuntu

# Install some common tools
sudo apt install vim
sudo apt install git
sudo apt install make


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
