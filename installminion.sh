#! /usr/bin/bash

read -p "minion naam: " MINION_NAAM #naam van de minion
read -p "IP master: " IP_MASTER #ip van de master 

# installeer salt
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sudo sh install_salt.sh -A $IP_MASTER

sudo service salt-minion stop

#minion naam veranderen
sudo rm -rf /etc/salt/minion_id
sudo touch /etc/salt/minion_id && sudo chmod 777 /etc/salt/minion_id
sudo printf "$MINION_NAAM" > /etc/salt/minion_id
sudo service salt-minion start

echo "Salt minion is geinstalleerd en opgestart."
