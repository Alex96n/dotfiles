

# Custom update alias for Fedora with multithreaded dnf and flatpak updates
alias update='sudo dnf --setopt=max_parallel_downloads=10 upgrade --refresh -y && flatpak update -y'

# Example prompt customization
PS1='\[\e[0;32m\]\u@\h:\w\$ \[\e[m\]'

# Other useful aliases
alias ll='ls -lah --color=auto'
alias gs='git status'

# Load nvm (if installed)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
