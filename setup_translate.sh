#!/bin/bash

#sudo apt update
#sudo apt install python3 -y
#sudo apt install python3-pip -y
#sudo pip  install googletrans==3.1.0a0 -y

FILE=/usr/local/bin/trans
sudo chmod +x $FILE
if [ -f "$FILE" ]; then
        echo "$FILE in created."
else
        sudo touch $FILE
        echo "$FILE sucsessful create."
fi

echo \#!/bin/bash | cat > $FILE
echo IFS=\"\" | cat >> $FILE
echo text=\"\" | cat >> $FILE
echo while read in | cat >> $FILE
echo do | cat >> $FILE
echo    text+=\"\$in\"\' | cat >> $FILE
echo \' | cat >> $FILE
echo done | cat >> $FILE
echo python3 /usr/local/share/trans/trans.py \$text | cat >> $FILE

FILE2=/usr/local/share/trans/trans.py
if [ -f "$FILE2" ]; then
        echo "$FILE2 in created."
else
        sudo mkdir /usr/local/share/trans
        sudo touch /usr/local/share/trans/trans.py
        echo "$FILE2 sucsessfil create."
fi

echo 'from sys import argv' | cat > $FILE2
echo 'from googletrans import' Translator | cat >> $FILE2

echo 'text = argv[1]' | cat >> $FILE2

echo 'n = 4000' | cat >> $FILE2

echo 'chunks = []' | cat >> $FILE2

echo 'i = 0' | cat >> $FILE2
echo 'while i < len(text):' | cat >> $FILE2
echo    $'\t''if i+n < len(text):' | cat >> $FILE2
echo       $'\t\t''chunks.append(text[i:i+n])' | cat >> $FILE2
echo    $'\t''else:' | cat >> $FILE2
echo       $'\t\t''chunks.append(text[i:len(text)])' | cat >> $FILE2
echo    $'\t''i += n' | cat >> $FILE2

echo 'translator = Translator()' | cat >> $FILE2
echo 'for i in chunks:' | cat >> $FILE2
echo    $'\t''result = translator.translate(i, src="en", dest="ru")' | cat >> $FILE2
echo    $'\t''print(result.text)' | cat >> $FILE2
