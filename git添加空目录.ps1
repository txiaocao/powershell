# GIT项目，空目录添加
$dir = Get-ChildItem -Directory -Recurse

foreach($item in $dir){
    $gitfile =  ($item.FullName+"\.gitignore");

    if( $item.GetFiles().Count -eq 0 -and $item.GetDirectories().Count -eq 0){
        Out-File $gitfile -Encoding utf8
    }
}