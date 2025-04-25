# Atualizar o ambiente
sudo apt update
sudo apt upgrade -y

# Instalar o docker
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker

# Instalar SSH Server
sudo apt install -y openssh-server

# Instalar OhMyZSH
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#sh -c "$(curl -fsSL https://gist.githubusercontent.com/rodoctor/e98d02777765093b43d9abcd3211c6ad/raw/49232f8b127858692e035ff7c2b603011b6107e2/theme-zsh.sh)"

# Desativar suspensao de energia
#sh -c "$(curl -fsSL https://gist.githubusercontent.com/rodoctor/e98d02777765093b43d9abcd3211c6ad/raw/4d4759b63aab2c36fd69559a91d915a75965bda8/theme-zsh.sh)"
