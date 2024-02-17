
$ServiceName = "Security Center"
$status = Get-Service -DisplayName $ServiceName
if($status.Status -eq "Running"){
Write-Host "Service Is In Running State" -ForegroundColor Green
}
else{
Write-Host "Service Is Stopped"
}