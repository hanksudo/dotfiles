#!/bin/sh
while true; do
    clear
    date +"%Y %b %d %T" | figlet -c -f mini | cowsay -n -f dragon-and-cow
    sleep 1
done
