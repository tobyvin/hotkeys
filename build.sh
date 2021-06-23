#!/bin/bash

in=hotkeys.ahk
out=hotkeys.exe

echo "#NoTrayIcon" > build.ahk
cat $in >> build.ahk

taskkill.exe /IM $out /F /T &>/dev/null

/mnt/c/Program\ Files/AutoHotkey/Compiler/Ahk2Exe.exe /in $(wslpath -w build.ahk) /out $out

rm build.ahk

powershell.exe -NoProfile -c "(New-Object -ComObject WScript.Shell).Run('hotkeys.exe', 1, \$false)"