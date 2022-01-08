#!/bin/bash

device=$(hostnamectl hostname)
configSourcePath="$HOME/.config/i3"
configBackupPath="/mnt/media/scripts/dotfiles-git-backup/$device"


if [[ ! -d "$configBackupPath" ]]; then
    mkdir "$configBackupPath"
fi


function copyFiles {
    yes | cp -rfv "$configSourcePath"/* "$configBackupPath"
}

copyFiles