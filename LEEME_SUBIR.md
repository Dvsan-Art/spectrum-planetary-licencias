# Lista de revocadas - Spectrum Planetary

Este repositorio solo contiene la lista pública de licencias revocadas.
El plugin lee el archivo revocadas.txt desde:

https://raw.githubusercontent.com/Dvsan-Art/spectrum-planetary-licencias/main/revocadas.txt

## Pasos para publicarlo (una sola vez)

1. Entra a GitHub y crea un repositorio nuevo llamado `spectrum-planetary-licencias`.
2. Marcalo como **Public** (debe ser público para que el plugin lo descargue).
3. Pulsa "Add file" > "Upload files" y sube estos tres archivos:
   - revocadas.txt
   - calcular_hash.ps1
   - LEEME_SUBIR.md
4. Pulsa "Commit changes".

## Pasos para revocar una licencia

1. Abre PowerShell en la carpeta donde esta calcular_hash.ps1.
2. Ejecuta (cambia el ID por el del cliente):
   powershell -ExecutionPolicy Bypass -File calcular_hash.ps1 -Id XXXX-XXXX-XXXX-XXXX
3. Copia la línea de 64 caracteres que aparece.
4. En GitHub abre revocadas.txt, pulsa el lapiz (Edit), pega la huella en una linea nueva y pulsa "Commit changes".

El cambio se aplica la proxima vez que el cliente abra el plugin con internet.

## Importante
- Si cambias el nombre de usuario o del repositorio, cambia tambien la direccion en License.cpp (kRevocationUrl).
- No borres las lineas que empiezan con #. Son comentarios y el plugin los ignora.
- Cada linea debe tener exactamente 64 caracteres hexadecimales (la huella que genera el script).
