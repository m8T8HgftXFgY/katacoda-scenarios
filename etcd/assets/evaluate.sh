#!/bin/bash

clear 

show_progress()
{
  echo -n "Evaluating....."
  local -r pid="${1}"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  while true; do 
    grep -i "done" /tmp/evaluation-report &> /dev/null
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
  echo "done generating Report... "
  sleep 2
  printf "    \b\b\b\b"
  cat /tmp/evaluation-report
  printf "    \b\b\b\b"
  echo ""

}

show_progress