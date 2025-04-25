# Atualizar o ambiente
sudo apt update
sudo apt upgrade -y

# Instalar o docker
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker $USER

# Instalar SSH Server
sudo apt install -y openssh-server

# Desativar suspensao de energia
read -p "Deseja desativar suspensão de energia ao fechar a tampa? (s/N): " opcao
opcao=$(echo "$opcao" | tr '[:upper:]' '[:lower:]')

if [ "$opcao" = "s" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/rodoctor/preparacao-ambiente-linux/refs/heads/main/config_lid_switch_disable.sh)"
elif [ "$opcao" = "n" ] || [ -z "$opcao" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/rodoctor/preparacao-ambiente-linux/refs/heads/main/config_lid_switch_enable.sh)"
else
  echo "Opção inválida: $opcao"
fi

# Instalar OhMyZSH
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/rodoctor/preparacao-ambiente-linux/refs/heads/main/theme_zsh.sh)"
zsh