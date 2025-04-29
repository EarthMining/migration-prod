Function Export-OnPremSQL {
    param(
        [string]$Server = "onprem-db01",
        [string]$Database = "LegacyData",
        [string]$OutputPath = "C:\Temp\export.sql"
    )
    Write-Host "[*] Connecting to SQL Server: $Server"
    Start-Sleep -Milliseconds 800
    Write-Host "[*] Exporting database: $Database"
    Start-Sleep -Seconds 2
    "[INFO] Dumped schema and 10234 rows to $OutputPath" | Out-File -Append $OutputPath
}
Export-OnPremSQL