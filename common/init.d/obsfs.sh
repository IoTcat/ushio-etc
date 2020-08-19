#!/bin/bash
if [ ! -d /share  ];then
    mkdir /share
fi
cd $(dirname $0)
chmod 600 $(pwd)/../../../config/token/huaweicloud/ask
$(pwd)/obsfs/obsfs ushio-fs /share -o url=obs.cn-north-1.myhuaweicloud.com -o passwd_file=$(pwd)/../../../config/token/huaweicloud/ask -o nonempty -o use_ino -o big_writes -o max_write=131072 -o max_background=100 -o allow_other
