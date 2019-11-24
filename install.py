import os

# Globals in case I need them
PREFIX="sudo"
INSTALLER="yum install"
SUFFIX=""

'''
PREFIX Anything before the command
INSTALLER Install command
PROGRAM which program to install
SUFFIX Any additional arguments (pipping, or perhaps using 'yes' to easily install)
WHAT Any information as to what is being installed
'''
def yum_install(PREFIX,INSTALLER,PROGRAM,SUFFIX,WHAT):
        print("=======v Installing: "+PROGRAM+" v=============")
        print(WHAT)
        os.system(PREFIX+" "+INSTALLER+" "+PROGRAM+" "+SUFFIX)
        print("=======^ Installed: "+PROGRAM+" ^=============")

yum_install("sudo","yum install","vim","","Data Display Debugger is a GUI based debugger")
yum_install("sudo","yum install","tmux","","Data Display Debugger is a GUI based debugger")
yum_install("sudo","yum install","gdb","","A debugger for GCC compiled programs")
yum_install("sudo","yum install","ddd","","Data Display Debugger is a GUI based debugger")


'''
        This function merely installs programs that I use on windows
'''
def Windows_Install():
        print('Chrome')
        print('Dreamweaver')
        print('Acrobat Pro')
        print('Notepad++')
        print('Ubuntu Bash Shell')
        print('Dropbox')
        print('7zip')
