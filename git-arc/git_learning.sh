## ####################################
## #           git howto              #
## ####################################
## ## https://githowto.com
##-------------------------------------
## Set up your name and e-mail. Run the following commands to let git know your name and e-mail address. If git is already installed, skip down to the end of the line.
$> git config --global user.name "Name"
$> git config --global user.email "your_email@whatever.com"
## Installation Options line endings to help windows vs linux line endings
$> git config --global core.autocrlf input
$> git config --global core.safecrlf true
## Check the git configuration 
$> git config --list
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
## Stage changes
$> git add hello.html
$> git status
$> git commit -m "Second Commit"    ## -m add a comment
## Create some more files and add changes in diff commits
$> echo 'Hello a world.' > a.html
$> echo 'Hello b world.' > b.html
$> echo 'Hello c world.' > c.html
## Commits can be made in seperate bunches do in a separate commit.
$> git add a.html
$> git add b.html
$> git commit -m "Changes for a and b"
## seperate commit for third file
$> git add c.html
$> git commit -m "Unrelated change to c"
## Make new changes
$> echo '<html>
  <body>
    <h1>Hello, World!</h1>
  </body>
</html>' > hello.html
## Add this change to the git staging.
$> git add hello.html
$> git status
## Make second set of new changes
$> echo '<html>
  <head>
  </head>
  <body>
    <h1>Hello, World!</h1>
  </body>
</html>' > hello.html
$> git status
## This will only commit the first change
$> git commit -m "Added standard HTML tags"
$> git status
## add second change and commit it as well
$> git add .
$> git status
$> git commit -m "Added standard HTML head tags"
$> git status
## Look at the logs of all the commits
$> git log
## compact layout
$> git log --pretty=oneline
## Other tags for the log --pretty=oneline --max-count=2, --since='5 minutes ago', --until='5 minutes ago', --author=<your name>, --all
## Easy read reverse order with short dates is the best format, %h is the abbreviated hash of the commit, %d commit decorations (e.g. branch heads or tags), %ad is the commit date, %s is the comment, %an is the name of the author, --graph ASCII graph layout
$> git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short
## Check older versions of files using hash from above command
$> git checkout 53839aa
$> cat hello.html
## Can make new commit branch from changes to this file
$> git checkout -b new_branch_name
## Go back to master branch
$> git checkout master
$> cat hello.html
## Tagging commits so you do not have to look up hash. Current master we will call version 1, v1. Tag it
$> git tag version1
## "v1^" Parent of version1, or try using "version1~1" first version prior to version1. In this case the same file
$> git checkout version1
$> cat hello.html
## Tage the previous version as version1-beta
$> git tag version1-beta
## Go back to master branch
$> git checkout master
$> cat hello.html
## list tags
$> git tag
$> git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short master --all
#### Reverting changes
### Change before add
$> git checkout master
$> cat hello.html
## Change hello.html
$> echo '<html>
  <head>
  </head>
  <body>
    <h1>Hello, World!</h1>
    <!-- This is a bad comment.  We want to revert it. -->
  </body>
</html>' > hello.html
$> git status
## Get rid of unadded unstaged changes
$> git checkout hello.html
$> git status
### Change after add
## Change hello.html
$> echo '<html>
  <head>
  </head>
  <body>
    <h1>Hello, World!</h1>
    <!-- This is a bad comment.  We want to revert it. -->
  </body>
</html>' > hello.html
## Add file to stagging
$> git add hello.html
## Remove file from stagging
$> git reset HEAD hello.html
## Switch to commit version
$> git checkout hello.html
$> git status
### Cancelling commits
## Change hello.html
$> echo '<html>
  <head>
  </head>
  <body>
    <h1>Hello, World!</h1>
    <!-- This is a bad comment.  We want to revert it. -->
  </body>
</html>' > hello.html
## Commit
$> git add hello.html
$> git commit -m "Oops, we didn't want this commit"
## revert
$> git revert HEAD
    # Opens editor, if vim :wq
## Tag this version
$> git tag oops
## Reset master to v1
$> git reset --hard v1
## If you want to totally remove tagged branch. Removal of the oops tag
$> git tag -d oops
### Changing commits
$> echo '<!-- Author: Your_name -->
<html>
  <head>
  </head>
  <body>
    <h1>Hello, World!</h1>
  </body>
</html>' > hello.html
## Add to stage then commit
$> git add hello.html
$> git commit -m "Add an author comment"
## Add an email to the html author comment
$> echo '<!-- Author: Your_name (noone@none.net)-->
<html>
  <head>
  </head>
  <body>
    <h1>Hello, World!</h1>
  </body>
</html>' > hello.html
$> git add hello.html
## Amend the git commit comment
$> git commit --amend -m "Add an author/email comment"
$> git tag version2
### Using directories
## Move hello.html to new dir
$> mkdir lib
$> git mv hello.html lib
$> git status
## OR use normal mv then add
$> mkdir lib
$> mv hello.html lib
$> git add lib/hello.html
$> git rm hello.html
### Structure
## add a new file and directory
$> echo '<html>
  <body>
    <iframe src="lib/hello.html" width="200" height="200" />
  </body>
</html>' > index.html
## Add and commit
$> git add index.html
$> git commit -m "Added index.html."
### .git dir structure
## The first two letters sha1 hash of the object stored in git are the directory names.
$ ls -C .git/objects
#   09  24  28  45  59  6a  77  80  8c  97  af  c4  e7  info
#   11  27  43  56  69  6b  78  84  91  9c  b5  e4  fa  pack
$> tree
   # .
   # ├── branches
   # ├── COMMIT_EDITMSG
   # ├── COMMIT_EDITMSG~
   # ├── config
   # ├── description
   # ├── HEAD
   # ├── hooks
   # │   ├── applypatch-msg.sample
   # │   ├── commit-msg.sample
   # │   ├── post-update.sample
   # │   ├── pre-applypatch.sample
   # │   ├── pre-commit.sample
   # │   ├── prepare-commit-msg.sample
   # │   ├── pre-push.sample
   # │   ├── pre-rebase.sample
   # │   └── update.sample
   # ├── index
   # ├── info
   # │   └── exclude
   # ├── logs
   # │   ├── HEAD
   # │   └── refs
   # │       └── heads
   # │           └── master
   # ├── objects
   # │   ├── 0d
   # │   │   └── 576c485a252d7d544ea415cb4abcc68362bf4e
   # │   ├── 0e
   # │   │   └── 94c37112080a4335a934346adb4f935505319c
   # │   ├── 14
   # │   │   ├── 273bc976b5590d9705f09e6cb5ff9a092c5647
   # │   │   └── 83b0f97465b821308c91fbe04fc478ccac38de
   # │   ├── 15
   # │   │   └── ad1d9ece91450f9fa26a2cc3f7395bdfc7fad7
   # │   ├── 18
   # │   │   └── 249f33557c98423dbe60f8c47aa65567de0773
   # │   ├── 62
   # │   │   ├── 22fc2862777d19c163e904e6fbdd43f50df8f8
   # │   │   └── 8acabaebead1dd7d6c01fbde709da88dabca01
   # │   ├── info
   # │   └── pack
   # ├── ORIG_HEAD
   # └── refs
   #     ├── heads
   #     │   └── master
   #     └── tags
   #         ├── oops
   #         ├── v1
   #         ├── version1-beta
   #         └── version2
## Can put aliases in config for git, can use gitk to explore logs
$> echo "[alias]
  co = checkout
  ci = commit
  st = status
  br = branch
  hist = log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short
  type = cat-file -t
  dump = cat-file -p " >> /home/$USER/.gitconfig
## Can put aliases for git in .bashrc
$> echo "
alias gits='git status '
alias gith='git log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short '
alias gita='git add '
alias gitb='git branch '
alias gitc='git commit'
alias gitd='git diff'
alias gito='git checkout '
alias gitk='gitk --all&' " >> /home/$USER/.bashrc
## Display of the last commit info With SHA1 hash of a commit, as above...
$> git cat-file -t <hash>
$> git cat-file -p <hash>
### Create a branch
## Let us name our new branch "style".
$> git checkout -b style
$> git status
## Make css file
$> echo "h1 {
  color: red;
}
" > lib/style.css
$> git add lib/style.css
$> git commit -m "Added css stylesheet"
$> echo '
<!-- Author: Your_name (noone@none.net)-->
<html>
  <head>
    <link type="text/css" rel="stylesheet" media="all" href="style.css" />
  </head>
  <body>
    <h1>Hello, World!</h1>
  </body>
</html> ' > lib/hello.html
$> git add lib/hello.html
$> git commit -m "Hello uses style.css"
$> echo '<html>
  <head>
    <link type="text/css" rel="stylesheet" media="all" href="lib/style.css" />
  </head>
  <body>
    <iframe src="lib/hello.html" width="200" height="200" />
  </body>
</html>' > index.html
$> git add index.html
$> git commit -m "Updated index.html"
### Navigate between the repository branches, project has two branches:
$> git tag style ## this will be ambiguous due to branch name
## Switching to the Master branch To switch between branches simply use the git checkout command.
$> git checkout master
$> cat lib/hello.html
## Switch back to style branch
$> git checkout style
$> cat lib/hello.html
$> echo "This is the Hello World example from the git tutorial." > README
$> git checkout master
$> git add README
$> git commit -m "Added README"
## Show all branches --all
$> git hist --all
### Merging to a single branch
## Merging brings changes from two branches into one. Let us go back to the style branch and merge it with master.
$> git checkout style
$> git merge master
$> git hist --all
## Conflict
## https://githowto.com/resolving_conflicts
### Branches
## cd to working directory
$> cd ..
## clone hello repo
$> git clone hello cloned_hello
$> cd cloned_hello
$> ls
$> git hist --all
## SHow the orgin of the clone. cloned repository knows the default name of the remote repository.
##
$> git remote
## the “origin” of the remote repository is the original hello repo.
$> git remote show origin
## List remote branches
$> git branch -a
## cont...https://githowto.com/change_the_original_repository
## Change and commit README in master
$> cd ../hello/
$> echo 'Slight changes.' >> README
$> cat README
$> git add README
$> git status
$> git commit -m "Changed README in original repo"
## Change to second branch
$> cd ../cloned_hello
$> git fetch
$> git hist --all
$> $> cat README
## At the moment the repository contains all the commits from the original repo, however they aren’t integrated into the local branches of the cloned repository.
## Merge the branches
$> git merge origin/master
## Check the changes
$> cat README
## Pull is same as fetch then merge
$> git pull
## Is actually equivalent to the following two steps
$> git fetch
$> git merge origin/master
### Tracking branch
## Add a local branch tracking the remote branch.
$> git branch --track style origin/style
$> git branch -a
$> git hist --max-count=2
##














    
##=======================================
### Working with github

eakinc@VirtualMint19 ~/code $ git status
    On branch master
    No commits yet
    nothing to commit (create/copy files and use "git add" to track)
eakinc@VirtualMint19 ~/code $ cd commandline_compendium/
eakinc@VirtualMint19 ~/code/commandline_compendium $ git clone https://github.com/ErikAllanKincaid/LinuxCommands.git
    Cloning into 'LinuxCommands'...
    remote: Enumerating objects: 6, done.
    remote: Counting objects: 100% (6/6), done.
    remote: Compressing objects: 100% (4/4), done.
    remote: Total 6 (delta 0), reused 0 (delta 0), pack-reused 0
    Unpacking objects: 100% (6/6), done.
eakinc@VirtualMint19 ~/code/commandline_compendium $ git remote -v
eakinc@VirtualMint19 ~/code/commandline_compendium $ ls
    LinuxCommands/
eakinc@VirtualMint19 ~/code/commandline_compendium $ cd LinuxCommands/
eakinc@VirtualMint19 ~/code/commandline_compendium/LinuxCommands $ ls
    CommandLineInterfaceCompendiumOfOneLiners_categories_20190721.sh  README.md
eakinc@VirtualMint19 ~/code/commandline_compendium/LinuxCommands $ git remote add upstream https://github.com/ErikAllanKincaid/LinuxCommands.git
eakinc@VirtualMint19 ~/code/commandline_compendium/LinuxCommands $ git remote -v
    origin  https://github.com/ErikAllanKincaid/LinuxCommands.git (fetch)
    origin  https://github.com/ErikAllanKincaid/LinuxCommands.git (push)
    upstream  https://github.com/ErikAllanKincaid/LinuxCommands.git (fetch)
    upstream  https://github.com/ErikAllanKincaid/LinuxCommands.git (push)
    
##=======================================
### Working with github Standard
## Make sure the .gitconfig profile using is in the same name as the repository
## Set up your name and e-mail same as gitgub.
$> git config --global user.name "Name"
$> git config --global user.email "your_email@whatever.com"
## Check the git configuration in ~/.gitconfig
$> git config --list
## Use ssh to clone
## Add ssh rsa key to github profile
$> firefox https://github.com/settings/keys
## Authenticate github 
## man ssh.  -T Disable pseudo-terminal allocation.
$> ssh -T git@github.com
$> y ## yes to connect save the server to authorized and be authenticated
## Clone, get ssh clone URL, not the https, in this case, git@github.com:Standard-Cognition/infrastructure.git
$> git clone git@github.com:Standard-Cognition/infrastructure.git
## to update a already existant repo
$> git pull

##=======================================

## To save 'stash' unstaged changes the move to another brach and ass thm in
git stash save --keep-index --include-untracked
## stash the changes, pull latest, pop the changes into latest master
git stash
git pull
git stash pop
## 
git remote -v
git remote show origin
git show refs/remotes/origin/allister/general_git_repo_hotfix
## 
git log --pretty=oneline
## 
git tag -a v1.2 9fceb02
git tag
git show v1.2
## Sharing Tags
git push origin v1.5
## Deleting Tags
git tag -d v1.4-lw


git status
git checkout -- *

##============================================
## Install lfs
sudo apt-get install git-lfs
## OR
https://git-lfs.github.com/
wget https://github.com/git-lfs/git-lfs/releases/download/v2.8.0/git-lfs-linux-amd64-v2.8.0.tar.gz
tar xvzf git-lfs-linux-amd64-v2.8.0.tar.gz
sudo mv sudo mv git-lfs /usr/local/bin/

## Initiallize for each repo which uses large file tracking
cd General
git lfs install
    Updated git hooks.
    Git LFS initialized.

## Download and install the Git command line extension. Once downloaded and installed, set up Git LFS and its respective hooks by running:
## You will need to run this in your repository directory, once per repository.
git lfs install
## Make sure .gitattributes is tracked
git add .gitattributes
##--------------------------------------------
## Ansible
## Getting git large file storage git-lfs
  gpg_key_url="https://packagecloud.io/github/git-lfs/gpgkey"
  apt_config_url="https://packagecloud.io/install/repositories/github/git-lfs/config_file.list?os=${os}&dist=${dist}&source=script"
## Ansible
infrastructure/ansible/git_lfs.yml
infrastructure/ansible/roles/git_lfs/tasks/maim.yml
infrastructure/ansible/roles/git_lfs/
infrastructure/ansible/roles/git_lfs/files/script_deb.sh

cd  /home/erik/code/infrastructure/ansible/roles/git_lfs/files/
os=Ubuntu dist=bionic ./script.sh
## Initiallize for each repo which uses large file tracking
ssh models@
cd General
git lfs install
    Updated git hooks.
    Git LFS initialized.
##============================================


## to discard changes in working directory
git restore <file>...
## To stage all changed/new files
git add .
## to unstage added file
git restore --staged <file>...
## to unstage all added files
git restore --staged .
## If you would like to configure your default text editor, you can do so with the git config command, and set nano as the default editor, for example:
git config --global core.editor "nano"
## Or vim:
git config --global core.editor "vim"
## push a branch to github
git push --set-upstream origin <YOUR NEW BRANCH NAME>
## Verify that our remote pointer to the upstream repository was properly added by using the git remote -v command again from the repository directory:
git remote -v

##============================================

## To remove files from stage use reset HEAD where HEAD is the last commit of the current branch. This will unstage the file but maintain the modification
git reset HEAD <file>
## To revert the file back to the state it was in before the changes we can use:
git checkout -- <file>
## To remove a file from disk and repo use git rm and to remove a directory use the -r flag:
git rm '*.txt'
git rm -r <dirname>
## If we want to remove a file from the repository but keep it on disk, say we forgot to add it to our .gitignore file then use --cache:
git rm <filename> --cache


##============================================

man git commit -a -m "YOUR MESSAGE" ## -a, --all automatically stage files that have been modified and deleted, but new files you have not told git about are not affected. -m <msg>, --message=<msg> commit message.


Fancy way of saying "all the commits on the current branch that you haven't pushed yet".
`git merge-base origin/master HEAD`..HEAD


##============================================

### git bisect
## history dump of what we did
## checkout branch
git checkout 9bc112fc2158
git status
git status
git diff
## run pipeline, pipeline breaks, panic
source .profile && nix-shell --run "cli/sync_nodes.py --setup stcg.us.0004"
journalctl -u pipeline_video_live -u pipeline_scene_live -u pipeline_camd -f 
git status
git log
git diff 3e4b91fd45a8f6b3592f203e88ca46f1f6518df7^ 3e4b91fd45a8f6b3592f203e88ca46f1f6518df7
git log
git log v20.2.0
## Start bisect
git bisect start
## Set first bad point
git bisect bad HEAD
## Set first good point
git bisect good v20.2.0
## bisect will find a place between good and bad and we test it
git status
git log
## run pipeline, pipeline breaks, panic
source .profile && nix-shell --run "cli/sync_nodes.py --setup stcg.us.0004"
journalctl -u pipeline_video_live -u pipeline_scene_live -u pipeline_camd -f 
## set as bad
git bisect bad
git log
## run pipeline
source .profile && nix-shell --run "cli/sync_nodes.py --setup stcg.us.0004"
journalctl -u pipeline_video_live -u pipeline_scene_live -u pipeline_camd -f 
## set as good
git bisect good
## run pipeline
journalctl -u pipeline_video_live -u pipeline_scene_live -u pipeline_camd -f 
source .profile && nix-shell --run "cli/sync_nodes.py --setup stcg.us.0004"
journalctl -u pipeline_video_live -u pipeline_scene_live -u pipeline_camd -f 
## set as good
git bisect good
git diff HEAD^ HEAD
git status
journalctl -u pipeline_video_live -u pipeline_scene_live -u pipeline_camd -f 
## set as good
git bisect good
git diff HEAD^ HEAD
git status
## bisect finds the bad commit
git checkout 770222689f2fa3a57e89b33204fb3ef021a523c8
git log
git diff HEAD^ HEAD
git status
git log
BAD=770222689f2fa3a57e89b33204fb3ef021a523c8
echo $BAD
git checkout 9bc112fc2158
git log
## revert the bad commit
git revert $BAD
git log
## run pipeline
source .profile && nix-shell --run "cli/sync_nodes.py --setup stcg.us.0004"
git log
journalctl -u pipeline_video_live -u pipeline_scene_live -u pipeline_camd -f 
## stop the bisect
git bisect reset
history


##============================================
## Turn on the credential helper so that Git will save your password in memory for some time. By default, Git will cache your password for 15 minutes.

## Set git to use the credential memory cache
git config --global credential.helper cache
## Set the cache to timeout after 1 hour (setting is in seconds)
git config --global credential.helper 'cache --timeout=3600'
## Set the cache to timeout after 10 hours
git config --global credential.helper 'cache --timeout=36000'
##============================================
## Double check

##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================


##============================================





