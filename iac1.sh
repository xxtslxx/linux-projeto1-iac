#!/bin/bash

echo "building directory..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "building groups for users..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "building users..."

useradd user01 -m -s /bin/bash -p $(openssl passwd -apr1 senha123) -G GRP_ADM
useradd user02 -m -s /bin/bash -p $(openssl passwd -apr1 senha123) -G GRP_ADM
useradd user03 -m -s /bin/bash -p $(openssl passwd -apr1 senha123) -G GRP_ADM

useradd user04 -m -s /bin/bash -p $(openssl passwd -apr1 senha123) -G GRP_VEN
useradd user05 -m -s /bin/bash -p $(openssl passwd -apr1 senha123) -G GRP_VEN
useradd user06 -m -s /bin/bash -p $(openssl passwd -apr1 senha123) -G GRP_VEN

useradd user07 -m -s /bin/bash -p $(openssl passwd -apr1 senha123) -G GRP_SEC
useradd user08 -m -s /bin/bash -p $(openssl passwd -apr1 senha123) -G GRP_SEC
useradd user09 -m -s /bin/bash -p $(openssl passwd -apr1 senha123) -G GRP_SEC

echo "specifying directory permissions"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "END!..." 

