# PowerShell Script: Map Network Drive
$drive = "Z:"
$path = "\\Server01\Shared"
New-PSDrive -Name $drive -PSProvider FileSystem -Root $path -Persist
Write-Output "Network drive $drive mapped to $path"
