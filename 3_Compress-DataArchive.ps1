Function Compress-Data {
    param(
        [string]$SourcePath = "C:\Temp\data.json",
        [string]$DestinationZip = "C:\Temp\data.zip"
    )
    Write-Host "[*] Compressing data file: $SourcePath"
    Start-Sleep -Seconds 1
    Add-Type -Assembly "System.IO.Compression.FileSystem"
    [IO.Compression.ZipFile]::CreateFromDirectory((Split-Path $SourcePath), $DestinationZip)
    Write-Host "[*] Compression complete: $DestinationZip"
}
Compress-Data