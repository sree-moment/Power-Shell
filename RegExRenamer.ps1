ForEach ($myfile in (Get-Childitem "C:\Temp\The Late Show")){
    Rename-Item $myfile.FullName -newname (( $myfile.PSChildName ) -creplace "The Late Show-","" ) 
}
<# https://sites.google.com/site/godunder/powershell/mass-file-rename-matching-regular-expression
ForEach ($myfile in (Get-Childitem "C:\Test")){
    Rename-Item $myfile.FullName -newname ((((( $myfile.PSChildName ) -creplace "^\d{4}.*-","" ) -creplace "\(.*\).*\(.*\)","") -creplace "\s\.",".") -creplace "^\s","")
}
ForEach ($myfile in (Get-Childitem "C:\Test")) | Where { $_.PSChildName -match "^\d{4}.*-.*"} ) {
        Rename-Item $myfile.FullName -newname ((((( $myfile.PSChildName ) -creplace "^\d{4}.*-","" ) -creplace "\(.*\).*\(.*\)","") -creplace "\s\.",".") -creplace "^\s","")
}
#>