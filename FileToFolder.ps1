#slash 
$FromDir = "C:\Temp\mp3"
$ToDir = "C:\Temp\The Late Show"
$DirCounter = 11 #starting directory
$FileLimit = 6 #max files per Dir

$FromDir += "\"
$PickupDirectory = Get-ChildItem -Path $FromDir *.mp3
$DropDirectory = $ToDir + "\"
$Counter = 0
$DestDir = $DropDirectory + $DirCounter + "\"
foreach ($file in $PickupDirectory)
{
    $Destination = $DestDir + $file.Name
    Write-Host $Destination   #Output Full Destination path to screen
    if (!(Test-Path $DestDir)) { 
        New-Item $DestDir -type directory -Force
    }
    Move-Item $file.FullName -destination $Destination
    $Counter++
    if ($Counter -eq $FileLimit) { 
        $Counter=0
        $DirCounter++
        $DestDir = $DropDirectory + $DirCounter + "\"
    }

}
