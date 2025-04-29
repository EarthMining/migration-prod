Function Cleanup-TempFiles {
    Write-Host "[*] Cleaning up local temp files..."
    Remove-Item -Path "C:\Temp\export.*","C:\Temp\data.*" -Force -ErrorAction SilentlyContinue
    Write-Host "[*] Cleanup complete."
}
Cleanup-TempFiles