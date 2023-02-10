#!/bin/bash


# Homebrew

if [ "`echo ${PATH} | grep '/home/linuxbrew/.linuxbrew/bin'`" ]; then

 echo '
 # Set PATH, MANPATH, etc., for Homebrew.
 eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ${HOME}/.profile

 eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

fi

if type "brew" >/dev/null 2>&1; then
 echo -e "brew already exist"
else
 curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
fi

# Ansible

echo -e "-----\nCheck Ansible"
if type "ansible" >/dev/null 2>&1; then
  echo -e "Ansible already exist"
else
  echo -e "ansible was not installed"
  brew install ansible
fi
