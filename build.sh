#!/bin/bash

in=hotkeys.ahk
out=dist/hotkeys.exe
ahk2exe='/mnt/c/Users/tobyv/scoop/apps/autohotkey/current/Compiler/ahk2exe.exe'
ahkbin='C:\Users\tobyv\scoop\apps\autohotkey\current\Compiler\ANSI 32-bit.bin'

echo "#NoTrayIcon" > build.ahk
cat $in >> build.ahk

taskkill.exe /IM $out /F /T &>/dev/null

$ahk2exe /in $(wslpath -w build.ahk) /out $out /base "${ahkbin}"

rm build.ahk