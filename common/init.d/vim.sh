#!/bin/bash
cd $(dirname $0)
rm -f /root/.vimrc
ln -s $(pwd)/../vim/.vimrc /root/.vimrc
