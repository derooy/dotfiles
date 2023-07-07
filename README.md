```bash
# create ssh directory if it does not exist
if [ ! -d "~/.ssh" ]; then
    echo "Creating ~/.ssh directory..."
    mkdir -p ~/.ssh
fi

# create a config file and set id_rsa as default, only if it's not already set
if ! grep -q "IdentityFile ~/.ssh/id_rsa" ~/.ssh/config 2>/dev/null; then
    echo "Setting id_rsa as default SSH key..."
    echo "IdentityFile ~/.ssh/id_rsa" >> ~/.ssh/config
fi

# set proper permissions for the config file
echo "Setting permissions for ~/.ssh/config..."
chmod 600 ~/.ssh/config

# download and install authorized keys
echo "Downloading and installing authorized keys..."
curl -L https://github.com/derooy.keys > ~/.ssh/authorized_keys
chmod 400 ~/.ssh/authorized_keys

# set permissions for id_rsa
if [ -f "~/.ssh/id_rsa" ]; then
    echo "Setting permissions for ~/.ssh/id_rsa..."
    chmod 600 ~/.ssh/id_rsa
fi

# Download .bash_aliases from the repository
echo "Downloading .bash_aliases from the repository..."
curl -L https://raw.githubusercontent.com/derooy/dotfiles/master/.bash_aliases -o ~/.bash_aliases

# Source .bash_aliases from .bashrc if it exists
echo "Sourcing .bash_aliases from .bashrc if it exists..."
echo "if [ -f ~/.bash_aliases ]; then source ~/.bash_aliases; fi" >> ~/.bashrc

echo "Done!"
```
