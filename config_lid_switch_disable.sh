#!/bin/bash

FILE="/etc/systemd/logind.conf"

# Substituir ou descomentar HandleLidSwitch=ignore
sudo sed -i '/^#\?HandleLidSwitch.*/c\HandleLidSwitch=ignore' "$FILE"

# Substituir ou descomentar HandleLidSwitchDocked=ignore
sudo sed -i '/^#\?HandleLidSwitchDocked.*/c\HandleLidSwitchDocked=ignore' "$FILE"

# Reiniciar o serviço para aplicar a alteração
sudo systemctl restart systemd-logind

echo "Suspensão ao fechar a tampa desativada!"