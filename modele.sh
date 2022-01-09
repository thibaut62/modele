#!/bin/bash

#####################################################
# Modele de feuille de style pour mes scripts shell #
#####################################################

###########################################################################
#                                                                         #
# Utilisation :                                                           #
# Le script prend en argument le nom du fichier a créer.                  #
# Exemple :                                                               #
#           - ./modele.sh test.sh (dans le dossier du scripts)            #
#           - ./modele.sh /home/USER/file.sh (avec un chemin particulier) #
#                                                                         #
###########################################################################

# test si argument present
if [ $# -eq 0 ]
  then
    echo "Aucun fichier a creer rentrer en argument"
    exit 0
fi

touch $1

echo -e "#!/bin/bash\n" > $1
echo "##########################################################################" >> $1
echo "# Copyright: DELVILLE Thibaut" >> $1
echo -e "##########################################################################\n" >> $1
echo "##########################################################################" >> $1
echo "# Program: <APPLICATION DESCRIPTION HERE>" >> $1
echo -e "##########################################################################\n" >> $1
echo "VERSION="0.0.1"; # <release>.<major change>.<minor change>" >> $1
echo "PROGRAMME="APPLICATION NAME";" >> $1
echo "AUTHOR="DELVILLE Thibaut";" >> $1


chmod +x $1
