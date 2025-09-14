# PowerShell Script: Reset AD Password
Import-Module ActiveDirectory
Set-ADAccountPassword -Identity "jdoe" -NewPassword (ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force) -Reset
Unlock-ADAccount -Identity "jdoe"
Write-Output "Password reset and account unlocked for jdoe"
