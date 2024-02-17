#change Security Center with the service name you want check status for
$ServiceName = "Security Center"
$status = Get-Service -DisplayName $ServiceName
if($status.Status -eq "Running"){
Write-Host "Service Is In Running State" -ForegroundColor Green
}
else{
Write-Host "Service Is Stopped"
#remove # from below line in case you want to restart the service in case of not running
#Restart-Service -Name $status.Name -Force
}