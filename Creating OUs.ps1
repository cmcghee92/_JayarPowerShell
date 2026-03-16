#Creating OUs (Example. London OU)
# -path is the location of the OU. (DC=YourDomain,DC=com)

Import-Module ActiveDirectory
New-ADOrganizationalUnit -Name "London" -Path "DC=contoso,DC=com"
