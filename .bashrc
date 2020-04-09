# Handy script for learning new commands on Linux
echo "======v Tip of the day v======="
echo "Did you know that:"; whatis $(ls /bin | shuf -n 1)
echo "======^ Tip of the day ^======="

#### Git setup #####
# Setup git config editor to be VIM
git config --global core.editor vim
