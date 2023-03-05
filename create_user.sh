#!/bin/bash

echo "Creating users at system..."

useradd guest10 -c "Special User" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd guest10 -e

useradd guest11 -c "Special User" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd guest11 -e

useradd guest12 -c "Special User" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd guest12 -e

useradd guest13 -c "Special User" -s /bin/bash -m -p $(openssl passwd -6 123456)
passwd guest13 -e

echo "Finished!"
