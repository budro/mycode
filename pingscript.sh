#! /bin/bash


while true
do
a=172.16.0.1
ping -c 2 -W 2 $a

if [[ $? -ne 0 ]]; then
echo "ERROR";
else
echo "OK";
##echo "Узел поднят работа сделана " | festival --language russian --tts
echo -e  $a>>logping.txt;\n
 date +%D-%T>> logping.txt;
# echo \n\n;
 echo "***">>logping.txt; 
 
#vlc ./sound.mp3 #можно проиграть мелодию
exit $ret_code
fi


echo "pause 10 sec"
sleep 10
done
