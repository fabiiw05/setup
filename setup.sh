#!/bin/bash

###############################
 
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
   echo test ;;
  *)
   echo 'Not supported.';;
esac
