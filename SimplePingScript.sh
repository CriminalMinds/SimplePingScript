#!/bin/bash

echo "Simple ping script by CriminalMinds"

read -p "Ingresa el dominio: " IP


if [ "$IP" = "" ];
then
	echo "Ingresa un dominio válido"
exit $0 > /dev/null 2>&1
else
	echo "Escaneando..."
sleep 1
fi

for DOM in $(seq 1 254); do
	ping -c 4 $DOM.$IP	
done
