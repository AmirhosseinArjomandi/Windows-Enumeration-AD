# Find Current Domain With Path The Authentication via LDAP Protocol

$domainobj = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()
$pdc = ($domainobj.PdcRoleOwner).Name
$searchstring = "LDAP://"
$searchstring += $pdc + "/"
$distingishedname = "DC=$($domainobj.Name.Replace('.' , ',DC='))"
$searchstring += $distingishedname
$searchstring

#Find And Orginized The Users And Full Detail About The User's That Exist in Domain

$searcher = New-Object System.DirectoryServices.DirectorySearcher([ADSI]$searchstring)
$objdomain = New-Object System.DirectoryServices.DirectoryEntry
$searcher.SearchRoot = $objdomain
$searcher.Filter="samAccountType=805306368"

#If You Are looking for Specific User detail can user The Line on Blow

$searcher.Filter="name=*"

$Result = $searcher.FindAll()
Foreach($obj in $Result)
{ 
    Foreach($prob in $obj.Properties)
    {
        $prob
    }
    Write-Host "----------------------"
}

#Find All Group's And Their Name's

$searcher.filter="(objectClass=Group)"
$Result = $Searcher.FindAll()
Foreach($obj in $Result)
{
    $obj.Properties.name
}

#Find Specific Detail About Single Group's

$searcher.Filter = "(name=TEST.LOCAL)"
$Result = $searcher.FindAll()
Foreach($obj in $Result)
{
    $obj.Properties.member
}