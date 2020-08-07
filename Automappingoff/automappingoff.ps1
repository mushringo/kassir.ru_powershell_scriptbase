$user="email@kassir.ru"
$shared1="shared@kassir.ru"
Remove-MailboxPermission -Identity $shared1 -User $user -AccessRights FullAccess -Confirm:$False
Add-MailboxPermission    -Identity $shared1 -User $user -AccessRights FullAccess -AutoMapping:$false
Add-RecipientPermission  -Identity $shared1 -Trustee $user -AccessRights SendAs -Confirm:$false
Get-MailboxPermission    -Identity $shared1 -User $user