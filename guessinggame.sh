#!/bin/bash

# Fonction pour compter le nombre de fichiers dans le répertoire actuel
count_files() {
    echo $(ls -l | grep -v '^d' | wc -l)
}

# Nombre de fichiers actuel
file_count=$(count_files)

# Message d'accueil
echo "Bienvenue dans le jeu du guessing game !"
echo "Essayez de deviner combien de fichiers se trouvent dans le répertoire actuel."

# Boucle principale du jeu
while true; do
    read -p "Entrez votre estimation : " guess

    # Vérifier si l'entrée est un nombre
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Veuillez entrer un nombre valide."
        continue
    fi

    # Comparer l'estimation avec le nombre réel
    if [ "$guess" -lt "$file_count" ]; then
        echo "C'est plus ! Essayez encore."
    elif [ "$guess" -gt "$file_count" ]; then
        echo "C'est moins ! Essayez encore."
    else
        echo "Félicitations ! Vous avez deviné le nombre correct de fichiers : $file_count"
        break
    fi
done
