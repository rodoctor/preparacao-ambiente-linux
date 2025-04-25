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
sh -c "$(curl -fsSL https://raw.githubusercontent.com/rodoctor/preparacao-ambiente-linux/refs/heads/main/theme_zsh.sh)"

# Desativar suspensao de energia
sh -c "$(curl -fsSL https://raw.githubusercontent.com/rodoctor/preparacao-ambiente-linux/refs/heads/main/config_lid_switch.sh)"
