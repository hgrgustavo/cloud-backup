#!/bin/bash

# Diretórios
SOURCE="/mnt/dispositivo"
BACKUP="/tmp/backup"
ENCRYPTED="/tmp/encrypted"
CHECKSUM_FILE="/tmp/checksums.txt"
PASSPHRASE="sua_senha_segura"

# Preparar diretórios
mkdir -p "$BACKUP" "$ENCRYPTED"

# Sincronizar conteúdo local
rsync -av --delete "$SOURCE/" "$BACKUP/"

# Gerar checksums
find "$BACKUP" -type f -exec sha256sum {} \; >"$CHECKSUM_FILE"

# Criptografar arquivos
for file in "$BACKUP"/*; do
  gpg --yes --batch -c --passphrase "$PASSPHRASE" "$file"
  mv "$file.gpg" "$ENCRYPTED/"
done

# Enviar para Google Drive via rclone
rclone sync "$ENCRYPTED" remote:BackupDrive

# Limpeza opcional
rm -rf "$BACKUP" "$ENCRYPTED"
