echo "## RUNGING DEFAULT.SH ##"

yum update
yum install -y epel-release
yum update
yum install -y yum vim git curl wget zsh ccze

# install and conrigure oh-my-zsh for vagrant

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Nickael/oh-my-zsh.custom.theme/master/tools/install.sh)"

# install and conrigure oh-my-zsh for vagrant

su - vagrant -c 'printf "y\nvagrant\n" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
su - vagrant -c 'printf "y\nvagrant\n" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/Nickael/oh-my-zsh.custom.theme/master/tools/install.sh)"'

# set zsh as default terminal

chsh -s /bin/zsh vagrant
chsh -s /bin/zsh
