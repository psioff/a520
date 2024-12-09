# program all blocks except nvram

echo -off
if exist .\startup.efi then
 goto FOUNDIMAGE
endif
if exist fs0:\startup.efi then
 fs0:
 echo "Found Update Packages on fs0:"
 goto FOUNDIMAGE
endif
if exist fs1:\startup.efi then
 fs1:
 echo "Found Update Packages on fs1:"
 goto FOUNDIMAGE
endif
if exist fs2:\startup.efi then
 fs2:
 echo "Found Update Packages on fs2:"
 goto FOUNDIMAGE
endif
 echo "Unable to find Update Packages"
 echo "Please mount the drive with the update package"
 echo ""
goto END
:FOUNDIMAGE
#startup.efi startup.bin /p /b /n /k /x
# production mode
startup.efi startup.bin /p /b /k /x
rm startup.bin > nul
rm startup.efi > nul
rm startup.nsh > nul
rm Shell.efi > nul
reset
:END
