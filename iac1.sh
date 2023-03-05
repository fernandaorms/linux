#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Setting group owner..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Setting permissions..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Creating users..."

useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 passwd123)
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 passwd123)
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -6 passwd123)

useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 passwd123)
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 passwd123)
useradd roberto -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -6 passwd123)

useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 passwd123)
useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 passwd123)
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -6 passwd123)

echo "Finished..."
