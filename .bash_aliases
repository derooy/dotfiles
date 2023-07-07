# Directories navigation
# More explicit comments can be helpful to quickly understand the purpose of an alias
alias ..='cd ..'

# Search operations
# Grouping aliases by their purpose can make the script more readable
alias f='sudo find / -name'   # Find files with a specific name
alias ds='du -hs * | sort -h' # Display sorted disk usage for all files and directories
alias l='ls -lh'              # List files in human-readable format
alias la='ls -lAh'            # List all files including hidden ones in human-readable format
alias ls='ls --color=auto'    # Add color to ls output

# Git operations
alias gs='git status'        # Get the status of the current repository
alias gc='git commit -v -a'  # Commit all modified and deleted files
alias ga='git add .'         # Add all new and modified files to the staging area
alias gl='git pull'          # Fetch from and integrate with another repository or a local branch
alias gp='git push'          # Update remote refs along with associated objects

# Screen operations
alias sls="screen -ls"       # List screen sessions
alias sd="screen -dmS"       # Start a detached screen session with a session name
alias sr="screen -x"         # Connect to a screen session, allowing multiple connections
alias ss="screen -S"         # Create a screen session with a specific name
alias slsa='sudo ls -laR /var/run/screen/'  # List all screen sockets

# Apt package management
alias in='sudo apt-get install'            # Install a package
alias se='sudo apt-cache search'           # Search for a package
alias po='sudo apt-cache policy'           # Display installed and candidate versions for a package
alias upt='sudo apt-get update'            # Fetch the list of available updates
alias upg='sudo apt-get upgrade'           # Upgrade all the installed packages
alias ppal='grep ^ /etc/apt/sources.list /etc/apt/sources.list.d/*'  # List all apt repositories

# Add a Personal Package Archive (PPA) repository
function ppa() {
    sudo add-apt-repository ppa:"$@"
}

COMMIT_NAMES=("[1] Bugfix", "[2] Refactoring", "[3] Documentation", "[4] New Feature", "[5] Tests", "[6] Work In Progress", "[7] Cosmetic", "[8] Removal", "[9] Initial Commit", "[10] Metadata", "[11] Tooling", "[12] Performance", "[13] Version Tag", "[14] Deprecation", "[15] Internationalization")
EMOTES=(":bug:", ":recycle:", ":books:", ":sparkles:", ":rotating_light:", ":construction:", ":art:", ":wastebasket:", ":tada:", ":card_index:", ":wrench:", ":racehorse:", ":bookmark:", ":hankey:", ":globe_with_meridians:")

# Commit and push changes with specific tags
function gca() {
    git pull
    git add .
    printf '%s\n' "${COMMIT_NAMES[@]}" | column
    read -e -p "Emote [1-15]: " emote
    read -e -p "${COMMIT_NAMES[$((emote-1))]} msg: " msg
    git commit -a -m "${EMOTES[$((emote-1))]} $msg"
    git push
}

export EDITOR='vim'
