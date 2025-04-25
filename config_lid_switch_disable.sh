#!/bin/bash

FILE="/etc/systemd/logind.conf"

# Substitui ou descomenta a linha HandleLidSwitch, garantindo que tenha o valor "ignore"
sudo sed -i '/^#*HandleLidSwitch=.*/c\HandleLidSwitch=ignore' "$FILE"

# Substitui ou descomenta a linha HandleLidSwitchDocked, garantindo que tenha o valor "ignore"
sudo sed -i '/^#*HandleLidSwitchDocked=.*/c\HandleLidSwitchDocked=ignore' "$FILE"

# Reinicia o serviço para aplicar as alterações
sudo systemctl restart systemd-logind

echo "Suspensão ao fechar a tampa desativada!"