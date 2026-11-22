# Calcula la huella SHA-256 de un ID de licencia, lista para pegar en revocadas.txt
# Uso:  powershell -ExecutionPolicy Bypass -File calcular_hash.ps1 -Id E8B7-A0D6-D2EE-700E
param([Parameter(Mandatory = $true)][string]$Id)
$clean = $Id.Trim().ToUpper()
$bytes = [System.Text.Encoding]::UTF8.GetBytes($clean)
$hash = [System.Security.Cryptography.SHA256]::Create().ComputeHash($bytes)
$hex = ([System.BitConverter]::ToString($hash)).Replace("-", "").ToLower()
Write-Output $hex
