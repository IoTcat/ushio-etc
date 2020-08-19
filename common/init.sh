#!/bin/bash
<<<<<<< HEAD
chmod +x /etc/rc.d/rc.local
<<<<<<< HEAD
for fileName in $(ls $(dirname $0)/init.d)
=======
cd $(dirname $0)
rm -f /etc/rc.d/rc.local
cp ./init.d/rc.d/rc.local /etc/rc.d/
chmod +x /etc/rc.d/rc.local
for fileName in $(ls ./init.d)
>>>>>>> 49ec88c... rc
=======
cd $(dirname $0)
for fileName in $(ls ./init.d)
>>>>>>> fb54644687bbdb39c10fe73b704adede0e067d82
do
    if [ ! -d $(pwd)/init.d/$fileName  ]; then
        echo sh $(pwd)/init.d/$fileName>>/etc/rc.d/rc.local
    fi
done

