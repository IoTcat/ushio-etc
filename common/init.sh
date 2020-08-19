#!/bin/bash
chmod +x /etc/rc.d/rc.local
cd $(dirname $0)
for fileName in $(ls ./init.d)
do
    if [ ! -d $(pwd)/init.d/$fileName  ]; then
        echo sh $(pwd)/init.d/$fileName>>/etc/rc.d/rc.local
    fi
done

