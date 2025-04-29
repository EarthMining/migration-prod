Function Upload-ToS3 {
    param(
        [string]$ZipPath = "C:\Temp\data.zip",
        [string]$Bucket = "s3://corp-migration-backups",
        [string]$Region = "us-west-2"
    )
    Write-Host "[*] Uploading $ZipPath to $Bucket"
    Start-Sleep -Seconds 1
    aws s3 cp $ZipPath $Bucket --region $Region --acl private
    Write-Host "[*] Upload complete."
}
Upload-ToS3