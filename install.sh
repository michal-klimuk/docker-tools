#!/bin/bash
sudo cp build-tools/*.sh /usr/local/bin

BASHRC_PATH=~/.bashrc
ALIASES_PATH=~/.docker-aliases

read -d '' aliases <<- EOF
alias gradle='gradle-build.sh'
alias mvn='mvn-build.sh'
alias drm='docker rm $(docker ps -aq)'
alias drmi-dang='docker rmi $(docker images -q --filter "dangling=true")'
EOF

echo "$aliases" >> "$ALIASES_PATH"
chmod +x "$ALIASES_PATH"
echo "$ALIASES_PATH" >> "$BASHRC_PATH"

$ALIASES_PATH
