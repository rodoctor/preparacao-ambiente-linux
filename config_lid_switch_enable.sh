#!/bin/bash

# Verificar se o arquivo já contém as configurações necessárias
FILE="/etc/systemd/logind.conf"

if grep -q "^HandleLidSwitch=" "$FILE" && grep -q "^HandleLidSwitchDocked=" "$FILE"; then
  echo "As configurações já estão presentes no arquivo."
else
  # Se não, adicionamos as configurações no final do arquivo
  echo -e "\n#HandleLidSwitch=ignore\n#HandleLidSwitchDocked=ignore" | sudo tee -a "$FILE" > /dev/null
  echo "As configurações foram adicionadas ao arquivo $FILE."
fi

# Reiniciar o serviço para aplicar as alterações
sudo systemctl restart systemd-logind
echo "Configurações aplicadas. O serviço foi reiniciado."