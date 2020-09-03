#!/bin/bash

clear 

cat << EOF

================================================

███████ ███████ ██████   ██████  ██       █████  
   ███  ██      ██   ██ ██    ██ ██      ██   ██ 
  ███   █████   ██████  ██    ██ ██      ███████ 
 ███    ██      ██   ██ ██    ██ ██      ██   ██ 
███████ ███████ ██   ██  ██████  ███████ ██   ██ 

CKA/CKAD Exam Simulator     by School of Devops

                        www.schoolofdevops.com  

================================================
                                               
EOF


show_progress()
{
  echo -n "Setting up Zerola for CKA/CKAD ..."
  local -r pid="${1}"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  while true; do 
    readynodes=$(kubectl get nodes 2> /dev/null | grep -i ready | grep -v "NotReady" | wc -l)
    if [[ "$readynodes" -ne 2 ]]; then     
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "${delay}"
      printf "\b\b\b\b\b\b"
    else
      break
    fi
  done
  printf "    \b\b\b\b"
  echo ""
  echo "Zerola Simulator is set up ! Finalising  configurations...!"
  echo -n "Configuring Zerola..."
  while true; do 
    which bats &> /dev/null
    if [[ "$?" -ne 0 ]]; then  
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "${delay}"
      printf "\b\b\b\b\b\b"
    else
      break
    fi
  done
  printf "    \b\b\b\b"
  echo ""
  echo "Zerola for CKA/CKAD Configured... !"
  echo ""
  printf "    \b\b\b\b"
}

show_progress