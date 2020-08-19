#!/bin/bash
<<<<<<< HEAD
chmod +x /etc/rc.d/rc.local
for fileName in $(ls $(dirname $0)/init.d)
=======
cd $(dirname $0)
rm -f /etc/rc.d/rc.local
cp ./init.d/rc.d/rc.local /etc/rc.d/
chmod +x /etc/rc.d/rc.local
for fileName in $(ls ./init.d)
>>>>>>> 49ec88c... rc
do
    if [ ! -d $(dirname $0)/init.d/$fileName  ]; then
        echo sh $fileName>>/etc/rc.d/rc.local
    fi
done

