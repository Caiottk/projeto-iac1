#!/bin/bash

echo "Criando diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"
useradd carlos -c "Carlos Henrique" -s /bin/bash -m -p $(openSSL passwd -crypt senha123) -G GRP_ADM
passwd carlos -e
useradd maria -c "Maria Costa" -s /bin/bash -m -p $(openSSL passwd -crypt senha123) -G GRP_ADM
passwd maria -e
useradd joao -c "Joao Rauli" -s /bin/bash -m -p $(openSSL passwd -crypt senha123) -G GRP_ADM
passwd joao -e


useradd debora -c "Debora Souza" -s /bin/bash -m -p $(openSSL passwd -crypt senha123) -G GRP_VEN
passwd debora -e
useradd natalia -c "Natália Andrade" -s /bin/bash -m -p $(openSSL passwd -crypt senha123) -G GRP_VEN
passwd natalia -e
useraRd roberto -c "Roberto Farias" -s /bin/bash -m -p $(openSSL passwd -crypt senha123) -G GRP_VEN
passwd roberto -e

useradd josefa -c "Josefa Gonçalves" -s /bin/bash -m -p $(openSSL passwd -crypt senha123) -G GRP_SEC
passwd josefa -e
useradd amanda -c "Amanda Lima" -s /bin/bash -m -p $(openSSL passwd -crypt senha123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Rogerio Rezende" -s /bin/bash -m -p $(openSSL passwd -crypt senha123) -G GRP_SEC
passwd rogerio -e

echo "Especificando permissões dos diretórios"
chown root /publico /adm /ven /sec 

chmod 777 /publico/

chown :GRP_ADM /adm
chown :GRP_SEC /sec
chown :GRP_VEN /ven

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/


