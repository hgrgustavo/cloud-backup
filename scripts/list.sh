#!/bin/bash

source ${HOME}/Projects/cloud-backup/.env

files=(
  "SEJA VISTO.mp4"
  "Rodoturbo.wmv"
  "contar novo.mp4"
  "MULK EDER.mp4"
  "shineray_telao.mp4"
  "iub novo.mp4"
  "Assim Azul Pequeno.mp4"
  "kidelicius.mp4"
  "seu_cliente_viu.mp4"
  "chevrolet_revisaodeferias.mp4"
  "horizontal_avep.mp4"
  "bluefit_promoção.mp4"
  "cri_padrão.mp4"
)

counter=0

# Exemplo de uso: percorrer o array
for file in "${files[@]}"; do
  ((counter++))
  video=$(find "$VIDEOS_PATH" -type f -name "$file" 2>/dev/null)
  
  if [[ -n "$video" ]]; then
    birth=$(stat -c %x "$video")
    
    if [[ "$birth" != "-" ]]; then
      file_birthdate=$(date -d "$birth" +%d/%m/%Y)
      echo "$counter. $file → data: $file_birthdate"
    fi
  fi
done

#ls --sort=time "$MONTHLY_DIRECTORY_PATH" >"${MONTHLY_DIRECTORY_PATH}/files.log"
