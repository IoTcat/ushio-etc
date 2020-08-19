#!/bin/bash
if [ ! -d /share  ];then
    mkdir /share
fi
chmod 600 $(dirname $0)/../../../config/token/huaweicloud/ask
$(dirname $0)/obsfs/obsfs ushio-fs /share -o url=obs.cn-north-1.myhuaweicloud.com -o passwd_file=$(dirname $0)/../../../config/token/huaweicloud/ask -o nonempty -o use_ino -o big_writes -o max_write=131072 -o max_background=100 -o allow_other
