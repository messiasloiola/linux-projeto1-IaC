#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -c "Carlos Filho" -p $(openssl passwd -6 Senha123)
useradd maria -m -s /bin/bash -c "Maria Filho" -p $(openssl passwd -6 Senha123)
useradd joao -m -s /bin/bash -c "João Filho" -p $(openssl passwd -6 Senha123)
useradd debora -m -s /bin/bash -c "Debora Filho" -p $(openssl passwd -6 Senha123)
useradd sebastiana -m -s /bin/bash -c "Sebastiana Filho" -p $(openssl passwd -6 Senha123)
useradd roberto -m -s /bin/bash -c "Roberto Filho" -p $(openssl passwd -6 Senha123)
useradd josefina -m -s /bin/bash -c "Josefina Filho" -p $(openssl passwd -6 Senha123)
useradd amanda -m -s /bin/bash -c "Amanda Filho" -p $(openssl passwd -6 Senha123)
useradd rogerio -m -s /bin/bash -c "Rogerio Filho" -p $(openssl passwd -6 Senha123)


echo "Permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "DEU BOM!!!"
