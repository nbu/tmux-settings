#!/bin/bash

script_dir="$(cd "$(dirname "$0")" && pwd)"

for d in ${script_dir}/*/; do
  if [ -f "${d}/install.sh" ]; then
    . ${d}/install.sh
  fi
done 

