# zsh aliases
alias zdit="vim ~/.zshrc"
alias zs="source ~/.zshrc"
alias bdit="vim ~/.bashrc"
alias bs="source ~/.bashrc"

# useful aliases
alias up='sudo apt upgrade && sudo apt update && sudo apt dist-upgrade && sudo apt full-upgrade'
alias clean='sudo apt autoremove --purge && sudo apt autoclean && sudo apt autopurge && sudo apt clean && sudo apt purge && rm -rf ~/.cache'
alias py='python3'
alias pip='pip3'
alias tor='cd /home/gabriellopes/.exec/tor-browser_en-US/ && ./start-tor-browser.desktop && cd'
alias deno='/home/gabriellopes/.deno/bin/deno'
alias benchmakr='cd /home/gabriellopes/.exec/Geekbench-5.3.1-Linux/ && ./geekbench_x86_64 && cd'

# nvm settings
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
