 #!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name an unusual sport: " NOUN1

read -p "2. An adjective used to cook: " ADJECTIVE1

read -p "3. A verb used in the morning : " VERB1

read -p "4. Name a a type of foodt: " NOUN2

read -p "5. Name an -ing verb: " VERB2

read -p "6. Name a color: " ADJECTIVE2

read -p "7. Name a type of pet: " NOUN3

read -p "8. Any Verb: " VERB3


echo "Once upon a time, there was a chef who loved to play ${NOUN1}."
echo "Every morning, they would ${VERB1} to prepare the most ${ADJECTIVE1} ${NOUN2} for breakfast."
echo "While ${VERB2} in the kitchen, they always wore their favorite ${ADJECTIVE2} apron."
echo "One day, their pet ${NOUN3} decided to help out in the kitchen by ${VERB3} the dishes."
echo "Together, they made the best breakfast the world had ever seen!"
