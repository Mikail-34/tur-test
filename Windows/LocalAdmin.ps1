# eine neue lokale Benutzer anlagen
# eine neue lokale Benutzer anlagen
param (
[string]$usr,
[string]$fn,
[string]$pw
)
$pw = ConvertTo-SecureString -String $pw -AsPlainText -Force
New-LocalUser -Name $usr -Password $pw -Description "Lokaler Administrator" -FullName $fn 
Add-LocalGroupMember -SID  S-1-5-32-544 -Member $usr


