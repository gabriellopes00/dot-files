export ZSH="/home/gabriellopes/.oh-my-zsh"
ZSH_THEME="robbyrussell"
# ZSH_THEME="spaceship"

plugins=(git docker docker-compose heroku sudo themes dotenv)

source $ZSH/oh-my-zsh.sh

# zsh aliases
alias zdit="vim ~/.zshrc"
alias zs="source ~/.zshrc"
alias bdit="vim ~/.bashrc"
alias bs="source ~/.bashrc"

# custom aliases
alias up='sudo apt upgrade && sudo apt update && sudo apt dist-upgrade && sudo apt full-upgrade'
alias clean='sudo apt autoremove --purge && sudo apt autoclean && sudo apt autopurge && sudo apt clean && sudo apt purge && rm -rf ~/.cache'
alias deno='/home/gabriellopes/.deno/bin/deno'
alias py='python3'
alias pip='pip3'
alias tor='cd /home/gabriellopes/.exec/tor-browser_en-US/ && ./start-tor-browser.desktop && cd'
alias benchmakr='cd /home/gabriellopes/.exec/Geekbench-5.3.1-Linux/ && ./geekbench_x86_64 && cd'

# zinit plugins
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma/fast-syntax-highlighting
 
# spaceship command line style
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node          # Current Node version
  docker        # Current docker version
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
 
SPACESHIP_USER_SHOW="always" # Shows System user name before directory name 
SPACESHIP_PROMPT_ADD_NEWLINE=false
# SPACESHIP_PROMPT_SEPARATE_LINE=false # Make the prompt span across two lines
# SPACESHIP_DIR_TRUNC=1 # Shows only the last directory folder name 
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

# nvm settings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
