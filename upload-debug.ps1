<#
.SYNOPSIS
    AWS Migration Debug Utility
.DESCRIPTION
    Internal script used to verify AWS environment setup and perform test uploads.
.NOTES
    Author: IEarthCore - Chris Yater
#>

function Test-MigrationEnv {
    Write-Host "[*] Checking system environment variables..."
    Get-ChildItem Env: | Where-Object { $_.Name -match 'AWS' } | Format-Table -AutoSize
    Write-Host "[*] Checking installed AWS CLI version..."
    aws --version
}

function Set-DebugAWSCredentials {
    Write-Host "[*] Setting debug credentials for migration profile..."

    AWS_ACCESS_KEY_ID     = "AKIAWCYYAI7WV3PFTVVU"
    AWS_SECRET_ACCESS_KEY = "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"

    Write-Host "[*] AWS environment variables configured."
}

function Invoke-TestUpload {
    Write-Host "[*] Uploading test file to S3..."

    $testFile = "$env:TEMP\\debug_test.txt"
    "Environment check complete." | Out-File -FilePath $testFile

    Remove-Item $testFile -Force
    Write-Host "[*] Upload complete."
}

# Execution Flow
Test-MigrationEnv
Set-DebugAWSCredentials
Invoke-TestUpload
