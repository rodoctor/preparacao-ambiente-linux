#!/bin/bash

sudo sed -i 's/^HandleLidSwitch=/#HandleLidSwitch=/' /etc/systemd/logind.conf
sudo sed -i 's/^HandleLidSwitchDocked=/#HandleLidSwitchDocked=/' /etc/systemd/logind.conf

# Reinicia o serviço pra aplicar
sudo systemctl restart systemd-logind
echo "Suspensão reativada! As linhas foram comentadas."