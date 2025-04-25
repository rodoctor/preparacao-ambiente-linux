#!/bin/bash

FILE="/etc/systemd/logind.conf"

# Garante que as linhas existam e com o valor correto
sudo sed -i 's/^#\?\s*HandleLidSwitch\s*=.*/HandleLidSwitch=ignore/' "$FILE"
sudo sed -i 's/^#\?\s*HandleLidSwitchDocked\s*=.*/HandleLidSwitchDocked=ignore/' "$FILE"

# Reinicia o serviço pra aplicar a nova configuração
sudo systemctl restart systemd-logind

echo "Suspensão ao fechar a tampa desativada!"