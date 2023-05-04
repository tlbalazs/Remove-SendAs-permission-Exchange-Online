# Author: Toth Laszlo Balazs
# Create: 2023.05.04
# This script gets the email addresses from a txt file. It then removes the trustee's SendAs permission from the mailbox objects.

$mailboxes = @()
$mailboxes = Get-Content "C:\temp\mailboxes.txt"

foreach ($mailbox in $mailboxes)
{
   Remove-RecipientPermission $mailbox -AccessRights SendAs -Trustee TRUSTEE@contoso.com -Confirm:$false
}