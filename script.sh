MonFichier="/home/lilly/MonPropreProjet/MonFichier"
MonAutreFichier="/home/lilly/MonPropreProjet/MonAutreFichier"

yum list | grep "ssh" > $MonFichier
cat /proc/version > $MonFichier

yum list > $MonAutreFichier

