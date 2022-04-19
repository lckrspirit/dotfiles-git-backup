#!/bin/bash

BAT=$(acpi -b | grep '2' |awk -F ":" '{print $2}' | awk -F "," '{print $2}')
echo $BAT
