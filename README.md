# Aprende lenguajes de Scripting con proyectos
- Estos son una serie de proyectos diseñados para aprender Scripting utilizando Bash, PowerShell y JavaScript

##### 1. Creación de un directorio de respaldo
###### Bash_lang
Puedes lograr esto en Bash o Zsh utilizando comandos y herramientas disponibles en sistemas Unix. Aquí tienes un ejemplo de cómo podrías crear un script para respaldar un directorio y comprimir los archivos en un archivo tar.gz:

---
```bash
#!/bin/bash

Directorio a respaldar y nombre del archivo de respaldo
source_directory="/ruta/al/directorio"
backup_filename="respaldo_$(date +'%Y%m%d%H%M%S').tar.gz"

Crear el archivo de respaldo en el directorio actual
tar -czvf "$backup_filename" "$source_directory"

echo "Respaldo completado: $backup_filename"

```

---
Asegúrate de reemplazar `/ruta/al/directorio` con la ruta completa del directorio que deseas respaldar. Luego, guarda este script en un archivo, por ejemplo, `backup_script.sh`. Luego, desde la terminal, puedes darle permisos de ejecución al script con el comando `chmod +x backup_script.sh`. Después de otorgar los permisos, puedes ejecutar el script con `./backup_script.sh`.

El script utiliza el comando `tar` para empaquetar (`-c`) y comprimir (`-z`) los archivos y directorios especificados en un archivo tar.gz. El flag `-v` habilita la salida detallada para mostrar el progreso del proceso.

Si estás utilizando Zsh en lugar de Bash, el script debe funcionar igualmente, ya que Zsh es compatible con muchos de los comandos y características de Bash. Solo asegúrate de que la ruta del directorio y el nombre del archivo de respaldo sean correctos.

---
Explicación exautiva
1. `#!/bin/bash`: Esta línea es conocida como "shebang" y le indica al sistema operativo que debe utilizar el intérprete de Bash para ejecutar el script.
    
2. `source_directory="/ruta/al/directorio"`: Aquí debes reemplazar `"/ruta/al/directorio"` con la ruta completa del directorio que deseas respaldar.
    
3. `backup_filename="respaldo_$(date +'%Y%m%d%H%M%S').tar.gz"`: Esta línea crea el nombre del archivo de respaldo. Utiliza la fecha y hora actual en el formato `AÑO MES DIA HORA MINUTO SEGUNDO` para asegurarse de que los nombres de archivo sean únicos.
    
4. `tar -czvf "$backup_filename" "$source_directory"`: Este comando crea un archivo de respaldo. Aquí está el desglose de las opciones utilizadas:
    
    - `-c`: Crea un nuevo archivo.
    - `-z`: Comprime el archivo utilizando gzip.
    - `-v`: Muestra información detallada mientras se realiza la operación.
    - `-f "$backup_filename"`: Especifica el nombre del archivo de respaldo.
    - `"$source_directory"`: Indica qué directorio deseas respaldar.
5. `echo "Respaldo completado: $backup_filename"`: Finalmente, este comando muestra un mensaje en la terminal para indicar que el respaldo se ha completado y muestra el nombre del archivo de respaldo creado.
    
Una vez que hayas personalizado la ruta del directorio que deseas respaldar, puedes guardar este código en un archivo con extensión `.sh`, otorgarle permisos de ejecución y luego ejecutarlo para crear el respaldo del directorio especificado y comprimirlo en un archivo tar.gz.

- Task
 - Escribe un script que cree una copia de respaldo de un directorio especificado.
 - Puedes añadir la funcionalidad de comprimir los archivos en un archivo tar.gz.
