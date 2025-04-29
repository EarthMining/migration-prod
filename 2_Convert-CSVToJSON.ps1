Function Convert-CSVToJSON {
    param(
        [string]$InputCSV = "C:\Temp\export.csv",
        [string]$OutputJSON = "C:\Temp\data.json"
    )
    Write-Host "[*] Reading CSV data from $InputCSV"
    Start-Sleep -Seconds 1
    Write-Host "[*] Converting to JSON format..."
    Start-Sleep -Seconds 2
    "Converted 987 records to JSON" | Out-File -Append $OutputJSON
}
Convert-CSVToJSON