#!/bin/bash
#******************************* Mouhamet Bamba FALL   **********************************/
#******************************* Ing2: Instrumentation **********************************/
date 
while((1))
do 
echo "*************************** Menu Calculatrice ********************************"
echo "*************************** Faite votre choix: *******************************"
echo "1. Addition"
echo "2. Soustraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Exit"
echo "choix:";read choix
    
    if test $choix -eq 5; then 
        exit 0;
    fi 

read -p "saisir la premiere valeur de l'operation " a
read -p "saisir la deuxieme valeur de l'operation " b

somme=$((a+b))
difference=$((a-b))
produit=$((a*b))
if test $choix -eq 1 ; then
    echo Reponse: $a+$b"=$somme"
    elif test $choix -eq 2 ; then
    echo Reponse: $a-$b"=$difference"
    elif test $choix -eq 3 ; then
    echo Reponse: $a x $b "=$produit"
    elif test $choix -eq 4 ; then
        if test $b -eq 0 ; then
             echo "Erreur : denominateur nul !"
             echo "conseil : changer la valeur du denominateur(b) ! "
        fi
        if test $b -ne 0; then  
            echo la division de $a/$b est:
            echo "scale=3;$a/$b" |bc        
        fi 

fi
done