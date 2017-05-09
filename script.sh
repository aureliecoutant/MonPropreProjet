MonFichier="MonFichier"
MonAutreFichier="MonAutreFichier"
Version=sudo cat /proc/version

echo $Version > $MonFichier
if [$Version=~"fedora"]
 then
   yum list | grep "ssh" > $MonFichier
   yum list > $MonAutreFichier
elif [$Version=~"debian"]
 then
   dpkg --list | grep "ssh" > $MonFichier
   dpkg --list > $MonAutreFichier
fi
