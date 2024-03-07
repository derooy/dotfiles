```bash
# Define color codes
green='\033[0;32m'
red='\033[0;31m'
no_color='\033[0m' # Reset color

# Define success and fail messages
success="${green}[success]${no_color}"
fail="${red}[fail]${no_color}"

# create ssh directory
if mkdir -p ~/.ssh; then
    echo -e "$success mkdir -p ~/.ssh"
else
    echo -e "$fail mkdir -p ~/.ssh"
fi

# Overwrite/create the entire ~/.ssh/config with both configurations
if cat > ~/.ssh/config <<EOF
Host vero
    HostName 192.168.1.10
    User osmc

IdentityFile ~/.ssh/id_rsa
EOF
then
    echo -e "$success Overwrote/created ~/.ssh/config with host and IdentityFile configuration"
else
    echo -e "$fail Unable to overwrite/create ~/.ssh/config"
fi

# Download and install authorized keys
if curl -L https://github.com/derooy.keys > ~/.ssh/authorized_keys; then
    echo -e "$success Download and install authorized keys"
else
    echo -e "$fail Download and install authorized keys"
fi

# Set Git global configuration directly without checks
git config --global user.email "4516159+derooy@users.noreply.github.com"
git config --global user.name "matt"

echo -e "$success Git user.email and user.name have been set."

# Download .bash_aliases from the repository
if curl -L https://raw.githubusercontent.com/derooy/dotfiles/master/.bash_aliases -o ~/.bash_aliases; then
    echo -e "$success Download .bash_aliases"
else
    echo -e "$fail Download .bash_aliases"
fi

# Source .bash_aliases from .bashrc if it exists
if echo "if [ -f ~/.bash_aliases ]; then source ~/.bash_aliases; fi" >> ~/.bashrc; then
    echo -e "$success Source .bash_aliases"
else
    echo -e "$fail Source .bash_aliases"
fi

# Set proper permissions for all necessary files at once
if chmod 600 ~/.ssh/config && chmod 400 ~/.ssh/authorized_keys && ([ ! -f ~/.ssh/id_rsa ] || chmod 600 ~/.ssh/id_rsa); then
    echo -e "$success permissions"
else
    echo -e "$fail permissions"
fi

echo "Done"

```
