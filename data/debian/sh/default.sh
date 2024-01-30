echo "## RUNGING DEFAULT.SH ##"

apt update
apt install -y \
            vim \
            git \
            curl \
            wget \
            zsh \
            ccze \
            make \
            cmake \
            gcc \
            gpp \
            g++

# install and conrigure oh-my-zsh for vagrant

sh -c "$(curl -fsSL https://raw.githubusercontent.com/nickael/ohmyzsh/master/tools/install.sh)"

# install and conrigure oh-my-zsh for vagrant

su - vagrant -c 'printf "y\nvagrant\n" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/nickael/ohmyzsh/master/tools/install.sh)"'

# set zsh as default terminal

chsh -s /bin/zsh vagrant
chsh -s /bin/zsh
