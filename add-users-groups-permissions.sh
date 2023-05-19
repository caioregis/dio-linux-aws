#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_SEC

echo "Criando usuários no sistema..."

useradd caio	    -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd caio	   -e  -G GRP_ADM
useradd leticia	      -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd leticia	     -e  -G GRP_ADM

useradd sandra    -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd sandra   -e  -G GRP_SEC
useradd jon      -m   -s /bin/bash  -p $(openssl passwd -crypt WhEcwhmMpdyX) passwd jon     -e  -G GRP_SEC

echo "Adicionando permissões aos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /sec

echo "Finalizado"
