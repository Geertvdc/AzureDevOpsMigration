Start-Transcript -Path (".\Logs\{0}.log" -f $MyInvocation.MyCommand.Name)

$importfile  = "F:\Repos\Scripts\Migration\import.json"

&"F:\TFSmigrator\Migrator.exe" import /importfile:$importfile

Stop-Transcript