
#Creating Groups in Active Directory using PowerShell [San Diego OU]
Get-Module -ListAvailable ActiveDirectory

# Loads AD commands into PS
Import-Module ActiveDirectory

#Finding the Domain Path
Get-ADDomain  #<DC=Adatum,DC=com>

New-ADOrganizationalUnit -Name "San Diego" -Path "DC=Adatum,DC=com"  #<creates the OU , names is San Diego and the path is the domain path>

#Verify the OU was created
Get-ADOrganizationalUnit -Filter 'Name -eq "San Diego"'  #<filters the OUs to find the one named San Diego>

#Creates a global group named San Diego Admins in the San Diego OU
New-ADGroup -Name "San Diego Admins" -GroupScope Global -Path "OU=San Diego,DC=Adatum,DC=com"  #<creates a global group named San Diego Admins in the San Diego OU>

#Verify the group was created
Get-ADGroup -Filter 'Name -eq "San Diego Admins"'  #<filters the groups to find the one named San Diego Admins>
