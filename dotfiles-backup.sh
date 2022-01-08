#!/bin/bash

device=$(hostnamectl hostname)
configSourcePath="$HOME/.config/i3"
configBackupPath="/mnt/media/scripts/dotfiles-git-backup"
commitComment=""

if [[ ! -d "$configBackupPath"/"$device" ]]; then
    mkdir "$configBackupPath"/"$device"
fi


function copyFiles {
    yes | cp -rfv "$configSourcePath"/* "$configBackupPath"
}

function pushtoRepo {
    if [[ ${#commitComment} -eq 0 ]]; then
        commitComment="Autobackup configs"
    fi
    
    
}

copyFiles