
# eine neue lokale Benutzer anlagen
param (
    [string]$usr
)
$securePassword = Read-Host "Geben Sie das Passwort ein:" -AsSecureString
New-LocalUser -Name $usr -Password $securePassword -Description "Lokaler Administrator" -FullName "$usr Admin"
Add-LocalGroupMember -SID  S-1-5-32-544 -Member $usr
