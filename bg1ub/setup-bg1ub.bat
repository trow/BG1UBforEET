@echo off
echo "BG1 Unfinished Business is updating all WeiDU programs. Please be patient..."
"setup-bg1ub.exe" --update-all > nul
cls
rem echo Press any key to install BG1 Unfinished Business ...
echo "Some String" | pause > nul
"setup-bg1ub.exe"