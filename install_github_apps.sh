##==================================
## ############################################
## ##   cool git repos
## ############################################
##==================================
##==================================
## Install CUDA
https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=24.04&target_type=deb_local
##
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-ubuntu2404.pin
sudo mv cuda-ubuntu2404.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/13.1.1/local_installers/cuda-repo-ubuntu2404-13-1-local_13.1.1-590.48.01-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2404-13-1-local_13.1.1-590.48.01-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2404-13-1-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda-toolkit-13-1
##

## Hugging Face
https://huggingface.co/docs/huggingface_hub/en/guides/cli
curl -LsSf https://hf.co/cli/install.sh | bash




##==================================
## A Slack client for your terminal.
firefox https://github.com/jpbruinsslot/slack-term

##==================================
## Cool stuff to read and use
firefox https://www.marcobehler.com/guides/ssh-cheat-sheet

##==================================
## WORKS!
## Termshark - A terminal UI for tshark, inspired by Wireshark
firefox https://termshark.io/
wget https://github.com/gcla/termshark/releases/download/v2.4.0/termshark_2.4.0_linux_x64.tar.gz
tar --extract --file="termshark_2.4.0_linux_x64.tar.gz" --gzip --verbose
ls ./termshark_2.4.0_linux_x64
sudo cp ./termshark_2.4.0_linux_x64/termshark /usr/local/bin/
termshark -i=$networkInterface

##==================================
## Nomad Network - Communicate Freely - Off-grid, resilient mesh communication with strong encryption, forward secrecy and extreme privacy.
firefox https://github.com/markqvist/nomadnet

##==================================
## WORKS!
## BTFS (bittorrent filesystem) BTFS, you can mount any .torrent file or magnet link and then use it as any read-only directory in your file tree.
firefox https://github.com/johang/btfs

sudo apt install termshark
mkdir mnt
btfs video.torrent mnt
cd mnt
vlc video.mp4

firefox https://pirate-proxy.thepiratebay.rocks/browse
mkdir mnt
btfs 'magnet:?xt=urn:btih:56EED57AF6688145E4E9EB5BCBFA6C5FA9258030&dn=You+Cant+Teach+Love+2024+1080p+WEB-DL+HEVC+x265+5.1+BONE&tr=firefox http%3A%2F%2Fp4p.arenabg.com%3A1337%2Fannounce&tr=udp%3A%2F%2F47.ip-51-68-199.eu%3A6969%2Fannounce&tr=udp%3A%2F%2F9.rarbg.me%3A2780%2Fannounce&tr=udp%3A%2F%2F9.rarbg.to%3A2710%2Fannounce&tr=udp%3A%2F%2F9.rarbg.to%3A2730%2Fannounce&tr=udp%3A%2F%2F9.rarbg.to%3A2920%2Fannounce&tr=udp%3A%2F%2Fopen.stealth.si%3A80%2Fannounce&tr=udp%3A%2F%2Fopentracker.i2p.rocks%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.coppersurfer.tk%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.cyberia.is%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.dler.org%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.internetwarriors.net%3A1337%2Fannounce&tr=udp%3A%2F%2Ftracker.leechers-paradise.org%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337&tr=udp%3A%2F%2Ftracker.pirateparty.gr%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.tiny-vps.com%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.torrent.eu.org%3A451%2Fannounce' mnt
cd mnt
ls
vlc 'You Cant Teach Love 2024 1080p WEB-DL HEVC x265 5.1 BONE.mkv'
fusermount -u mnt
cd ~
umount /home/erik/mnt


##==================================
## NOPE! Wrapper around Google's Cloud Text-to-Speech API, so need a billing account.
## gosling - Natural sounding text-to-speech in the terminal
firefox https://github.com/Samyak2/gosling/

wget firefox https://github.com/Samyak2/gosling/releases/download/v0.1.1/gosling-v0.1.1-linux-amd64.tar.gz
#tar -xzvf gosling-v0.1.1-linux-amd64.tar.gz -C ./
mkdir -p gosling-v0.1.1-linux-amd64
tar --extract --file="gosling-v0.1.1-linux-amd64.tar.gz" --gzip --verbose -C ./gosling-v0.1.1-linux-amd64
echo 'Uses a better voice and a slightly higher pitch for a nicer sounding default voice' >  input.txt


##==================================
## fzf - general-purpose command-line fuzzy finder.
firefox https://github.com/junegunn/fzf
## Switch to zsh
sudo apt-get install git-core zsh fzf
which zsh
chsh -s $(which zsh)
## Set up fzf key bindings and fuzzy completion
source < (fzf --zsh)

##==================================
## ytfzf - Finds Youtube videos (without API) and opens/downloads them using mpv/youtube-dl
firefox https://github.com/pystardust/ytfzf

##==================================
## Terjira is an interactive and easy to use command line interface for Jira.
firefox https://github.com/keepcosmos/terjira

##==================================
## Terminal UI for Reddit (TUIR)
firefox https://gitlab.com/ajak/tuir

##==================================
## M4TT72 | Terminal - A terminal style website
firefox https://github.com/m4tt72/terminal

##==================================
## Kakikun is a tool to paint, draw and create ASCII art in your terminal.
firefox https://github.com/file-acomplaint/kakikun

##==================================
## packemon - TUI tool for generating packets of arbitrary input and monitoring packets on any network interfaces
firefox https://github.com/ddddddO/packemon

##==================================
## WRKFLW is a powerful command-line tool for validating and executing GitHub Actions workflows locally, without requiring a full GitHub environment.
firefox https://github.com/bahdotsh/wrkflw

##==================================
## lsnotes - lets you attach and display notes for directories. Just drop a .lsnotes file in any folder and voilà—your directory has a description.
firefox https://github.com/aeilot/lsnotes

##==================================
## Scooter - is an interactive find-and-replace terminal UI app. Search with either a fixed string or a regular expression, enter a replacement, and interactively toggle which instances you want to replace.
firefox https://github.com/thomasschafer/scooter
wget firefox https://github.com/thomasschafer/scooter/releases/download/v0.8.4/scooter-v0.8.4-x86_64-unknown-linux-musl.tar.gz
mkdir scooter-v0.8.4-x86_64-unknown-linux-musl
tar --extract --file="scooter-v0.8.4-x86_64-unknown-linux-musl.tar.gz" --gzip --verbose -C ./scooter-v0.8.4-x86_64-unknown-linux-musl/
ls ./scooter-v0.8.4-x86_64-unknown-linux-musl
    scooter
cp ./scooter-v0.8.4-x86_64-unknown-linux-musl/scooter ~/bin/
export PATH="$PATH:~/bin"

## NOPE.
echo '## Add home bin to path.
export PATH="$PATH:~/bin"
' | tee -a .zshrc

## Add to path
echo '
## Add home bin to path.
export PATH="$PATH:/home/erik/bin"

' >> .zshrc

##==================================
## WORKS!!
## TripoSG: High-Fidelity 3D Shape Synthesis using Large-Scale Rectified Flow Models
cd code
git clone https://github.com/VAST-AI-Research/TripoSG.git
cd TripoSG
uv init
uv venv
source .venv/bin/activate
uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
uv pip install --no-build-isolation diso
uv add -r requirements.txt
uv pip install numpy
uv pip install huggingface-hub
## Remove numpy as it is already installed.
sed -i 's/numpy/#numpy/' requirements.txt
uv pip install -r requirements.txt
## Add an image to try.
scp ./fist.jpg ops@192.168.1.43:/home/ops/code/TripoSG/
## Run the generation model.
IMAGE = fist.jpg
uv run python -m scripts.inference_triposg --image-input /home/erik/code/TripoSG/$IMAGE

## Convert to stl
echo 'import trimesh
import sys

if len(sys.argv) > 2:
    glb_file = sys.argv[1]
    stl_file = sys.argv[2]
    mesh = trimesh.load_mesh(glb_file)
    mesh.export(stl_file)
    print(f"Converted {glb_file} to {stl_file}")
else:
    print("Usage: python convert.py <input.glb> <output.stl>")' > convert_gbl-stl.py
## Make stl
uv run python convert_gbl-stl.py output.glb model.stl

## Make a copy to use elsewhere.
cp -r ~/code/TripoSG ~/code/TripoSG.default
## Plugged in 8TB SSD into USB-C port.
## Mount USB with cli.
udisksctl mount -b /dev/sdb1
    ==== AUTHENTICATING FOR org.freedesktop.udisks2.filesystem-mount-other-seat ====
    Authentication is required to mount Micron_5210_MTFDDAK7T6QDE (/dev/sdb1)
    Authenticating as: erik,,, (erik)
    Password: 
    ==== AUTHENTICATION COMPLETE ====
Mounted /dev/sdb1 at /media/erik/9e26fd33-d451-4dc6-b107-150ddfcd76f9
ls -la /media/erik/9e26fd33-d451-4dc6-b107-150ddfcd76f9/
mkdir -p /media/erik/9e26fd33-d451-4dc6-b107-150ddfcd76f9/code
cp -r ~/code/TripoSG /media/erik/9e26fd33-d451-4dc6-b107-150ddfcd76f9/code/
udisksctl unmount -b /dev/sdb1

## Get out of the env.
source .venv/bin/deactivate
## To use again get into virtual python environment.
source .venv/bin/activate

##--------------------------
## WebUI
## Three files to make a webui for TripoSG.
cp app.py








##-------------------
## ## WebUi service
## Copy service file to the service directory.
sudo cp /home/$USER/code/TripoSG/triposg-webui.service  /etc/systemd/system/
## Reload systemd: Notify the service manager of the new file.
sudo systemctl daemon-reload
## Start the service: Manually start the service for the first time.
sudo systemctl start webui.service
## Check the service status: Verify that it is running correctly.
sudo systemctl status webui.service
## Enable the service (optional): Configure the service to start automatically every time your system boots.
sudo systemctl enable webui.service
## ## Troubleshooting
## If the service fails to start, use journalctl to view the logs and identify the error:
sudo journalctl -u webui.service -f



cp TripoSG-WebUI/app.py TripoSG/ TripoSG-WebUI/pyproject.toml TripoSG-WebUI/requirement.txt ~/code/TripoSG/




##==================================
## faster-whisper is a reimplementation of OpenAIs Whisper transcription of audio model using CTranslate2, which is a fast inference engine for Transformer models.
https://github.com/SYSTRAN/faster-whisper


##==================================
## Updo is a command-line tool for monitoring website uptime and performance. It provides real-time metrics on website status, response time, SSL certificate expiry, and more, with alert notifications.
firefox https://github.com/Owloops/updo

##==================================
## Splash - adds beautiful, adaptive colors to make logs easier to read.
firefox https://github.com/joshi4/splash

##==================================
## Creating a self-signed root CA for internal use
firefox https://blog.performantdata.com/2025/08/internal-ca-hierarchy.html


##---------------------------
##==================================
## Convert Images & Videos to Colorful ASCII Art in the Terminal (Python + GPU Support)
firefox https://github.com/Cod-e-Codes/ascii-colorizer

## Clone the repository
git clone firefox https://github.com/Cod-e-Codes/ascii-colorizer.git
cd ascii-colorizer

## Install dependencies
#pip install -r requirements.txt
uv -r requirements.txt
uv init
uv venv
source .venv/bin/activate

uv pip install -r requirements.txt
## Install the package
#pip install -e .
#uv -e .
##
uv add torch torchvision
uv pip install -r requirements.txt
uv pip install torch torchvision torchaudio --index-url firefox https://download.pytorch.org/whl/cu124
uv run python3 -c "import torch; print(torch.__version__); print(torch.cuda.is_available())"
    2.9.1+cu128
    True

## NOPE!
## Install the package
uv -e .

## NOPE. No binary created above.
# Convert an image
ascii-colorizer --file s-l500.jpg
# Convert a video
ascii-colorizer --file video.mp4 --fps 15
# Use GPU acceleration
ascii-colorizer --file video.mp4 --gpu
# High-quality output
ascii-colorizer --file image.png --detailed --width 120





##---------------------------

##==================================
## WORKS!
## Erys: - Terminal Interface for Jupyter Notebooks.
firefox https://github.com/natibek/erys
uv tool install erys
## Opens interface
erys

##==================================
## WORKS!
## Mcat; Parse, Convert and Preview files In your Terminal.
firefox https://github.com/Skardyy/mcat
wget https://github.com/Skardyy/mcat/releases/download/v0.4.6/mcat-x86_64-unknown-linux-gnu.tar.xz
unzip mcat-x86_64-unknown-linux-gnu.tar.xz
sudo cp ./mcat /usr/local/bin/imagecat


##==================================
## Torrra - “Torrr”; A Python tool that lets you find and download torrents without leaving your CLI.
firefox https://github.com/stabldev/torrra

##==================================
## WORKS!
## Basalt; TUI Application to manage Obsidian notes. TUI Application to manage Obsidian vaults and notes directly from the terminal
firefox https://github.com/erikjuhani/basalt
wget https://github.com/erikjuhani/basalt/releases/download/basalt%2Fv0.11.2/basalt-0.11.2-x86_64-unknown-linux-musl.tar.gz
mkdir basalt-0.11.2-x86_64-unknown-linux-musl
tar --extract --file="basalt-0.11.2-x86_64-unknown-linux-musl.tar.gz" --gzip --verbose -C ./basalt-0.11.2-x86_64-unknown-linux-musl/
ls ./basalt-0.11.2-x86_64-unknown-linux-musl/target/x86_64-unknown-linux-musl/release/
cp ./basalt-0.11.2-x86_64-unknown-linux-musl/target/x86_64-unknown-linux-musl/release/basalt ~/bin/
ls ~/bin/
##==================================
## WORKS!
## nvtop
wget https://github.com/Syllo/nvtop/releases/download/3.3.1/nvtop-3.3.1-x86_64.AppImage
chmod +x nvtop-3.3.1-x86_64.AppImage
sudo cp nvtop-3.3.1-x86_64.AppImage /usr/local/bin/nvtop
rm nvtop-3.3.1-x86_64.AppImage

##==================================
## clid - Command line Color Picker
firefox https://github.com/iinsertNameHere/clid

##==================================
## WORKS!
## Cockpit is a web-based graphical interface for servers, intended for everyone,
firefox https://cockpit-project.org/
sudo apt install cockpit
http://localhost:9090

##==================================
## Hellwal - Fast, Extensible Color Palette Generator
firefox https://github.com/danihek/hellwal

##==================================
## Claude Code Container A Docker container for running Claude Code
firefox https://github.com/tintinweb/claude-code-container

##==================================
## ArduinoOS is an operating system for arduino which supports real multithreading,
firefox https://github.com/DrBubble/ArduinoOS

##==================================
## LL3M: Large Language 3D Modelers
firefox https://github.com/threedle/ll3m/

##==================================
## Qwen-Image-Edit
firefox https://www.youtube.com/watch?v=JtbXTL2jSaQ
##
## Qwen-Image-Edit
firefox https://huggingface.co/Qwen/Qwen-Image-Edit
##
## Qwen-Image-Edit_ComfyUI
firefox https://huggingface.co/Comfy-Org/Qwen-Image-Edit_ComfyUI/tree/main/split_files/diffusion_models
##
## Qwen-Image-Edit-GGUF
firefox https://huggingface.co/QuantStack/Qwen-Image-Edit-GGUF/tree/main
##
## Qwen-Image-Lightning
firefox https://huggingface.co/lightx2v/Qwen-Image-Lightning/tree/main
firefox https://www.patreon.com/posts/136874255?utm_source=youtube&utm_medium=video&utm_campaign=20250820

##==================================
## standalone-gemma3 This standalone-gemma3.ipynb Jupyter notebook in this folder contains a from-scratch implementation of Gemma 3
firefox https://github.com/rasbt/LLMs-from-scratch/tree/main/ch05/12_gemma3

##==================================
## Betterfox about:config tweaks to enhance Mozilla Firefox.
firefox https://github.com/yokoffing/Betterfox

##==================================
## ASCIIFlow is a client-side only web based application for drawing ASCII diagrams.
firefox https://github.com/lewish/asciiflow

##==================================
## uv An extremely fast Python package and project manager, written in Rust. A single tool to replace pip, pip-tools, pipx, poetry, pyenv, twine, virtualenv
firefox https://github.com/astral-sh/uv?tab=readme-ov-file#uv

##==================================
## Trilium Notes is a free and open-source, cross-platform hierarchical note taking application with focus on building large personal knowledge bases.
firefox https://github.com/TriliumNext/Trilium

##==================================
## bookmarks.txt is a concept of keeping bookmarks in plain text files.
firefox https://github.com/soulim/bookmarks.txt

##==================================
## Zed is a next-generation code editor designed for high-performance collaboration with humans and AI.
firefox https://zed.dev/download

##==================================
## An illustrated guide to Amazon networking
firefox https://www.ducktyped.org/p/why-is-it-called-a-cloud-if-its-not
firefox https://gist.github.com/egonSchiele

##==================================
## WiFi-based dense human pose estimation system
firefox https://github.com/ruvnet/wifi-densepose

##==================================
## QEMU is a generic and open source machine emulator and virtualizer.
firefox https://wiki.qemu.org/Main_Page

##==================================
## SingleFile helps you to save a complete web page into a single HTML file.
firefox https://github.com/gildas-lormeau/SingleFile

##==================================
## ASCII Converter is a tool that can be used to convert or preview images  in ASCII art mode.
firefox https://github.com/Apollo478/ascii-converter

##==================================
## netbook Jupyter notebook client for your terminal.
firefox https://github.com/lyovushka/netbook

##==================================
## Mastui - A Modern Mastodon TUI Client
firefox https://github.com/kimusan/mastui

##==================================
## LazySSH: A terminal-based SSH manager
firefox https://github.com/adembc/lazyssh

##==================================
## ytsurf – A terminal-based YouTube search + playback tool
firefox https://github.com/Stan-breaks/ytsurf

##==================================
## bitchat-tui - Terminal UI Client for BitChat, secure, anonymous, and peer-to-peer chat protocol that runs over Bluetooth Low Energy (BLE).
firefox https://github.com/vaibhav-mattoo/bitchat-tui

##==================================
## Collection of tools.
firefox https://github.com/ibraheemdev/modern-unix?tab=readme-ov-file

##==================================
## Aria2tui is a TUI download management tool.
firefox https://github.com/grimandgreedy/Aria2TUI

##==================================
## immich High performance self-hosted photo and video management solution
firefox https://github.com/immich-app/immich

##==================================
## 0xtools Dimensional Analysis of System Performance with eBPF & xtop 0xtools X-Ray vision for Linux systems
firefox https://github.com/tanelpoder/0xtools

##==================================
## TunnelChat Ephemeral peer-to-peer tunnel chat from the terminal
firefox https://github.com/razchiriac/tunnel-chat

##==================================
## gospy A minimal packet sniffer
firefox https://github.com/ShadowNetter-Official/gospy

##==================================
## Whisper speech-to-text
firefox https://www.pavlinbg.com/posts/python-speech-to-text-guide

##==================================
## TUI tool for generating packets of arbitrary input and monitoring packets on any network interfaces (default: eth0)
firefox https://github.com/ddddddO/packemon

##==================================
## Lazyssh terminal-based, interactive SSH manager
firefox https://github.com/adembc/lazyssh

##==================================
## Reddix - Reddit, refined for the terminal.
firefox https://github.com/ck-zhang/reddix

##==================================
## ENHANCE - a terminal TUI for GitHub Actions
firefox https://www.gh-dash.dev/enhance

##==================================
## Twake
## Drive - The open-source alternative to Google Drive.
firefox https://github.com/linagora/twake-drive

##==================================
## TUIOS is a terminal-based window manager that provides a modern, efficient interface for managing multiple terminal sessions.
## tuios web and ssh versions.
firefox https://github.com/Gaurav-Gosain/tuios

## Terminal version
wget https://github.com/Gaurav-Gosain/tuios/releases/download/v0.5.1/tuios_0.5.1_Linux_x86_64.tar.gz
mkdir tuios
tar --extract --file tuios_0.5.1_Linux_x86_64.tar.gz --gzip --verbose -C ./tuios/
sudo cp ~/Downloads/tuios/tuios /usr/local/bin/
tuios --dockbar-position top --scrollback-lines 1000000 --window-title-position top

##-----------------------------------
## Web version
wget https://github.com/Gaurav-Gosain/tuios/releases/download/v0.5.1/tuios-web_0.5.1_Linux_x86_64.tar.gz
#tar -xzvf tuios-web_0.5.1_Linux_x86_64.tar.gz -C ./tuios-web_0.5.1_Linux_x86_64/
mkdir tuios-web_0.5.1_Linux_x86_64
tar --extract --file="tuios-web_0.5.1_Linux_x86_64.tar.gz" --gzip --verbose -C ./tuios-web_0.5.1_Linux_x86_64/
cp ./tuios-web_0.5.1_Linux_x86_64/tuios-web ~/.local/bin/

## Increase available memory for web tasks. 7.5mb
sudo sysctl -w net.core.rmem_max=7500000
sudo sysctl -w net.core.wmem_max=7500000

tuios-web --dockbar-position top --scrollback-lines 1000000 --window-title-position top --host 0.0.0.0 --port 9191
tuios-web --dockbar-position top --scrollback-lines 1000000 --host 0.0.0.0 --port 9191


##==================================
## Nerd Fonts
## install Nerd Fonts on Ubuntu, download your chosen font from the Nerd Fonts website
https://www.nerdfonts.com/
cd ~/code
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd ~/code/nerd-fonts/
## Usage:./install.sh <FONTNAME>
## List fonts
./install.sh -L
## Install
./install.sh JetBrainsMonoNLNerdFont



wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/NerdFontsSymbolsOnly.zip


## unzip the file

## copy the .ttf or .otf files
~/.local/share/fonts/
## update the font cache.
fc-cache -fv

## Install Material Design Icons.
wget https://github.com/Templarian/MaterialDesign-Font/raw/refs/heads/master/MaterialDesignIconsDesktop.ttf
sudo mkdir /usr/share/fonts/truetype/nerd-fonts
sudo mv ./MaterialDesignIconsDesktop.ttf /usr/share/fonts/truetype/nerd-fonts/
sudo fc-cache -fv

##==================================
## GitFetch - insanely satisfying terminal stats for GitHub
firefox https://github.com/Matars/gitfetch

##==================================
## Claude Task Monitor - A general-purpose monitoring tool for tracking Claude Code task progress across multiple projects.
firefox https://github.com/nthmost/claude-monitor

##==================================
## Regex TUI - Test and visualize regular expressions in real-time.
firefox https://github.com/vitor-mariano/regex-tui

##==================================
## AndroSH - Multi-Distribution Linux Environments on Android with Elevated Privileges
firefox https://github.com/ahmed-alnassif/AndroSH

##==================================
## Opperator - is a framework for building and running general AI agents locally from your terminal.
firefox https://github.com/opper-ai/opperator?tab=readme-ov-file

##==================================
## bluetui - TUI for managing bluetooth on Linux
firefox https://github.com/pythops/bluetui

##==================================
## ktr - Highly asynchronous traceroute program
firefox https://github.com/hackclub/ktr

##==================================
## pod-buildah - uses buildah to create customized OCI/docker images and podman to deploy rootless containers designed to automate compilation/building of github projects, applications and kernels, including any other conainerized task or service.
firefox https://github.com/tabletseeker/pod-buildah

##==================================
## doxx - .docx files in your terminal — no Microsoft Word required
firefox https://github.com/bgreenwell/doxx

##==================================
## xleak - Expose Excel files in your terminal - no Microsoft Excel required!
firefox https://github.com/bgreenwell/xleak

##==================================
## diskonaut - scans hard-drive and indexes its metadata to memory so that you could explore its contents
firefox https://github.com/imsnif/diskonaut

##==================================
## Google Antigravity - Agents that help you write and execute code.
firefox https://antigravity.google/download/linux

##==================================
## TERM39 - A modern terminal multiplexer
firefox https://github.com/alejandroqh/term39

##==================================
## Learn
firefox https://github.com/iam-veeramalla/Docker-Zero-to-Hero

##==================================
## Ente is a service that provides a fully open source, end-to-end encrypted platform for you to store your data in the cloud without needing to trust the service provider.
firefox https://github.com/ente-io/ente

##==================================
## PhotoPrism® is an AI-Powered Photos App for the Decentralized Web.
firefox https://github.com/photoprism/photoprism

##==================================
## Jellyfin - Free Software Media System
firefox https://github.com/jellyfin/jellyfin

##==================================
## LAZYSQL - A cross-platform TUI database management tool written in Go.
firefox https://github.com/jorgerojas26/lazysql

##==================================
## GoSheet - lightweight spreadsheet application that runs entirely in your terminal.
firefox https://github.com/drclcomputers/GoSheet

##==================================
## TERM39 - modern terminal multiplexer with classic MS-DOS aesthetic, built with Rust. Full-screen interface with window management and complete terminal emulation.  To boot to CLI, use `sudo systemctl set-default multi-user.target` and reboot. To revert, use `sudo systemctl set-default graphical.target`.
firefox https://github.com/alejandroqh/term39

##==================================
## Camera - camera application for the COSMIC desktop environment.
firefox https://github.com/cosmic-utils/camera?tab=readme-ov-file#terminal-mode-for-the-brave

##==================================
## scrcpy - This application mirrors Android devices (video and audio) connected via USB or TCP/IP and allows control using the computer's keyboard and mouse.
firefox https://github.com/Genymobile/scrcpy

##==================================
## jtbl - A simple cli tool to print JSON data as a table in the terminal.
firefox https://github.com/kellyjonbrazil/jtbl

##==================================
## text. ripgrep - line-oriented search tool that recursively searches your current directory for a regex pattern.
firefox https://github.com/BurntSushi/ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
sudo dpkg -i ripgrep_12.1.1_amd64.deb

##==================================
## Works
## Systemd TUI
firefox https://crates.io/crates/systemd-manager-tui
firefox https://github.com/matheus-git/systemd-manager-tui/releases
wget https://github.com/matheus-git/systemd-manager-tui/releases/download/v1.2.0/systemd-manager-tui_1.2.0_amd64.deb
sudo dpkg -i ./systemd-manager-tui_1.2.0_amd64.deb

##==================================
## stable-diffusion
firefox https://github.com/AbdBarho/stable-diffusion-webui-docker

sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl start docker
sudo systemctl status docker

sudo docker compose --profile download up --build





##==================================
## sqlit - The lazygit of SQL databases. Connect to Postgres, MySQL, SQL Server, SQLite, Supabase, Turso, and more from your terminal in seconds.
firefox https://github.com/Maxteabag/sqlit

##==================================
## Spacebar - A free open source selfhostable discord compatible chat, voice and video platform
firefox https://github.com/spacebarchat

##==================================
## Self hosted object storage service that is compatible with the S3 API from Amazon Web Services.
firefox https://garagehq.deuxfleurs.fr/

##==================================
## Share files without the cloud. Fast, private, offline.
firefox https://localsend.org/

##==================================
## Online Photo Editor
firefox https://www.photopea.com/

##==================================
## Quickemu -Quickemu is a wrapper for the excellent QEMU Quickly create and run optimised Windows, macOS and Linux virtual machines
firefox https://github.com/quickemu-project/quickemu

##==================================
## brow6el - Minimalistic graphical terminal web browser using sixels.
firefox https://codeberg.org/janantos/brow6el

##==================================
## Qwen-Image-Edit-2512 – Consistent multi-character image editing with in image readable text.
qwenimage2512.org
firefox https://huggingface.co/Qwen/Qwen-Image

##==================================
## taws - Terminal UI for AWS provides a terminal UI to interact with your AWS resources.
firefox https://github.com/huseyinbabal/taws

##==================================
## Tailsnitch - security auditor for Tailscale configurations.
firefox https://github.com/Adversis/tailsnitch

##==================================
## Awesome Agentic Patterns
firefox https://github.com/nibzard/awesome-agentic-patterns


##==================================
##
firefox https://www.reddit.com/r/linux/comments/15zbs51/bootconfigunamer/

##==================================
##
firefox https://darkhz.github.io/bluetuith/

##==================================
## lazydocker - A simple terminal UI for both docker and docker-compose
firefox https://github.com/jesseduffield/lazydocker
wget https://github.com/jesseduffield/lazydocker/releases/download/v0.24.3/lazydocker_0.24.3_Linux_x86_64.tar.gz
mkdir lazydocker_0.24.3_Linux_x86_64
tar --extract --file="lazydocker_0.24.3_Linux_x86_64.tar.gz" --gzip --verbose -C ./lazydocker_0.24.3_Linux_x86_64/
ls ./lazydocker_0.24.3_Linux_x86_64
    lazydocker
cp ./lazydocker_0.24.3_Linux_x86_64/lazydocker ~/bin/
sudo ~/bin/lazydocker


##==================================
## Glances is an open-source system cross-platform monitoring tool.
firefox https://github.com/nicolargo/glances

##==================================
## Bookmark and locally save websites.
firefox https://readeck.org/en/

##==================================
## WORKS.
## dawn - Live tui Markdown Rendering Markdown renders as you write.
firefox https://github.com/andrewmd5/dawn
cd ~/code
wget https://github.com/andrewmd5/dawn/releases/download/v0.1.3/dawn-linux-x64.tar.gz
mkdir ~/code/dawn-linux-x64
tar --verbose --extract --file dawn-linux-x64.tar.gz -C ~/code/dawn-linux-x64
ls ~/code/dawn-linux-x64/
sudo cp ~/code/dawn-linux-x64/dawn /usr/local/bin/
rm ~/code/dawn-linux-x64.tar.gz

## Good, works but continuously re-draws.

##==================================
## Markdown Preview for (Neo)vim
firefox https://github.com/iamcco/markdown-preview.nvim

##==================================
## TermIDE - terminal-based IDE, file manager, and virtual terminal
firefox https://github.com/termide/termide

##==================================
## spek-cli - terminal-based acoustic spectrum analyzer (spectrogram) viewer
firefox https://github.com/SwagRGB/spek-cli

##==================================
## pnana - modern terminal text editor
firefox https://github.com/Cyxuan0311/PNANA














## ############################################
## ############################################


##============================
sudo mv /etc/apt/sources.list.d/official-package-repositories.list.20250114 /home/erik/Desktop/
#sudo mv /home/erik/Desktop/official-package-repositories.list  /etc/apt/sources.list.d/

##============================
#fd . --base-directory /usr/share/zoneinfo -E right -E posix | sed 's_^./__' | fzf --multi | while read tz; do printf '%20s: %s\n' "$tz" "$(TZ=$tz date)"; done

##============================

#apt install fzf
#dpkg -L fzf | grep -e key-bindings | grep bash
#dpkg -L fzf | grep -e key-bindings | grep zsh
#source [.../key-bindings.bash] ==  . [.../key-bindings.bash]
#source [.../key-bindings.zsh] ==  . [.../key-bindings.zsh]
#
#[ctrl-r] / ^r - history search -- ^t -- file ((term-) arg) search


##============================
## Activate the 'universe' software repository to install certain applications
sudo add-apt-repository universe


##============================
## stable-diffusion cli
firefox https://code.mendhak.com/run-stable-diffusion-on-ubuntu/
git clone https://github.com/lstein/stable-diffusion.git
cd stable-diffusion







##============================
## WORKS!
## Stable-diffusion image generation command line interface.
    ## This ran on CPU. How to force GPU?
mkdir -p ~/code/stable-diffusion-cli
cd ~/code/stable-diffusion-cli
## Get binary.
wget https://github.com/leejet/stable-diffusion.cpp/releases/download/master-480-b87fe13/sd-master-b87fe13-bin-Linux-Ubuntu-24.04-x86_64.zip
unzip sd-master-b87fe13-bin-Linux-Ubuntu-24.04-x86_64.zip
## Get model.
curl -L -O https://huggingface.co/runwayml/stable-diffusion-v1-5/resolve/main/v1-5-pruned-emaonly.safetensors
## Generate image. Each prompt overwrite as output.png. To save as name use --output
./sd-cli -m ./v1-5-pruned-emaonly.safetensors -p "a lovely cat" --output "cat.png"
./sd-cli --rng cuda --model ./v1-5-pruned-emaonly.safetensors -p "Woman in a diaphanous dress and a crown standing in front of a very large window, overlooking a futuristic city."

##--------------------------
## Use.

## Chromecast.
uvx catt --device "Living Room TV" cast cat.png

##--------------------------
## Silly cat.
## The `--rng cuda` did not force run on GPU. BUMMER.
./sd-cli --rng cuda -m ./v1-5-pruned-emaonly.safetensors -p "cat riding a donkey." --output "catcowboy.png"
tmcat catcowboy.png
uvx catt --device "Living Room TV" cast "catcowboy.png"


##--------------------------
## Maybe put in torch?
uv init
uv venv
source .venv/bin/activate
uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
uv pip install numpy
uv pip install huggingface-hub

##----------------------------------------------
## Other models.
## Qwen image
## NOPE. Not enough RAM.
wget https://huggingface.co/Comfy-Org/Qwen-Image_ComfyUI/resolve/main/split_files/diffusion_models/qwen_image_nvfp4.safetensors
./sd-cli --rng cuda --diffusion-model ./qwen_image_nvfp4.safetensors -p "a lovely cat" --output "cat2.png"
    [ERROR] ggml_extend.hpp:84   - ggml_aligned_malloc: insufficient memory (attempted to allocate 51938.55 MB)


##--------------------------
## Other models.
## z_image_turbo image
wget https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/diffusion_models/z_image_turbo_bf16.safetensors
## NOPE.
./sd-cli --rng cuda --diffusion-model ./z_image_turbo_bf16.safetensors -p "a lovely cat" --output "cat4.png"
    [ERROR] stable-diffusion.cpp:782  - load tensors from model loader failed
./sd-cli --rng cuda --model ./v1-5-pruned-emaonly.safetensors --diffusion-model ./z_image_turbo_bf16.safetensors -p "a lovely cat" --output "cat4.png"


./sd-cli --rng cuda --diffusion-model ./v1-5-pruned-emaonly.safetensors --type q4_0 --prompt "a lovely cat" --output "cat4.png"

##--------------------------
## Try to force GPU.
cd /home/$USER/code/stable-diffusion-cli
./sd-cli --device-id 0 --rng cuda --model ./v1-5-pruned-emaonly.safetensors --prompt "cat riding a donkey." --output "catcowboy2.png"

--diffusion-model ./z_image_turbo_bf16.safetensors
--device-id 0
--type q4_0

./sd-cli --rng cuda --diffusion-model ./z_image_turbo_bf16.safetensors --type q4_0 --prompt "a lovely cat" --output "cat4.png"




./sd-cli --rng cuda --diffusion-model ./z_image_turbo_nvfp4.safetensors --type q4_0 --prompt "a lovely cat" --output "cat4.png"

##--------------------------
## Try smaller
wget https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/diffusion_models/z_image_turbo_nvfp4.safetensors



##============================
## NOPE
## Attempt stable-diffusion-webui
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui
cd ~/code/stable-diffusion-webui
uv init
uv venv
source .venv/bin/activate
uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu124
uv pip install numpy
uv pip install huggingface-hub
uv pip install -r requirements.txt
python -m ensurepip --default-pip

## NOPE
./webui.sh
    #No login for github


##============================
## WORKS
## catt - Cast All The Things allows you to send videos from online sources (YouTube, Vimeo, and a few hundred others) to your Chromecast.
## It also allows you to cast local files or render websites.
firefox https://github.com/skorokithakis/catt
## Install
pipx catt
## Chromecast.
## Use without installing.
uvx catt --device "Living Room TV" cast cat.png




##============================
## ollama

firefox https://ollama.com/download
curl -fsSL https://ollama.com/install.sh | sh
##
## NOPE
firefox https://ollama.com/x/z-image-turbo
ollama pull x/z-image-turbo
ollama run x/z-image-turbo "a photorealistic image of a cat wearing sunglasses"
    Error: 500 Internal Server Error: image runner failed: Error: insufficient memory for image generation: need 21 GB, have 11 GB (exit: exit status 1)

## WORKS
## Only describes the image not create it.
ollama run llama3.2-vision "a photorealistic image of a cat wearing sunglasses"

## WORKS
## Only describes the image not create it.
ollama run llava "a photorealistic image of a cat wearing sunglasses"

## NOPE
ollama run x/z-image-turbo:fp8 "a photorealistic image of a cat wearing sunglasses"
    Error: 500 Internal Server Error: image runner failed: Error: insufficient memory for image generation: need 21 GB, have 11 GB (exit: exit status 1)

##--------------------------------
## ## ollama docker
https://hub.docker.com/r/ollama/ollama
## Add Nvidia docker tools.
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey \
    | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg
curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list \
    | sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' \
    | sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
sudo apt-get update
sudo apt-get install -y nvidia-container-toolkit
##

##--------------------------------
## ollama launch
https://ollama.com/blog/launch



##============================
## Claude Code Container - A Docker container for running Claude Code in "dangerously skip permissions" mode.
firefox https://github.com/tintinweb/claude-code-container


##============================
## WORKS!!
## Whisper
firefox https://github.com/ggml-org/whisper.cpp
cd ~/code
git clone https://github.com/ggml-org/whisper.cpp.git
cd whisper.cpp
## Download Whisper model converted in ggml format.
sh ./models/download-ggml-model.sh base.en
## Build
cmake -B build
cmake --build build -j --config Release
## Use vox to record.
sudo apt install vox
## Record .wav stops after you stop talking.
sox -t alsa default ./recording.wav silence 1 0.1 5% 1 2.0 5%
## Output to a file.
~/code/whisper.cpp/build/bin/whisper-cli -f recording.wav --output-txt recording.txt

##








##============================
## Install rust
firefox https://rustup.rs/
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    # Rust is installed now. Great!
    #
    # To get started you may need to restart your current shell.
    # This would reload your PATH environment variable to include
    # Cargo's bin directory ($HOME/.cargo/bin).
    #
    # To configure your current shell, you need to source
    # the corresponding env file under $HOME/.cargo.
    #
    # This is usually done by running one of the following (note the leading DOT):
    # . "$HOME/.cargo/env"            # For sh/bash/zsh/ash/dash/pdksh
    # source "$HOME/.cargo/env.fish"  # For fish
    # source $"($nu.home-path)/.cargo/env.nu"  # For nushell


##============================
## stable-diffusion-cli
firefox https://crates.io/crates/stable-diffusion-cli
## Install it with rust crate
sudo apt-get update
sudo apt-get install libssl-dev pkg-config
## Fails.
cargo install stable-diffusion-cli


stable-diffusion-cli --help



##============================
## stable-diffusion Dream Script
https://code.mendhak.com/run-stable-diffusion-on-ubuntu/
https://github.com/invoke-ai/Invoke
cd ~/code
git clone https://github.com/lstein/stable-diffusion.git
cd stable-diffusion
mkdir -p models/ldm/stable-diffusion-v1/
cd ~/code/stable-diffusion/models/ldm/stable-diffusion-v1/
wget https://huggingface.co/CompVis/stable-diffusion-v-1-4-original/resolve/main/sd-v1-4-full-ema.ckpt
mv ./sd-v1-4-full-ema.ckpt ~/code/stable-diffusion/models/ldm/stable-diffusion-v1/model.ckpt




##============================
## phub-cli - A terminal-based video browser inspired by ani-cli.
## Browse, search, and stream directly from pornhub.com — no browser required.
https://github.com/curtosis-org/phub-cli

##============================
## Node.js
https://nodejs.org/en/download
## Standalone Binary (.xz)
wget https://nodejs.org/dist/v24.13.0/node-v24.13.0-linux-x64.tar.xz
## OR
## Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
## in lieu of restarting the shell, or restart shell.
\. "$HOME/.nvm/nvm.sh"
## Download and install Node.js:
nvm install 24
## Verify the Node.js version: Should print "v24.13.0".
node -v
## Verify npm version: Should print "11.6.2".
npm -v










##============================
## Kilo code. Claude code competitor.
firefox https://kilo.ai/install



##============================
## KAOS: K8s Agent Orchestration System
## Deploy, manage, and orchestrate AI agents on Kubernetes
firefox https://github.com/axsaucedo/kaos

##============================
##
firefox https://medium.com/@lee.harding/building-a-real-time-hn-display-for-15-3ea1772051ff

##============================
## LL3M: Large Language 3D Modelers
https://github.com/threedle/ll3m/

##============================
## Kimi K2.5 : Agentic cli coding tool like claude, from china, and newer.
https://www.kimi.com/code/docs/en/kimi-cli/guides/getting-started.html

##============================
## z.ai Add to clude for different AI
https://docs.z.ai/devpack/tool/claude

##============================
## agent-cli
https://github.com/basnijholt/agent-cli

##============================
# You can use Llama (such as Llama 3 or TinyLlama) as an agent to run terminal commands by leveraging frameworks like LangChain, Ollama, or specialized local CLI tools. These agents can interpret natural language, generate appropriate commands (e.g., ls, cd, pip install), execute them, and interpret the output to perform tasks autonomously. ￼
# Methods to Run Llama as a Terminal Agent:
# Ollama & Local Frameworks: Utilize Ollama to run Llama locally, connecting it to a Python script using LangChain's terminal tools or {Link: agent-cli https://github.com/basnijholt/agent-cli} to execute commands securely.
# Specialized Tools: Use tools like shell_gpt or build custom scripts that wrap Llama responses in specific tokens (e.g., <|START_COMMAND_TOKEN|> and <|END_COMMAND_TOKEN|>) to define executable commands.
# Local-First Agents: Implement open-source agents that use models like TinyLlama for a fully offline, privacy-focused terminal experience. ￼
# Important Safety Considerations:
# Security Risk: Giving an AI terminal control allows it to execute destructive commands (e.g., rm -rf /).
# Sandboxing: Always run AI agents in a containerized environment (Docker), a virtual machine, or a dedicated, restricted user directory to prevent accidental system damage.
# Human-in-the-Loop: Configure the agent to ask for permission before executing high-risk commands.

##============================
## Carbonyl is a Chromium based browser built to run in a terminal.
## AI agents can use it to check code.
https://fathy.fr/carbonyl
https://github.com/fathyb/carbonyl

##============================
## Detectron2 is a platform for object detection, segmentation and other visual recognition tasks.
https://github.com/facebookresearch/detectron2

##============================
## Voice command conversational AI assistant that can interact with your system.
https://github.com/basnijholt/agent-cli

##============================
## nanoGPT : The simplest, fastest repository for training/finetuning medium-sized GPTs.
https://github.com/karpathy/nanoGPT

##============================
## ChatGPT Desktop Application
https://github.com/lencx/ChatGPT

##============================
## openWakeWord is an open-source wakeword library that can be used to
## create voice-enabled applications and interfaces.
## It includes pre-trained models for common words & phrases that work well in real-world environments.
https://github.com/dscripka/openWakeWord

##============================
## Descriptive vision models
ollama pull llava:13b
ollama pull llava
ollama pull moondream
ollama pull qwen2.5vl:7b
ollama pull qwen3vl:4b
## Works great
ollama run qwen3vl:4b "Describe this image " ./intro-1716917272.jpg


##============================
## TTS text to audio.
## Kokoro with lang_code='a'

mkdir -p /home/erik/code/claude/Narrator
uv init --no-readme
uv add kokoro soundfile
## install pip in the uv env
uv pip install pip

##> Test Kokoro TTS with voice parameter.
## Set voice type. There are 10 diff voice available.
export KOKORO_VOICE="af_heart"

uv run python -c "
from kokoro import KPipeline
import soundfile as sf
p = KPipeline(lang_code='a')
for _, _, audio in p('A rusty wheelbarrow sits in a patchy garden, bathed in warm afternoon light.', voice='af_heart'):
    sf.write('test_kokoro.wav', audio, 24000)
    print('Wrote test_kokoro.wav')
    break
"

##> The kokoro test file `VisionNarrator/test_kokoro.wav` sounds great.
vlc ./test_kokoro.wav


##============================
## kube-prometheus-stack
## Installs core components of the kube-prometheus stack, a collection of Kubernetes manifests, Grafana dashboards, and Prometheus rules combined with documentation and scripts to provide easy to operate end-to-end Kubernetes cluster monitoring with Prometheus
https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack

##============================
## Ralph is an autonomous AI agent loop that runs AI coding tools (Amp or Claude Code) repeatedly until all PRD items are complete.
https://github.com/snarktank/ralph
https://www.aihero.dev/getting-started-with-ralph

##============================
## Amp is the frontier coding agent that lets you wield the full power of leading models.
https://ampcode.com/

##============================
## Mesh-Mini is a fork of MeshCommander. MeshCommander is the ultimate open source Intel® AMT management console.
https://github.com/BrytonSalisbury/mesh-mini

## A Docker image, where {architecture} is amd64 or arm64.
docker pull brytonsalisbury/mesh-mini:amd64
docker run -p 3300:3300 brytonsalisbury/mesh-mini:amd64
## Add a vPro computer by IP.

##============================
## Meshcommander control ME vPro. Out of Band OOB managment.
## Docker image run meshcommander.
docker run -it --rm -p 3301:3301 docker.io/boxcutter/meshcmd MeshCommander

##============================
## Unofficial Repository for Latest Development Tools
https://debian.griffo.io/
sudo apt install zig ghostty lazygit yazi eza uv fzf zoxide bun tigerbeetle

##============================
## Tetro TUI - Cross-platform TUI Tetris Game.
https://github.com/Strophox/tetro-tui

##============================
## docker_swarm
https://thedecipherist.com/articles/docker_swarm_vs_kubernetes/

##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================


##============================
