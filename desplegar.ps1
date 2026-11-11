$archivoOrigen = Join-Path $PSScriptRoot 'ORIGEN\INDEX.PHP'
$archivoDestino = Join-Path $PSScriptRoot 'PRUEBAS\INDEX.PHP'

&'C:\xampp\php\php.exe' -l $archivoOrigen

if ($LASTEXITCODE -ne 0){
    write-Host "hay un error de sintaxis.No se publico el cambio"
     exit 1
}
copy-Item $archivoOrigen $archivoDestino -Force -ErrorAction stop
Write-Host "version publicada en el ambiete de prueba."