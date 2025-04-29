# On-Prem to AWS Migration Scripts

These PowerShell scripts perform a basic data migration workflow from an on-premises environment to AWS S3.

## Workflow

1. `1_Export-SQLData.ps1` - SQL data export from an on-premises database.
2. `2_Convert-CSVToJSON.ps1` - Converts CSV to JSON format.
3. `3_Compress-DataArchive.ps1` - Compresses data into a ZIP archive.
4. `4_Upload-ToS3.ps1` -  Uploading the archive to AWS S3.
5. `5_Verify-Upload.ps1` - Verifies file integrity after upload.
6. `6_Cleanup-Local.ps1` - Cleans up temporary local files.

## Notes

- Modify S3 bucket names, file paths, and access keys to match your environment.
- Requires AWS CLI and PowerShell 5.0+.
