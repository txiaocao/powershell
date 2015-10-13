$file = Get-Content .\file.txt;

$ar = New-Object -TypeName System.Collections.ArrayList;
foreach($item in $file){
$ar.Add($item.Substring(6,4));
$ar.Sort();
}
$ar|out-file x.txt
