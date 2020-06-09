$s = Get-ADUser -Filter * -Properties useraccountcontrol  
foreach ($a in $s) {if ($a.useraccountcontrol -eq 514){
    Set-ADUser $a.SamAccountName –replace @{"msDS-cloudExtensionAttribute1" ="HideFromGAL"}
    }
}