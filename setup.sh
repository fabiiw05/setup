#!/bin/bash

get_distribution() {

 if [ -e /etc/os-release ]; then
  export $(cat /etc/os-release | grep '^ID=')
  distri_name="${ID}"
 else
  distri_name="unkown"
 fi

 echo ${distri_name}
}

case $(get_distribution) in
  "ubuntu")
   curl -fsSL 'https://raw.githubusercontent.com/fabiiw05/setup/main/ubuntu_setup.sh' | bash -s ;;
  *)
   echo 'Not supported.';;
esac

