#!/bin/bash
echo "This script makes netplan config file"
pwd
ls -l

read -p "Enter the name of netplan file: " file_name

j2 -f yaml -o $file_name.yaml template.j2 variables.yaml
