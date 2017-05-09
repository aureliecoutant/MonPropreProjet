MonFichier="MonFichier"
MonAutreFichier="MonAutreFichier"
Version=cat /proc/version

echo $Version > $MonFichier
if [$Version=~ "fedora"] then
   yum list | grep "ssh" > $MonFichier
elif [$Version=~ "debian"] then
   dpkg --list | grep "ssh" > $MonFichier
fi
yum list > $MonAutreFichier

