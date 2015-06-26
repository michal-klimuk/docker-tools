#!/bin/bash

# copy build tools scripts
sudo cp build-tools/*.sh /usr/local/bin

BASHRC_PATH=~/.bashrc
ALIASES_PATH=~/.docker-aliases

# define aliases we want to create
read -d '' aliases <<- EOF
alias gradle='gradle-build.sh'
alias mvn='mvn-build.sh'
alias drm='docker rm $(docker ps -aq)'
alias drmi-dang='docker rmi $(docker images -q --filter "dangling=true")'
EOF

# save aliases to file
echo "$aliases" >> "$ALIASES_PATH"
chmod +x "$ALIASES_PATH"

cat ~/.bashrc | grep "$ALIASES_PATH" > /dev/null
# adds aliases reference to .bashrc if it's not yet there
if [ $? -eq 1 ]
  echo "$ALIASES_PATH" >> "$BASHRC_PATH"
fi

# executes aliases to avoid shell reopening
$ALIASES_PATH
