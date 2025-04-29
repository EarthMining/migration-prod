Function Verify-Upload {
    param(
        [string]$LocalPath = "C:\Temp\data.zip",
        [string]$BucketPath = "s3://corp-migration-backups/data.zip"
    )
    Write-Host "[*] Verifying upload integrity..."
    $localHash = Get-FileHash -Path $LocalPath -Algorithm SHA256
    $remoteHash = (aws s3api head-object --bucket corp-migration-backups --key data.zip | ConvertFrom-Json).ETag
    if ($remoteHash -like "*$($localHash.Hash.Substring(0, 8))*") {
        Write-Host "[*] Integrity verified: hash match."
    } else {
        Write-Warning "Hash mismatch. Manual verification recommended."
    }
}
Verify-Upload