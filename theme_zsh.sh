#!/bin/bash

# Caminho para o arquivo .zshrc
ZSHRC="$HOME/.zshrc"

# Verificar se o arquivo existe
if [ ! -f "$ZSHRC" ]; then
  echo "O arquivo $ZSHRC não existe. Criando o arquivo..."
  touch "$ZSHRC"
fi

# Alterar o tema no .zshrc
if grep -q "^ZSH_THEME=" "$ZSHRC"; then
  # Se a variável ZSH_THEME já existe, altere para "bira"
  sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="bira"/' "$ZSHRC"
  echo "Tema alterado para 'bira'."
else
  # Caso a variável não exista, adiciona ao final do arquivo
  echo 'ZSH_THEME="bira"' >> "$ZSHRC"
  echo "Tema 'bira' adicionado ao .zshrc."
fi

# Carregar as alterações sem reiniciar
source "$ZSHRC"
echo "Alterações aplicadas!"