MonFichier="MonFichier"
MonAutreFichier="MonAutreFichier"
Version=sudo cat /proc/version

echo $Version > $MonFichier
if [sed '#fedora#']
 then
   yum list | grep "ssh" > $MonFichier
   yum list > $MonAutreFichier
elif [sed '#[Uu]buntu#']
 then
   dpkg --list | grep "ssh" > $MonFichier
   dpkg --list > $MonAutreFichier
fi
