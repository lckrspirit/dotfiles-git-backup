#!/bin/bash

device=$(hostnamectl hostname)
configSourcePath="$HOME/.config/i3"
configBackupPath="/mnt/media/scripts/dotfiles-git-backup"
commitComment=""

if [[ ! -d "$configBackupPath"/"$device" ]]; then
    mkdir "$configBackupPath"/"$device"
fi


function copyFiles {
    yes | cp -rfv "$configSourcePath"/* "$configBackupPath"/"$device"
}

function pushtoRepo {
    if [[ ${#commitComment} -eq 0 ]]; then
        commitComment="Autobackup configs"
    fi
    git add "$configBackupPath"/*
    git commit -m "$commitComment"
    git push -u origin main
}

pushtoRepo