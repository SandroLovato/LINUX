#!/bin/bash
clear
Menu(){
	echo "-------------------------------------"
	echo "  Programas Essenciais Pós Formatação Linux  "
	echo "*************************************"
	echo "-------Feito por Sandro Lovato-------"
	echo "-------------------------------------"
	echo
	echo "[ 1 ] Google Chrome"
	echo "[ 2 ] Team Viewer"
	echo "[ 3 ] VLC Media Player"
	echo "[ 4 ] Virtual Box"
	echo "[ 5 ] GIMP"
	echo "[ 6 ] Sublime Text"
	echo "[ 7 ] Deluge"
	echo "[ 8 ] Samba"
	echo "[ 9 ] Atualizar pacotes"
	echo "[ 0 ] Sair"
	echo
	echo -n "Escolha uma opcao desejada: "
	read OPCAO
	case $OPCAO  in
	   1) GoogleChrome ;;
	   2) TeamViewer ;;
 	   3) VLCMediaPlayer ;;
	   4) VirtualBox ;;
	   5) GIMP ;;
	   6) SublimeText ;;
	   7) Deluge ;;
	   8) Samba ;;
	   9) Atualizar ;;
	   0) exit ;;
	   *) "Opcao invalida." ;;
	esac
}
GoogleChrome() {
echo "Instalando Google Chrome"
apt-get install google-chrome-stable
Menu
}
TeamViewer() {
echo "Instalando Team Viewer"
apt-get install teamviewer
Menu
}
VLCMediaPlayer() {
echo "Instalando VLC Media Player"
apt-get install vlc
Menu
}
VirtualBox() {
echo "Instalando Virtual Box"
wget -c https://download.virtualbox.org/virtualbox/5.2.20/VirtualBox-5.2.20-125813-Linux_amd64.run -O virtualbox.run
chmod +x virtualbox.run
sudo ./virtualbox.run
Menu
}
GIMP() {
echo "Instalando Gimp"
apt-get install gimp
Menu
}
SublimeText() {
echo "Instalando Sublime Text"
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
Menu
}
Deluge() {
echo "Instalando Deluge"
apt-get install deluge
Menu
}
Samba() {
echo "Instalando Samba"
apt-get install samba
Menu
}
Atualizar() {
echo "Atualizando pacotes"
apt-get update
Menu
}
Menu
