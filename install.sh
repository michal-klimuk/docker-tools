#!/bin/sh
sudo cp build-tools/*.sh /usr/local/bin
cp .docker-aliases ~/.docker-aliases
cat '.docker-aliases' >> ~/.bashrc
