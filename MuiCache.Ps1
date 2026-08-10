$d="DriveLetterPath";$c="ApplicationCompany";$f="FriendlyAppName";$m=(gp "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache").psobject.properties|?{$_.name -match "\.($f|$c)$"}|%{$z=$_.name;$p=$z.lastindexof('.');$_|select @{Name=$d;Expression={$z.substring(0,$p)}},@{Name="t";Expression={$z.substring($p+1)}},value}|sort $d,t;$r=for($i=0;$i-lt$m.length;$i++){$v=$m[$i];if($v.t -like $c){$a=$v.value;$n=$m[$i+1];if($v.$d-like$n.$d){$b=$n.value;$i++}else{$b=""}}else{$a="";$b=$v.value}$v|select $d,@{Name=$c;Expression={$a}},@{Name=$f;Expression={$b}}}$r|ogv -t "MuiCache Parser By Pieros"

Write-Host "`nFatto. Premi un tasto per chiudere..." -ForegroundColor Cyan
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
