param(
    [Parameter(Mandatory=$true)]
    [string]$Name
)

get-vm | ?{$_.Name -eq $Name -and $_.State -eq "Running"} | select -ExpandProperty networkadapters | select vmname, macaddress, switchname, ipaddresses | ft -wrap -autosize