$processName = "process_name.exe"
Start-Process $processName
Write-Host "Waiting for $processName to finish..."
$process = Get-Process $processName
while ($process -ne $null) {
    $process = Get-Process $processName -ErrorAction SilentlyContinue
    Start-Sleep -Seconds 1
}
$handleOutput = &"path\to\handle.exe" -p $processName
Write-Host $handleOutput
