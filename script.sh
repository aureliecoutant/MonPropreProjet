MonFichier="MonFichier"
MonAutreFichier="MonAutreFichier"
Version=cat /proc/version

echo $Version > $MonFichier
if [$Version=~ "fedora"] then
   yum list | grep "ssh" > $MonFichier
else 
   if [$Version=~ "debian"] 
      dpkg --list | grep "ssh" > $MonFichier
   fi
fi
yum list > $MonAutreFichier

