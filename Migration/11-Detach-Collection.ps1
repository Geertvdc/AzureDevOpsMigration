Start-Transcript -Path (".\Logs\{0}.log" -f $MyInvocation.MyCommand.Name)

$tfsconfig = "C:\Program Files\Azure DevOps Server 2019\Tools\TfsConfig.exe"
 
& $tfsconfig collection /detach /collectionName:"<<collection>>" /continue

Stop-Transcript