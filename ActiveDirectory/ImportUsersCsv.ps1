#Import Users to a group from a CSV file.

$Users = Import-Csv -Path "C:\PowerShell_Projects\TestCell\GroupMembers.csv"  
foreach ($User in $Users) {  
    Add-ADGroupMember -Identity "San Diego Admins" -Members $User.SamAccountName  #<Change "OU" as required>