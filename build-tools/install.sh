#!/bin/sh
sudo cp ./*.sh /usr/local/bin
cp .build-aliases ~/
cat '.build-aliases' >> .bashrc
