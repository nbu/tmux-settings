#!/bin/bash

isOS() {
    os=$1
    echo "OS is: $os"
    if [ -f /etc/os-release ]; then
        grep "^NAME.*$os" /etc/os-release
        return $?
    else
        return 1
    fi
}

isUbuntu() {
    isOS "Ubuntu"
    return $?
}

isCentOS() {
    isOS "CentOS"
    return $?
}
