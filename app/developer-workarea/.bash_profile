
###############################################################################
# NOTE: OSX's default path is generated from /etc/paths
# Following 2 lines recommended/tested for OSX and Win10 workstations
source /etc/profile
export PATH=$PATH:$HOME/bin

# umask 0022

###############################################################################
# App Definitions
#alias python='winpty c:Python27/python.exe'
#alias python='winpty c:Users/awalla5075k/AppData/Local/Programs/Python/Python37/python.exe'
export VAGRANT_PREFER_SYSTEM_BIN=1

#####################################
# Repo workarea directories
#####################################
# current work area
alias cwa='cd ~/git-repos'
# development workarea
alias dwa='cd ~/DevWA-repos'
# VM Enhanced workarea
alias vmewa='cd ~/vme-repos'

############################################
# Following supports DevLead responsibility
############################################
## git checkout main master; git pull main master
alias gcpm="git checkout master; git pull main master"
## git checkout main develop; git pull main develop
alias gcpd="git checkout develop; git pull main develop"
#############################################

#####################################
# CM-System-Site repo working aliases
# (Assume local to Repo workarea directory)
#####################################
## Comcast Deploy Directory
alias cdd='cd CM-System-Site/deploy'
## Comcast bin Directory
alias cab='cd CM-System-Site/app/bin'
## Comcast site Directory
alias cas='cd CM-System-Site/app/site'
## My Deploy Directory
alias mdd='cd CM-Plan-Site/deploy'
## My bin Directory
alias mab='cd CM-Plan-Site/app/bin'
## My site Directory
alias mas='cd CM-Plan-Site/app/site'
## Production deploy Logon
alias pdl='ssh awalla5075k@emmutl-ch2-1p.sys.comcast.net'

############################################
# DevOps-git repo working aliases
# (Assume local to a Repo workarea directory
############################################
## DevOps-git home Directory
alias dogh='cd DevOps-git'
## DevWA Directory
alias dogd='cd DevOps-git/app/developer-workarea'
## DevWA Directory
alias dogvm='cd DevOps-git/app/vm-workarea'

###############################################################################
