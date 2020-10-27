#/bin/bash
tput sc
tput civis
selected=1
how=$( cat .how.txt )
source title.sh
source enter.sh
trap ctrl_c INT

function ctrl_c() {
  tput cnorm
  tput rc
  printf "\r\e[0;92mx \e[0m\e[1;77mGood Bye!                                                               \e[0m"
  echo
  exit
}



position () {
tput sc
tput cuu1
tput sc
##tputmore

}

commande() {
while true
do
read -r -sn1 t
if [[ $t == A ]]; then ###### When You Press Up
selected=$(($selected - 1))
display
elif [[ $t == B ]]; then ###### When You Press Down
selected=$(($selected + 1))
display
elif [[ $t == C ]]; then ##### When You Press Right
bash settings.sh
elif [[ $t == "" ]]; then ###### When You Press Enter
enter
fi
done
}

display() {

  if [[ $selected == 1 ]]; then 
tput rc
title
printf "\n\r\e[1;96m> Exit                             \e[0m"
##newline
##letsnew
position


##newselect


else
selected=1
display 

fi
}

display
commande




