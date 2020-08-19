#!/bin/bash
cd $(dirname $0)
rm -f /etc/rc.d/rc.local
cp ./init.d/rc.d/rc.local /etc/rc.d/
chmod +x /etc/rc.d/rc.local
for fileName in $(ls ./init.d)
do
    if [ ! -d $(pwd)/init.d/$fileName  ]; then
        echo sh $(pwd)/init.d/$fileName>>/etc/rc.d/rc.local
    fi
done

