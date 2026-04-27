##==================================
## ############################################
## ##   cool git repos etc
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
umount /home/$USER/mnt


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
## Scooter - is an interactive find-and-replace terminal TUI app. Search with either a fixed string or a regular expression, enter a replacement, and interactively toggle which instances you want to replace.
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
export PATH="$PATH:/home/$USER/bin"

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
uv run python -m scripts.inference_triposg --image-input /home/$USER/code/TripoSG/$IMAGE

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
    Authenticating as: $USER,,, ($USER)
    Password: 
    ==== AUTHENTICATION COMPLETE ====
Mounted /dev/sdb1 at /media/$USER/9e26fd33-d451-4dc6-b107-150ddfcd76f9
ls -la /media/$USER/9e26fd33-d451-4dc6-b107-150ddfcd76f9/
mkdir -p /media/$USER/9e26fd33-d451-4dc6-b107-150ddfcd76f9/code
cp -r ~/code/TripoSG /media/$USER/9e26fd33-d451-4dc6-b107-150ddfcd76f9/code/
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
firefox https://github.com/$USERjuhani/basalt
wget https://github.com/$USERjuhani/basalt/releases/download/basalt%2Fv0.11.2/basalt-0.11.2-x86_64-unknown-linux-musl.tar.gz
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
## Works. Costs money.
## Claude Coder CLI
## ai. coder. Claude Code is an agentic coding tool that reads your codebase, edits files, runs commands, and integrates with your development tools.
firefox https://code.claude.com/docs/en/overview
## Very good but costs $$$ each month.
##-------------------------------------
## Install.
curl -fsSL https://claude.ai/install.sh | bash
## or
## Install the Claude CLI tool via npm:
npm install -g @anthropic-ai/claude-code.
##-------------------------------------
## Setup payments on the web.
anthropic.com
##-------------------------------------
## Make parameters files.
## Examples:
## Specifies how you want the agent to act.
touch CLAUDE.md ## Specifies how you want the agent to act.
echo '# Hooks
- A `Stop` hook is configured in `.claude/settings.local.json` that runs ppend-memory.sh` after every response.
- It appends Claude last response (with timestamp) to `MEMORY.md`.
# About Me
- Name: YOURNAMEHERE
- Location: Hawaii
- Occupation: Engineer
- Email: YOUREMAILHERE@gmail.com
- GitHub: https://github.com/YOURGITHUBHERE
- LinkedIn: https://www.linkedin.com/in/YOURLINKEDIN
## This Environment
- Linux, Ubuntu 24.04 "noble" based.
- Uses Claude Code as a general-purpose personal assistant
- sudo password: Ask me to enter when needed.
## Session Persistence
- At the START of every session, read `MEMORY.md` and `TODO.md`.
- If the user says "RESUME:" — read both files `MEMORY.md` and `TODO.md`, check `git log` on active projects, and give a status report.
- When user writes 'MEMORIZE:' add what was done to MEMORY.md or `MEMORY/` project file.
' > CLAUDE.md
touch MEMORY.md ## A place for agent to add information to add context to next session.
touch TODO.md   ## Have agent add items as you come up with new ideas.
##-------------------------------------
## Allows agent to work with some files without asking.
mkdir -p ~/code/claude/.claude/
cd ~/code/claude/
touch ~/code/claude/.claude/settings.local.json
echo '{
  "permissions": {
    "allow": [
      "WebFetch(domain:github.com)",
      "WebFetch(domain:stackoverflow.com)",
      "WebFetch(domain:raw.githubusercontent.com)",
      "Bash(cat:*)",
      "Bash(git init:*)",
      "Bash(git config:*)",
      "Bash(chmod:*)",
      "Bash(curl:*)",
      "Bash(wget:*)",
      "Bash(antiword:*)",
      "WebSearch"
    ]
  },
  "hooks": {
    "Stop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "/home/YOURUSERNAMEHERE/code/claude/append-memory.sh"
          }
        ]
      }
    ]
  }
}' > ~/code/claude/.claude/settings.local.json
##----------------------------
## This auto files claude memories.
touch ~/code/claude/append-memory.sh
cat <<'EOF' > ~/code/claude/append-memory.sh
#!/bin/bash
## Hook script: appends Claude's last response summary to MEMORY.md

INPUT=$(cat)
TRANSCRIPT_PATH=$(echo "$INPUT" | jq -r '.transcript_path // empty')
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-/home/$USER/code/claude}"
MEMORIES_FILE="$PROJECT_DIR/MEMORY.md"

if [ -z "$TRANSCRIPT_PATH" ] || [ ! -f "$TRANSCRIPT_PATH" ]; then
  exit 0
fi

## Extract the last assistant message text from the JSONL transcript
LAST_RESPONSE=$(tac "$TRANSCRIPT_PATH" | while IFS= read -r line; do
  ROLE=$(echo "$line" | jq -r '.role // empty' 2>/dev/null)
  if [ "$ROLE" = "assistant" ]; then
    echo "$line" | jq -r '
      [.message.content[] | select(.type == "text") | .text] | join("\n")
    ' 2>/dev/null
    break
  fi
done)

if [ -z "$LAST_RESPONSE" ]; then
  exit 0
fi

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

printf '\n## %s\n\n%s\n' "$TIMESTAMP" "$LAST_RESPONSE" >> "$MEMORIES_FILE"

exit 0
EOF
##--------------------------
## Start claude
claude
your prompt here
##-------------------------------------
## Allow claude to use browser.
## Chrome browser.
firefox https://chromewebstore.google.com/detail/claude/fcoeoabgfenejglbffodgkkbkcdhcgfn
## Start with
claude --chrome
## Or in an existing session run.
/chrome
## Claude Plugin Run /plugin and go to the Discover tab to browse what’s available.
/plugin
##Discover tab
##-------------------------------------
## Prompt claude
claude -p "Explain how to comment in html code."
##-------------------------------------
## Compacting. The memory of what you are currently working on is limited.
## Claude will compact the conversation sometime forgeting key points.
## Save key details to a file, quitting, and restarting the session. Have to set this up first.
MEMORIZE:
## Best Practices: To maintain context, consider manually compacting at natural stopping points.
/compact
## Start fresh without losing critical, accumulated knowledge.
/clear
##-------------------------------------
## Local model
## Use claude with local model using llmstudio or ollama.
## Start Local Server: Ensure your local tool is running as a server (e.g.,
ollama serve
## or
lms server start
## Configure Environment Variables: Point Claude Code to your local server.
export ANTHROPIC_BASE_URL=http://localhost:11434
export ANTHROPIC_BASE_URL=http://localhost:1234
export ANTHROPIC_AUTH_TOKEN=lmstudio

## Example
export ANTHROPIC_BASE_URL="http://192.168.1.64:11434/v1"
export ANTHROPIC_AUTH_TOKEN="sk-not-required"
export ANTHROPIC_MODEL="qwen3-coder-32k"
## Run with Local Model with parameters.
claude --model ollama/qwen3-coder:30b-a3b-q4_K_M
##-------------------------------------

 ▐▛███▜▌   Claude Code v2.1.55
▝▜█████▛▘  Opus 4.6 · Claude Pro
  ▘▘ ▝▝    ~/code/claude


##-------------------------------------
## Claude Code forgets everything between sessions. Claude Subconscious adds a persistent memory layer underneath:
https://github.com/letta-ai/claude-subconscious

##-------------------------------------

##=====================================
## Claude Code Container - A Docker container for running Claude Code in "dangerously skip permissions" mode.
firefox https://github.com/tintinweb/claude-code-container

##============================
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
## packemon TUI tool for generating packets of arbitrary input and monitoring packets on any network interfaces (default: eth0)
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
## tui. web. Browser that uses firefox to render a page in a tty, psuedo page. Great if you have no gui.
firefox https://www.brow.sh/docs/installation/
## Uses firefox as backend.
sudo apt install firefox
## Install. Awesome. Use static binary.
wget https://github.com/browsh-org/browsh/releases/download/v1.8.0/browsh_1.8.0_linux_amd64
chmod 755 browsh_1.8.0_linux_amd64
./browsh_1.8.0_linux_amd64
sudo mv ./browsh_1.8.0_linux_amd64 /usr/local/bin/browsh
browsh
## OR. Install.
wget https://github.com/browsh-org/browsh/releases/download/v1.8.0/browsh_1.8.0_linux_amd64.deb
sudo apt install ./browsh_1.8.0_linux_amd64.deb
rm ./browsh_1.5.0_linux_amd64.deb
browsh
##-----------------------
## browsh Controls.
## CTRL+L           ## Change URL, first click on URL.
## CTRL+Backspace   ## Back.
## CTRL+t           ## New tab.
## CTRL+/           ## Cycle to next tab.
## CTRL+w           ## Close tab.
## CTRL+q           ## Exit app.
## ALT+SHIFT+p      ## Take a screenshot.
## CTRL+m           ## Toggles monochrome mode.
##-----------------------
## Some bookmarks.
browsh "https://news.ycombinator.com/"
browsh "https://www.reddit.com/r/commandline/"
browsh "https://www.theregister.com/"
browsh "https://www.wikipedia.org/"
## Add the search term as the search button does not seem to work.
browsh "https://duckduckgo.com/?q=browsh"
## No video but can read comments.
browsh "https://www.youtube.com/watch?v=OSwxD6e_Ftk"

##==========================================
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
## Works.
## TERM39 - A modern terminal multiplexer
firefox https://github.com/alejandroqh/term39
term39 --mouse-device '/dev/input/mice' --theme dark --single-line  --framebuffer

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
## Works.
## TERM39 - modern terminal multiplexer with classic MS-DOS aesthetic, built with Rust. Full-screen interface with window management and complete terminal emulation.  To boot to CLI, use `sudo systemctl set-default multi-user.target` and reboot. To revert, use `sudo systemctl set-default graphical.target`.
firefox https://github.com/alejandroqh/term39
wget https://github.com/alejandroqh/term39/releases/download/v1.2.0/term39-1.2.0-linux-64bit-x86-binary.tar.gz
tar --extract --file="term39-1.2.0-linux-64bit-x86-binary.tar.gz" --gzip --verbose -C ./
sudo mv term39 /usr/local/bin/
sudo chmod +x /usr/local/bin/term39
term39

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
## lazydocker - A simple terminal TUI for both docker and docker-compose
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

##============================
sudo mv /etc/apt/sources.list.d/official-package-repositories.list.20250114 /home/$USER/Desktop/
#sudo mv /home/$USER/Desktop/official-package-repositories.list  /etc/apt/sources.list.d/

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
## ollama - Command line tool to run AI models
firefox https://ollama.com/download
curl -fsSL https://ollama.com/install.sh | sh
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
## Kokoro TTS text to audio.
https://github.com/nazdridoy/kokoro-tts

## Kokoro with lang_code='a'

mkdir -p ./kokoro
cd kokoro
uv init --no-readme
uv add kokoro soundfile
source .venv/bin/activate
## install pip in the uv env
uv pip install pip

##> Test Kokoro TTS with voice parameter. USE THE ONE FARTHER BELOW.
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

##----------------------
## Use a shell script. Put it in a file called `kokoro.sh`
## install pip in the uv env
mkdir -p ./kokoro-test
cd kokoro-test
uv init --no-readme
uv add kokoro soundfile
source .venv/bin/activate
uv pip install pip

## Put the below into a file called test_kokoro.sh

cat > test_kokoro.sh << 'ENDSCRIPT'
## Test kokoro TTS with a single voice. Set KOKORO_VOICE to override.
## Usage: ./test_kokoro.sh ["text to synthesize"]
export KOKORO_VOICE="${KOKORO_VOICE:-af_heart}"
export KOKORO_TEXT="${1:-A rusty wheelbarrow sits in a patchy garden, bathed in warm afternoon
light.}"
export KOKORO_OUTFILE="kokoro_$(date +%Y%m%d_%H%M%S).wav"

uv run python - <<'EOF'
import os
import numpy as np
from kokoro import KPipeline
import soundfile as sf

voice = os.environ.get('KOKORO_VOICE', 'af_heart')
text = os.environ.get('KOKORO_TEXT')
outfile = os.environ.get('KOKORO_OUTFILE', 'kokoro.wav')
p = KPipeline(lang_code='a')
chunks = [audio for _, _, audio in p(text, voice=voice)]
sf.write(outfile, np.concatenate(chunks), 24000)
print(f'Wrote {outfile} ({len(chunks)} chunks, voice={voice})')
EOF
ENDSCRIPT


chmod +x test_kokoro.sh

## Run
KOKORO_VOICE="af_sky" ./test_kokoro.sh '''Create voice-enabled applications and interfaces.'''

KOKORO_VOICE="am_michael" ./test_kokoro.sh 'Create voice-enabled applications and interfaces.'

## MAYBE you can add synthetic pauses by adding a silence tags measured in seconds. E.g. Hello[1s]Kokoro[0.2s]Web

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
## MIT lectures on tools.
https://missing.csail.mit.edu/

##============================
## AGENTS.md  A simple, open format for guiding coding agents
https://agents.md/

##============================
https://github.com/$USERAllanKincaid/VisionNarrator
uv run python webui.py

##============================
## tkinter library to create simple GUI application
https://realpython.com/python-gui-tkinter/

##============================
## Trovr  UI file manager that resembles GUI file managers
https://github.com/NSPC911/rovr

##============================
## strace-tui  A terminal user interface (TUI) for visualizing and exploring strace output.
https://github.com/Rodrigodd/strace-tui

##============================
## video-to-ascii  Watch (colour!) videos in your terminal.
https://github.com/edavlis/video-to-ascii

##============================
## Oxicord is a high-performance, memory-safe Discord TUI client
https://github.com/linuxmobile/oxicord

##============================
## Glow  Render markdown on the CLI
https://github.com/charmbracelet/glow

##============================
## Crush  Your new coding bestie
https://github.com/charmbracelet/crush

##============================
## WORKS
## Letta code cli tui - Create agents that remember everything, learn continuously, and improve themselves over time.
https://docs.letta.com/letta-code
## Register with letta
https://app.letta.com/login?redirect=/
## Install letta
sudo npm i -g @letta-ai/letta-code
## Get letta working with local model
hf download Qwen/Qwen3-Coder-30B-A3B-Instruct-GGUF --include "*.Q4_K_M*"
##  1. Install Docker on X10SRA (container runtime to run the Letta server)
sudo apt update
sudo apt-get install -y docker.io
sudo usermod -aG docker $USER
##  2. Pull an embedding model into Ollama (Letta needs this for memory/search)
ollama pull mxbai-embed-large
ollama list | grep embed
##  3. Verify context window on your qwen3-coder model (Letta needs 16K+ to function)
ollama show qwen3-coder-32k --modelfile 2>/dev/null | grep -i "num_ctx\|context\|parameter"
##  4. Launch the Letta server container with Ollama connection
docker run -d \
  --name letta-server \
  --network host \
  -v ~/.letta/.persist/pgdata:/var/lib/postgresql/data \
  -e OLLAMA_BASE_URL="http://localhost:11434/v1" \
  letta/letta:latest
## Check container
docker container ls | grep letta
## Check docker
docker ps -a --filter name=letta-server --format "table {{.Status}}\t{{.Ports}}"; echo "---"; docker logs letta-server 2>&1 | tail -20
## Query. Check Letta server health and available models
curl -s http://localhost:8283/api/health 2> /dev/null ; echo "---" ; curl -s http://localhost:8283/v1/models 2>/dev/null | python3 -m json.tool 2>/dev/null | head -40
curl -s http://localhost:8283/v1/health; echo "---"; curl -s http://localhost:8283/v1/providers | python3 -m json.tool 2>/dev/null | head -60
docker logs letta-server 2>&1 | grep -i -E "ollama|model|provider" | tail -20
docker exec letta-server printenv | grep -i ollama; echo "---"
docker exec letta-server curl -s http://localhost:11434/v1/models 2>/dev/null | head -20; echo "---";
docker exec letta-server curl -s http://localhost:11434/api/tags 2>/dev/null | python3 -m json.tool 2>/dev/null | head -10

## Restart. On first boot, the container initializing its PostgreSQL database while also trying to sync providers.
docker restart letta-server && sleep 10 && docker logs letta-server 2>&1 | grep -i ollama | tail -10

##  5. Connect Letta Code to the local server
LETTA_BASE_URL="http://localhost:8283" letta --new-agent
## Use this to start
LETTA_BASE_URL="http://localhost:8283" EXA_API_KEY="yourkey" letta


## Create an agent using the local model
##    Pick ollama/qwen3-coder-32k:latest
## Prompt
Hey Letta! What model are you running on?
## If not qwen
/model
## Pick ollama/qwen3-coder-32k:latest

##-------------------
## To make the docker leta server persistant.
docker update --restart unless-stopped letta-server

##-------------------
## point to local agent
cp ~/.letta/settings.json ~/.letta/settings.json.bak
## To switch back to cloud later, just restore the backup:
cp ~/.letta/settings.json.bak ~/.letta/settings.json

##-------------------
## Name the agent
## Named it "$USER-Local". You can also rename it from within the interactive TUI
/profile save <name>
## Or via the API:
curl -X PATCH http://localhost:8283/v1/agents/<agent-id> \
  -H 'Content-Type: application/json' \
  -d '{"name": "WhateverYouWant"}'

##-------------------
## Letta Code CLI crash fix for self-hosted local server

##  Problem: Letta Code TUI crashes with currentQuestion.options is not iterable
##  when connected to a self-hosted Letta server instead of Letta Cloud. The local
##  server returns a question object without an options array.

Backup/restore:
# Backup first
sudo cp /usr/lib/node_modules/@letta-ai/letta-code/letta.js \
/usr/lib/node_modules/@letta-ai/letta-code/letta.js.bak

# Apply fix
sudo sed -i 's/\.\.\.currentQuestion\.options,/...(currentQuestion.options || []),/' /usr/lib/node_modules/@letta-ai/letta-code/letta.js

## Check it
diff /usr/lib/node_modules/@letta-ai/letta-code/letta.js \
/usr/lib/node_modules/@letta-ai/letta-code/letta.js.bak

## Restore if needed
sudo cp /usr/lib/node_modules/@letta-ai/letta-code/letta.js.bak \
/usr/lib/node_modules/@letta-ai/letta-code/letta.js

##-------------------
## to start
## Start docker server.


##-------------------
## Find the agent key. then you can look there for human.md and persona.md
cat /home/$USER/.letta/agents/agent-59122954-0ef0-4fff-998b-37936491472c/memory/system/persona.md
cat /home/$USER/.letta/agents/agent-59122954-0ef0-4fff-998b-37936491472c/memory/system/human.md

## Alter these to the needs of the  agent.
.../memory/system/human.md
.../memory/system/persona.md

##----------------------------
## Add environmental variables.
echo "EXA_API_KEY=your_key_here" >> ~/.letta/agents/YOUR_AGENT_ID/memory/system/.env

cat /home/$USER/.letta/agents/agent-59122954-0ef0-4fff-998b-37936491472c/memory/system/.env

echo "EXA_API_KEY=yourkey" >> /home/$USER/.letta/agents/agent-59122954-0ef0-4fff-998b-37936491472c/memory/system/.env

LETTA_BASE_URL="http://localhost:8283" EXA_API_KEY="yourkey" letta


##----------------------------
⚡LETTA_BASE_URL="http://localhost:8283" EXA_API_KEY="75c7d##############d610" letta

   ██████    Letta Code v0.16.9
 ██      ██  qwen3-coder-32k:latest · http://localhost:8283
 ██  ██  ██  ~/code/letta
 ██      ██
   ██████


##----------------------------
## PLUGINS
##----------------------------
## social-cli - A unified CLI to connect AI agents to the social web. Bluesky, X, Semble, margin annotations, and blog publishing — all through one tool. YAML in, YAML out.
## Built for Letta agents, works with anything that can shell out.
https://github.com/letta-ai/social-cli
##----------------------------
## letta-oss-ui - An example desktop application for running Letta Code agents with a visual interface.
https://github.com/letta-ai/letta-oss-ui

##----------------------------
## Letta External MemFS - Connect Letta Code directly to external git hosts (Gitea, GitLab, GitHub, etc.) for memory persistence — no memfs sidecar required.
https://github.com/Fimeg/letta-external-memfs

##----------------------------
## This guide explains how to run Letta's git-backed memory (MemFS / context repositories) on a fully self-hosted OSS Letta server
https://github.com/Corykidios/local_letta_memfs_magic

##----------------------------

##----------------------------

##----------------------------

##----------------------------

##----------------------------

##----------------------------
##============================
# WORKS!
## Qwen 3.5
https://unsloth.ai/docs/models/qwen3.5
## Download
ollama pull qwen3.5:27b-q4_K_M
## BEST!!!!
ollama pull qwen3.5:9b-q8_0
## OmniCoder-9B
https://huggingface.co/Tesslate/OmniCoder-9B



##============================
## WORKS!
## MarkText Next generation wyswig markdown editor
## A simple and elegant open-source markdown editor that focused on speed and usability.
https://github.com/marktext/marktext
wget https://github.com/marktext/marktext/releases/download/v0.17.1/marktext-x86_64.AppImage
chmod +x marktext-x86_64.AppImage
sudo mv marktext-x86_64.AppImage /usr/local/bin/marktext

##============================
## WORKS!
## OpenCode
https://opencode.ai/docs
## GPU-accelerated terminal is highly recommended for running OpenCode.
## See RESEARCH_opencode.md
## Setup ollama first.
## Install.
curl -fsSL https://opencode.ai/install | bash
## Configure
mkdir -p ~/.config/opencode/
cat >  ~/.config/opencode/opencode.json << EOF
{
  "$schema": "https://opencode.ai/config.json",
  "provider": {
    "ollama-local": {
      "npm": "@ai-sdk/openai-compatible",
      "name": "Ollama (local)",
      "options": {
        "baseURL": "http://localhost:11434/v1"
      },
      "models": {
        "qwen3-coder-32k": {
          "name": "Qwen 3 Coder 30B (32k ctx)"
        }
      }
    }
  }
}
EOF
## Check it.
cat ~/.config/opencode/opencode.json
## Open
opencode
## Choose model
    /models
## In a directory with code run the init.
    /init
##------------------------------
## Use qwen3.5
## Setup ollama first.
ollama pull qwen3.5:27b-q4_K_M
## Make mod file. Have to use 16k because I have SO little vRAM. Normal would be higher. 64k or higher.
## Does not seem to follow "/no_think", still thinks. Have to pass directive in config instead.
cat << 'EOF' > /tmp/qwen35-NoThink-16K.Modelfile
FROM qwen3.5:27b-q4_K_M
TEMPLATE {{ .Prompt }}
RENDERER qwen3.5
PARSER qwen3.5
SYSTEM "/no_think"
PARAMETER num_ctx 16384
PARAMETER temperature 0.7
PARAMETER top_k 20
PARAMETER top_p 0.8
EOF
## Modify model
ollama create qwen3.5:27b_NoThink-16K -f /tmp/qwen35-NoThink-16K.Modelfile
## Add line to share over network.
sudo vim /etc/systemd/system/ollama.service
## Add
Environment="OLLAMA_HOST=0.0.0.0"
## Write config "reasoningEffort": "none" to stop 'Thinking' in config.
cat << 'EOF' > ~/.config/opencode/opencode.json
{
  "$schema": "https://opencode.ai/config.json",
  "provider": {
    "ollama": {
      "npm": "@ai-sdk/openai-compatible",
      "name": "Ollama (X10SRA)",
      "options": {
        "baseURL": "http://X10SRA.localdomain:11434/v1"
      },
      "models": {
        "qwen3.5:27b_NoThink-16K": {
          "name": "Qwen3.5 27B NoThink-16K",
          "tools": true,
          "options": {
            "reasoningEffort": "none"
          }
        }
      }
    }
  }
}
EOF
##---------------
## start
opencode
## Choose model
    /models
## In a directory with code run the init.
    /init
## Add an AGENTS.md file with code instructions.
cat ./AGENTS.md
##-----------------------------
## Session is saved with a hash. Very cool.
                                   ▄
  █▀▀█ █▀▀█ █▀▀█ █▀▀▄ █▀▀▀ █▀▀█ █▀▀█ █▀▀█
  █  █ █  █ █▀▀▀ █  █ █    █  █ █  █ █▀▀▀
  ▀▀▀▀ █▀▀▀ ▀▀▀▀ ▀  ▀ ▀▀▀▀ ▀▀▀▀ ▀▀▀▀ ▀▀▀▀

  Session   Segmentation models: research, recommendations, a…
  Continue  opencode -s ses_363526311ffeWsQdSskGHJzoGg

##
##-----------------------------
## Problems
- Does not leave previous output on screen when closed.
- Have to shift + mouse to copy text.
- Can not paste with middle click.
-

##-----------------------------

##============================



##============================
## WORKS!
## ultralytics
https://docs.ultralytics.com/models/sam/#how-can-i-use-the-segment-anything-model-sam-for-image-segmentation
## YOLO11n-seg
## Segmentation model
https://docs.ultralytics.com/tasks/segment/#val
##
sudo docker run -it --ipc=host --runtime=nvidia --gpus all ultralytics/ultralytics:latest
## Mount volume
sudo docker run -it -v ./:/mnt/ --ipc=host --runtime=nvidia --gpus all ultralytics/ultralytics:latest
## Run this in container
yolo segment predict model=yolo26n-seg.pt source='https://ultralytics.com/images/bus.jpg'
## Use local image
## default.jpg
yolo segment predict model=yolo26n-seg.pt source='/mnt/default.jpg'
cp /ultralytics/runs/segment/predict/default.jpg /mnt/default-segmented.jpg


##============================
## NetWatch - Real-time network diagnostics in your terminal — like htop for your network.
https://github.com/matthart1983/netwatch

##============================
## WORKS
## voxcii - Terminal-based ASCII 3D model viewer. Supports OBJ and STL models
https://github.com/ashish0kumar/voxcii
sudo apt install ncurses libncurses-dev libncursesw5-dev
git clone https://github.com/ashish0kumar/voxcii
cd voxcii
make
ls $HOME/.config/btop
##
./voxcii test.stl

##============================
## giggles  batteries-included react framework for building terminal apps.
https://github.com/zion-off/giggles

##============================
## Obsidian CLI is a command line interface that lets you control Obsidian from your terminal for scripting, automation, and integration with external tools.
https://help.obsidian.md/cli

##============================
## microgpt, a single file of 200 lines of pure Python with no dependencies that trains and inferences a GPT.
http://karpathy.github.io/2026/02/12/microgpt/
https://gist.github.com/karpathy/8627fe009c40f57531cb18360106ce95
https://www.youtube.com/watch?v=VMj-3S1tku0

##============================
## SAS Audio Processor component of Signals & Sorcery, a music production application.
## A suite of 25 audio processing tools — trim, normalize, compress, EQ, reverb, pitch-shift, time-stretch, key detection, MIDI extraction, and more — exposed as MCP tools
https://github.com/shiehn/sas-audio-processor

##============================
## WORKS
## btop, Resource monitor that shows usage and stats for processor, memory, disks, network and processes.
https://github.com/aristocratos/btop
git clone https://github.com/aristocratos/btop
cd btop
sudo make install
sudo make setcap
make help
sudo btop

##============================
## dbcli, Database CLI built for AI agents. One command to understand any database.
https://github.com/JustVugg/dbcli

##============================
## Claude Lamp, A physical RGB lamp that pulses when Claude Code needs your attention.
https://github.com/reynico/esp32-claude-lamp

##============================
## U2m.io – Free URL shortener with bulk API, QR codes, and geo analytics (u2m.io)
https://u2m.io/

##============================
## Skills are reusable capabilities for AI agents. Install them with a single command to enhance your agents with access to procedural knowledge.
https://skills.sh/

##============================
## engram – 🧠 engram logs every command you run — and its output — into a local SQLite database.
https://github.com/TLJQ/engram

##============================
## Grafos turns your Terraform code into interactive visual graphs, enforces compliance policies with natural language, and gives your team an intelligent assistant that understands your infrastructure.
https://grafos.ai/

##============================
## peek - Describe and rename images from the terminal using vision LLMs.
https://github.com/Aayush9029/peek

##============================
## go-easy - 🟢 Google APIs made easy — Gmail, Drive & Calendar. For AI agents and humans.
https://github.com/marcfargas/go-easy

##============================
## xytz - YouTube from your terminal
https://github.com/xdagiz/xytz

##============================
## etcdotica is a lightweight, file-based overlay that synchronizes system configuration with a Git repository.
https://github.com/senotrusov/etcdotica

##============================
## The open platform for cloud coding agents.
https://openhands.dev/

##============================
## zclaw is an ESP32-resident AI agent written in C. It runs as a practical assistant over Telegram or host relay, with scheduling, GPIO control, memory, and a tight firmware budget.
https://zclaw.dev/

##============================
## Bruin is a data pipeline tool that brings together data ingestion, data transformation with SQL, Python & R, and data quality into a single framework. It works with all the major data platforms and runs on your local machine, an EC2 instance, or GitHub Actions.
https://github.com/bruin-data/bruin

##============================
## Tribe - Openclaw
https://github.com/orgs/TRIBE-INC/repositories

##============================
## Amplifier brings AI assistance to your command line with a modular, extensible architecture.
https://github.com/microsoft/amplifier

##============================
## TerminalPhone is a single, self-contained Bash script that provides anonymous, end-to-end encrypted voice and text communication between two or more parties over the Tor network.
https://gitlab.com/here_forawhile/terminalphone

##============================
## Uptime Kuma is a monitoring tool that allows anyone to monitor any web services such HTTP/HTTPS websites, Apps, TCP Ports, SSL certificates and even MySQL databases.
https://uptimekuma.org/

##============================
## nanoclaw  An AI assistant that runs agents securely in their own containers.
https://github.com/qwibitai/nanoclaw
git clone https://github.com/qwibitai/NanoClaw.git
cd NanoClaw
claude
    /setup


##============================
## GoForGo - 🚀 Interactive Go tutorial CLI
https://github.com/stonecharioteer/goforgo

##============================
## BananaOS - Homemade OS made with AI coder claude
https://github.com/Banaxi-Tech/BananaOS
git clone https://github.com/Banaxi-Tech/BananaOS
cd BananaOS
make qemu-system-i386 -cdrom bananaos.img -m 128M
## Retro mode:
qemu-system-i386 -cpu 486 -cdrom bananaos.img -m 11.2M


##============================
## rtk - Rust Token Killer High-performance CLI proxy to minimize LLM token consumption.
## BananaOS is one of the first Vibecoded Operating System Projects, designed for learning and exploration of low-level system programming.
https://github.com/rtk-ai/rtk

##============================
https://hackaday.com/2026/03/04/neither-android-nor-ios-diy-smartphone-runs-on-esp32/
https://unsloth.ai/docs/models/qwen3.5/fine-tune

##============================
## jcode - A blazing-fast, fully autonomous AI coding agent with a gorgeous TUI, multi-model support, swarm coordination, persistent memory
https://github.com/1jehuang/jcode

##============================
## gws - One CLI for all of Google Workspace — built for humans and AI agents.
https://github.com/googleworkspace/cli
https://justin.poehnelt.com/posts/rewrite-your-cli-for-ai-agents/


##============================
## Git city – visualize GitHub as a city, one building per contributor
https://www.thegitcity.com/

##============================
## jadx - Dex to Java decompiler – Command line and GUI tools for producing Java source code from Android Dex and Apk files
https://github.com/skylot/jadx/releases/tag/v1.5.5

##============================
## LazyTail - Terminal-Based Log Viewer A fast, universal terminal-based log viewer with live filtering, follow mode, and AI assistant integration via MCP.
https://github.com/raaymax/lazytail

##============================
## Traffick.sh - A tiny, POSIX-compliant script that acts like top or htop, but for your nftables rules.
https://gist.github.com/Strykar/72c20bb021347eafe4294511f21791be

##============================
## bandwhich - This is a CLI utility for displaying current network utilization by process, connection and remote IP/hostname
https://github.com/imsnif/bandwhich

##============================
## LazyTail - Terminal-Based Log Viewer
https://github.com/raaymax/lazytail

##============================
## bookokrat - Terminal EPUB/PDF reader focused on speed, smooth navigation, and Vim-style workflows.
https://github.com/bugzmanov/bookokrat

##============================
## vmsan - 🔥 Firecracker microVM sandbox toolkit
https://github.com/angelorc/vmsan

##============================
## Mermaid Live Editor - Edit, preview and share mermaid charts/diagrams
https://github.com/mermaid-js/mermaid-live-editor

##============================
## Gemini online
https://aistudio.google.com/prompts/new_chat?model=gemini-3.1-pro-preview

##============================
## Quadlet is an opinionated tool for easily running podman system containers under systemd in an optimal way.
https://github.com/containers/quadlet

cat ~/.config/containers/systemd/ollama.container
[Unit]
Description=Ollama server

[Container]
Image=docker.io/ollama/ollama:0.17.5
PublishPort=11434:11434
ContainerName=ollama
AddDevice=nvidia.com/gpu=all
Volume=ollama:/root/.ollama
SecurityLabelDisable=true
Environment=OLLAMA_CONTEXT_LENGTH=128000
Environment=OLLAMA_ORIGINS="*"
Environment=OLLAMA_API_KEY=b1a3aaf5c29c47f982954592669d9e85.yDE6g8EEITGww8u4FLg8Fb3j
AutoUpdate=registry

[Install]
WantedBy=multi-user.target



##============================
## Vite  -  Frontend Tooling
https://github.com/vitejs/vite

##============================
## pycoclaw  -  OpenClaw-class agents on ESP32
https://pycoclaw.com/

##============================
## Tiiny Pocket Lab: The First Pocket-Size AI Supercomputer (tiiny.ai)
https://tiiny.ai/

##============================
## piclaw — A pi-based general-purpose agent. PiClaw is a Docker-based sandbox for running the Pi Coding Agent
https://github.com/rcarmo/piclaw

##============================
## list of TUI applications
https://github.com/rothgar/awesome-tuis

##============================
## envsh — secrets manager that can't read your secrets. Encrypted locally with your SSH keys.
https://envsh.dev/

##============================
## PostCLI — local-first toolkit that puts your entire Substack workflow in the terminal, in a TUI, or behind an AI agent.
https://github.com/postcli/substack

##============================
## OpenClaw — Personal AI Assistant
https://docs.openclaw.ai/start/getting-started
https://github.com/openclaw/openclaw
## Build Your Own OpenClaw
https://github.com/czl9707/build-your-own-openclaw
## Pickle-Bot — yet another lightweight version of Openclaw.
https://github.com/czl9707/pickle-bot

##============================
## claude-duet — Share your Claude Code session with a friend — real-time collaboration for AI pair programming.
https://github.com/EliranG/claude-duet

##============================
## grafana-cli — Agent-first CLI for Grafana and Grafana Cloud. Built for engineers working with AI coding agents like Codex and Claude Code.
https://machinedreams.blog/posts/the-cli-first-world/
https://github.com/matiasvillaverde/grafana-cli

##============================
## batctl — Battery charge threshold manager for Linux laptops
https://github.com/Ooooze/batctl

##============================
## APTUI is a terminal user interface (TUI) written in Go for managing APT packages. Browse, search, install, remove and upgrade packages — all without leaving the terminal.
https://github.com/mexirica/aptui

##============================
## yaad — AI-native memory, recall and reminder on the terminal — locally with Ollama.
## Save anything from your terminal — commands, notes, URLs, facts, reminders — and recall it later with natural language. Everything runs locally. No cloud, no accounts.
https://github.com/KunalSin9h/yaad

##============================
## Devopsiphai — A Claude Code skill that audits the operational health of a project in production.
https://github.com/sanhajio/devopsiphai

##============================
## cook — Workflow loops for Claude Code, Codex, and OpenCode.
https://rjcorwin.github.io/cook/

##============================
## greenboost: transparently extend GPU VRAM using system RAM/NVMe
https://gitlab.com/IsolatedOctopi/nvidia_greenboost

##============================
## claude-plugins-official: Connect a Telegram bot to your Claude Code with an MCP server.
https://github.com/anthropics/claude-plugins-official/blob/main/external_plugins/telegram/README.md

##============================
## sonars: hows everything listening on localhost, with Docker container names, Compose projects, resource usage, and clickable URLs. You can kill processes, tail logs, shell into containers, and more — all by port number.
https://github.com/RasKrebs/sonar

##============================
## code from Linux Application Development By Example - The Fundamental APIs by Arnold Robbins.
https://github.com/arnoldrobbins/LinuxByExample-2e

##============================
## Docker TUI — single-binary Docker terminal UI
## View & manage containers and volumes, Start/stop multiple containers at once, container groups as reusable snippets, Fuzzy search
https://github.com/Bhavesh164/docker-tui

##============================
## termaid — Render Mermaid diagrams in your terminal or Python app.
https://github.com/fasouto/termaid

##============================
## Nibble is a CLI tool for local network scanning that focuses on speed and ease of use.
## Select a network interface, and Nibble scans your local subnet. Lists hosts, hardware manufacturer, open ports and their services.
https://github.com/backendsystems/nibble

##============================
## zellij - Terminal Multiplexer. Floating Panes + Command Panes + Scrollback Editing
https://zellij.dev/about/
https://github.com/zellij-org/zellij

##============================
## darya is a lightweight disk usage tool built for the terminal.
https://github.com/mrkatebzadeh/darya

##============================
## Simutil - A terminal UI for launching Android Emulators / iOS Simulators
## Launch, connect, manage your devices and more — all from the terminal
https://github.com/dungngminh/simutil

##============================
## gh-dash - TUI for GitHub that does not break your flow.
https://github.com/dlvhdr/gh-dash

##============================
## Buddy (short for Block-based Unicode Direct-color Display Yield) is a live terminal video player that renders in true 24-bit color.
https://github.com/JVSCHANDRADITHYA/buddy

##============================
## PX7 Terminal Radio is a lightweight, feature-rich command-line internet radio player
https://github.com/px7nn/px7-radio

##============================
## tennis is a small CLI for printing stylish CSV tables in your terminal.
https://github.com/gurgeous/tennis

##============================
## GlazePKG (gpk) - See every package on your system — one gorgeous terminal dashboard.
https://github.com/neur0map/glazepkg

##============================
## Panther - A self-hosted AI agent daemon that runs on your machine and talks back through the apps you already use.
https://github.com/PantherApex/Panther

##============================
## Nusgmon - Network Usage Monitor. Lightweight Python CLI (command-line interface) network usage monitor for Linux. Designed to run as a systemd service.
https://github.com/LUCKYS1NGHH/nusgmon

##============================
## octoally AI Coding Session Orchestration DashboardThe dashboard for Claude Code & OpenAI Codex. Launch, monitor, and manage AI coding sessions with RuFlo multi-agent orchestration — all from one place.
https://github.com/ai-genius-automations/octoally
## Install:
curl -fsSL https://raw.githubusercontent.com/ai-genius-automations/hivecommand/main/scripts/install.sh | bash


##============================
## Helios: Real Real-Time Long Video Generation Model
https://github.com/PKU-YuanGroup/Helios
https://huggingface.co/BestWishYsh/Helios-Distilled
## Journal article
https://arxiv.org/abs/2603.04379

## Get the code
git clone https://github.com/PKU-YuanGroup/Helios.git
## Download the model. HUGE 139GB
hf download BestWishYsh/Helios-Distilled





##============================
## Heltec_htit-wb32laf
https://heltec.org/project/wifi-lora-32-v3/

##============================
## Nvidia Nemotron model
https://huggingface.co/bartowski/nvidia_Nemotron-Cascade-2-30B-A3B-GGUF/tree/main


##============================
## Fyn: An uv fork with new features, bug fixes, stripped telemetry (github.com/duriantaco)
https://github.com/duriantaco/fyn

##============================
## Pochi is an AI agent designed for software development.
## It operates within your IDE, using a toolkit of commands to write and refactor code autonomously across your entire project.

##============================
## rewrite of GNU ls with lots of added features like colors, icons, tree-view, more formatting options
https://github.com/lsd-rs/lsd

##============================
## Localias - Local reverse proxy — stable .localhost URLs for development.  Use http://myapp.localhost:7777 instead of http://localhost:4231.
https://github.com/thirukguru/localias

##============================
## lazycut - Terminal-based video trimming tool. Mark in/out points and export trimmed clips with aspect ratio control.
https://github.com/ozemin/lazycut

##============================
## ghgrab - "grab anything you want" - simple, pretty terminal tool that lets you search and download files from GitHub without leaving your CLI.
https://github.com/abhixdd/ghgrab

##============================
## Rclone is a command-line program to manage files on cloud storage.
https://rclone.org/

##============================
## snakeware is a free Linux distro with a Python userspace inspired by the Commodore 64. You are booted directly into a Python interpreter, which you can use to do whatever you want with your computer.
https://github.com/joshiemoore/snakeware

##==========================================
## Xonsh is a Python-powered shell. Full-featured, cross-platform and AI-friendly. The language is a superset of Python 3 with seamless integration of shell functionality and commands.
https://github.com/xonsh/xonsh

##============================
## Velxio: Arduino & Embedded Board Emulator. A fully local, open-source multi-board emulator. Write Arduino C++ or Python, compile it, and simulate it with real CPU emulation and 48+ interactive electronic components — all running in your browser.
## 19 boards · 5 CPU architectures: AVR8 (ATmega / ATtiny), ARM Cortex-M0+ (RP2040), RISC-V RV32IMC/EC (ESP32-C3 / CH32V003), Xtensa LX6/LX7 (ESP32 / ESP32-S3 via QEMU), and ARM Cortex-A53 (Raspberry Pi 3 Linux via QEMU).
https://github.com/davidmonterocrespo24/velxio

##============================
## Nixbook OS - A set-and-forget modern operating system designed for simplicity, speed, and peace of mind.
## The goal is to create a "chromebook like" unbreakable computer to give to basic users who know nothing about Linux do not need to ever worry about updates / upgrades.
https://github.com/mkellyxp/nixbook

##============================
## A curated list of delightful Bash scripts and resources.
https://github.com/awesome-lists/awesome-bash

##============================
## bashoneliners
https://www.bashoneliners.com/oneliners/newest/


##============================
## Claude Code source had been exposed
https://github.com/instructkr/claw-code

##============================
## The first commercially viable model with 1-bit weights.
https://prismml.com/
https://huggingface.co/prism-ml/Bonsai-8B-gguf
https://huggingface.co/collections/prism-ml/bonsai

##============================
## Start Codex stronger, then let OMX add better prompts, workflows, and runtime help when the work grows.
https://github.com/Yeachan-Heo/oh-my-codex

##============================
## Ink provides the same component-based UI building experience that React offers in the browser, but for command-line apps.
https://github.com/vadimdemedes/ink



##============================
## stream-exectoolr, tool replacing xargs (ie, running a bash command for multiple inputs)
https://github.com/davidporter-id-au/stream-exec

##============================
## Learn Claude Code by doing, not reading.
https://claude.nagdy.me/

##============================
## Jami is a free/libre, end-to-end encrypted, and private communication software.
https://jami.net/

##============================
## Ansizalizer -  versatile terminal UI application for converting images to ANSI art.
https://github.com/Zebbeni/ansizalizer

##============================
## Sheets - Spreadsheets in your terminal.
https://github.com/maaslalani/sheets

##============================
## NetWatch - Real-time network diagnostics in your terminal.
https://github.com/matthart1983/netwatch

##============================
## gwt - git worktree manager for zsh.
https://github.com/davidv1213/gwt

##============================
## store - manages symlinks for your dotfiles without requiring mirrored directory structures. Each "store" is a directory in your repository that gets symlinked to a target location on your filesystem.
https://github.com/cushycush/store

##============================
## markdown-to-book - CLI tool that converts Markdown files into print-ready books for Amazon KDP.
https://github.com/vpuna/markdown-to-book

##============================
## Advanced Search for YouTube. Improve your search results with advanced search prefixes.
https://playlists.at/youtube/search/

##============================
## GuppyLM - A ~9M parameter LLM that talks like a small fish.
## This project exists to show that training your own language model is not magic. No PhD required. No massive GPU cluster. One Colab notebook, 5 minutes, and you have a working LLM that you built from scratch
https://github.com/arman-bd/guppylm

##============================
## Locker - Open-source file storage platform. A self-hostable alternative to Dropbox and Google Drive.
https://github.com/zmeyer44/Locker

##============================
## Hippo - Memory storage for agents in SQL
## Storage: SQLite backbone + markdown/YAML mirrors. Git-trackable and human-readable.
https://github.com/kitfunso/hippo-memory


# Check Hippo context

$ hippo context --auto --budget 1500

node:internal/errors:496
    ErrorCaptureStackTrace(err);
    ^

Error [ERR_UNKNOWN_BUILTIN_MODULE]: No such built-in module: node:sqlite
    at new NodeError (node:internal/errors:405:5)
    at Module._load (node:internal/modules/cjs/loader:968:13)
    at Module.require (node:internal/modules/cjs/loader:1225:19)
    at require (node:internal/modules/helpers:177:18)
    at file:///usr/local/lib/node_modules/hippo-memory/dist/db.js:5:26
    at ModuleJob.run (node:internal/modules/esm/module_job:195:25)
    at async ModuleLoader.import (node:internal/modules/esm/loader:336:24)
    at async loadESM (node:internal/process/esm_loader:34:7)
    at async handleMainPromise (node:internal/modules/run_main:106:12) {
  code: 'ERR_UNKNOWN_BUILTIN_MODULE'
}

Node.js v18.19.1


##============================
## MemPalace - The highest-scoring AI memory system ever benchmarked.
https://github.com/milla-jovovich/mempalace

##============================
## freestyle - Sandboxes for Coding Agents
https://docs.freestyle.sh/v2


##============================
## NOPE! CPU 100%
## Little Snitch - Every time an application on your computer opens a network connection, it does so quietly, without asking. Little Snitch for Linux makes that activity visible and gives you the option to do something about it.
https://obdev.at/products/littlesnitch-linux/index.html
## Tried it ran the computer ragged.

##============================
## autoresearch - give an AI agent a small but real LLM training setup and let it experiment autonomously overnight.
https://github.com/karpathy/autoresearch
https://www.youtube.com/watch?v=5-ekc3eXNvs

##============================
## Crush - coding cli Your tools, your code, and your workflows, wired into your LLM of choice.
https://github.com/charmbracelet/crush


##============================
## Artificial - spawn, manage, and coordinate AI agents as a team. Agents get personas, skills, communication channels, and a shared task board.
https://github.com/AndreBaltazar8/artificial

##============================
## Use your Claude subscription as an API. Your Claude Max/Pro subscription becomes a local API endpoint that any tool, SDK, or framework can use
https://github.com/askalf/dario

##============================
## tpm chip linux
https://debugging.works/blog/tpm-explained/

##============================
## recursive-mode -  for agentic engineeringA structured, file-backed workflow for coding agents. Give your agent audited phases, durable artifacts, and persistent memory — instead of losing everything in chat history.
https://recursive-mode.dev/installation

##============================
## FluidCAD - Write CAD models in JavaScript. See the result in real time.
https://github.com/Fluid-CAD/FluidCAD

##============================
## vLLM is a fast and easy-to-use library for LLM inference and serving.
## Originally developed in the Sky Computing Lab at UC Berkeley
https://github.com/vllm-project/vllm

##============================
## jCodeMunch indexes a codebase once and lets agents retrieve only the exact code they need: functions, classes, methods, constants, outlines, and tightly scoped context bundles, with byte-level precision
https://github.com/jgravelle/jcodemunch-mcp

##============================
## AutoProber is the hardware hacker's flying probe automation stack for giving your agent everything it needs to go from "there's a new target on the plate" to probing individual pins in a safe way.
https://github.com/gainsec/autoprober?tab=readme-ov-file

##============================
## AgentFM is a peer-to-peer network that turns everyday computers into a decentralized AI supercomputer.
https://github.com/Agent-FM/agentfm-core

##============================
## Open source tools that create, configure, and work with containers.
## Podman - Drop-in replace docker(alias docker=podman). (the POD MANager) is a tool for managing containers and images, volumes mounted into those containers, and pods made from groups of containers. Podman runs containers
https://github.com/containers/
https://github.com/containers/podman

##============================
## mcptube-vision transforms YouTube videos into a persistent, structured knowledge base using both transcripts and visual frame analysis.
https://github.com/0xchamin/mcptube

##============================
## Talos - modern OS for running Kubernetes: secure, immutable, and minimal.
https://github.com/siderolabs
## omni - SaaS-simple deployment of Kubernetes - on your own hardware.
https://github.com/siderolabs/omni

##============================
## Video wallpaper for Linux.
https://github.com/jeffshee/hidamari

##============================
## LitGPT - 20+ high-performance LLMs with recipes to pretrain, finetune, and deploy at scale.
https://github.com/Lightning-AI/litgpt

##============================
## Pythonic access to PubMed. - Fetch articles, mine metadata, and build citation tools—without touching Entrez. Citation networks, PDF lookup, MeSH term search—simplified.
https://metapub.org/

##============================
## A "polyfill" that standardizes AGENTS.md configuration and Agent Skills support for major AI agents.
https://agentfill.dev/


##============================
## kagent makes it easy to build, deploy and manage AI agents in Kubernetes.
https://github.com/kagent-dev/kagent

##============================
## K8s agentic
  Sources:
  - https://github.com/kagent-dev/kagent
  - https://arxiv.org/html/2509.02449v1
  - https://dzone.com/articles/gitops-agentic-operator-kubernetes-auto-remediation
  - https://sedai.io/blog/kubernetes-ai-agent-management-optimization
  - https://kubernetes.io/blog/2026/03/20/running-agents-on-kubernetes-with-agent-sandbox/
  - https://github.com/feiskyer/kube-agent

##============================
## k8sgpt is a tool for scanning your Kubernetes clusters, diagnosing, and triaging issues in simple English.
https://github.com/k8sgpt-ai/k8sgpt

##============================
## Image Generators are Generalist Vision Learners
https://vision-banana.github.io/

##============================
## DESIGN.md - format specification for describing a visual identity to coding agents. DESIGN.md gives agents a persistent, structured understanding of a design system.
https://github.com/google-labs-code/design.md

##============================
## Kasane - Kakoune handles editing. Kasane rebuilds the rendering pipeline — terminal or GPU — and opens the full UI to extension: splits, image display, workspace persistence, and beyond. Extend it yourself with sandboxed WASM plugins
https://github.com/Yus314/kasane

##============================
## kubewall is a Open-Source, Single-Binary Kubernetes Dashboard with Multi-Cluster Management & AI Integration.
https://github.com/kubewall/kubewall
wget https://github.com/kubewall/kubewall/releases/download/v0.0.18/kubewall_Linux_x86_64.tar.gz

##============================



##============================



##============================



##============================
https://devin.ai/
https://windsurf.com/
https://bhoite.com/sculptures/boron-lander/
https://github.com/mkellyxp/nixbook











##============================
