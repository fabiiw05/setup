#!/bin/bash

# Homebrew

echo -e "========"
echo -ne "➡ Homebrew: check\r"

echo ${PATH} | grep '/home/linuxbrew/.linuxbrew/bin' > /dev/null || {

 echo '
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ${HOME}/.profile

 eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
}

if type "brew" >/dev/null 2>&1; then
 echo -ne "✅ Homebrew: Installed\n"
else
 echo ""|/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null 2>&1
 echo -ne "✅ Homebrew: Install\n"
fi

# Ansible

echo -ne "➡ Ansible: check\r"
if type "ansible" >/dev/null 2>&1; then
 echo -ne "✅ Ansible: Installed\n"
else
 brew install ansible
 echo -ne "✅ Ansible: Install\n"
fi

bash -c 'ansible-playbook ubuntu_setup.yml'
