#!/data/data/com.termux/files/usr/bin/bash
echo 'Do you want to install figlet'
echo '[Y/N]'
read a
if [ "$a" = "Y" ]
then
    echo 'installing figlet'
    pkg install figlet
else 
	echo "Needed figlet for script running"
	echo 'exiting.....'
exit
fi

clear

echo 'Do you want to Download Needed Font?'
echo '[Y/N]'
read b
if [ "$b" = "Y" ]
then 
	echo 'downloading font'
	cd $HOME && mkdir my_folder && cd my_folder && mkdir fonts && cd fonts && wget http://www.figlet.org/fonts/epic.flf && chmod +x epic.flf && cd $HOME
else
	echo 'Its impossible to run script without fonts'
	exit
fi
clear

echo 'All Set'
echo 'enjoy this script' | pv -qL 50 ;
clear

cd $HOME
echo "Enter Your Name : "
read c
echo -e "\e[00;36m$(figlet -d my_folder/fonts -f epic.flf $c)\e[00m " | pv -qL 50 ;      
cd $HOME
echo -e "\e[01;32m $c is cool..\e[00m" | pv -qL 60;


echo 'thnx for use my script....' | pv -qL 50 ;
clear
echo 'wait.......'
cd $HOME && cd ..
mv -v $HOME/zetron/zetron usr/bin
clear
echo 'Script installing done....'
echo 'Now You Can Run This Script by running [zetron] command '

