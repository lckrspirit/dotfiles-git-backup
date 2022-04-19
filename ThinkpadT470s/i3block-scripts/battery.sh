#!/bin/bash

BAT=$(acpi -b | grep 'Battery 1' |awk -F ":" '{print $2}' | awk -F "," '{print $2}')
echo $BAT
