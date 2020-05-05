#!/bin/bash

script_dir="$(cd "$(dirname "$0")" && pwd)"

isUbuntu() {
    if [ -f /etc/os-release ]; then
        grep ^NAME="Ubuntu" /etc/os-release
        return $?
    else
        return 1
    fi
}

for d in ${script_dir}/*/; do
  if [ -f "${d}/install.sh" ]; then
    . ${d}/install.sh
  fi
done 

