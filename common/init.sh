#!/bin/bash
chmod +x /etc/rc.d/rc.local
for fileName in $(ls $(dirname $0)/init.d)
do
    if [ ! -d $(dirname $0)/init.d/$fileName  ]; then
        echo sh $fileName>>/etc/rc.d/rc.local
    fi
done

