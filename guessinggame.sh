#!/bin/bash
# guessinggame.sh
# Jeu pour deviner le nombre de fichiers dans le répertoire actuel

# Fonction pour demander à l'utilisateur de deviner
guess_number() {
    local target=$1
    local guess=-1

    while [ "$guess" -ne "$target" ]; do
        echo -n "Combien de fichiers se trouvent dans le répertoire actuel ? "
        read guess

        # Vérification si l'entrée est un nombre
        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre entier."
            continue
        fi

        if [ "$guess" -lt "$target" ]; then
            echo "Trop bas ! Essayez encore."
        elif [ "$guess" -gt "$target" ]; then
            echo "Trop haut ! Essayez encore."
        else
            echo "Bravo ! Vous avez deviné le bon nombre."
        fi
    done
}

# Compter le nombre de fichiers dans le répertoire actuel
file_count=$(ls -l | grep -v '^d' | wc -l)

# Appeler la fonction de devinette
guess_number "$file_count"
