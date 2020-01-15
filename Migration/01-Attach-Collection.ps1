Start-Transcript -Path (".\Logs\{0}.log" -f $MyInvocation.MyCommand.Name)

$TFSConfig = "C:\Program Files\Azure DevOps Server 2019\Tools\TfsConfig.exe"
$CollectionName = "<<update>>"
$ServerName = "<<update>>"
$DatabaseName = "<<update>>"

& $TFSConfig collection /Attach /CollectionDB:"$ServerName;$DatabaseName" /CollectionName:"$CollectionName" /continue

Stop-Transcript