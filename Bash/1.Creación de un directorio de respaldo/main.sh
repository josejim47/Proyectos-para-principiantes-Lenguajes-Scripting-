#!/bin/bash

# Directorio a respaldar y nombre del archivo de respaldo
source_directory="/home/kali/Videos/Breaking Bad/Breaking Bad - Temporada 1"
backup_filename="respaldo_$(date +'%Y%m%d%H%M%S').tar.gz"

# Crear el archivo de respaldo en el directorio actual
tar -czvf "$backup_filename" "$source_directory"

echo "Respaldo completado: $backup_filename"
