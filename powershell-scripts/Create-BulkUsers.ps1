# PowerShell Script: Bulk User Creation in Active Directory
Import-Module ActiveDirectory

# Example CSV Format: FirstName,LastName,Username
# John,Doe,jdoe
# Jane,Smith,jsmith

$users = Import-Csv "C:\temp\new_users.csv"

foreach ($user in $users) {
    $username = $user.Username
    $password = (ConvertTo-SecureString "TempPass@123" -AsPlainText -Force)
    New-ADUser -Name "$($user.FirstName) $($user.LastName)" `
               -SamAccountName $username `
               -UserPrincipalName "$username@domain.com" `
               -AccountPassword $password `
               -Enabled $true
    Write-Output "Created AD account for $username"
}
