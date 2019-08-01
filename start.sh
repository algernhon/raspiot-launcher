#!/bin/bash
echo "  _____                _____ ____ _______"
echo " |  __ \              |_   _/ __ \__   __|"
echo " | |__) |__ _ ___ _ __  | || |  | | | |"
echo " |  _  // _\` / __| '_ \ | || |  | | | |"
echo " | | \ \ (_| \__ \ |_) || || |__| | | |"
echo " |_|  \_\__,_|___/ .__/_____\____/  |_|"
echo "                 | |"
echo "                 |_|"
echo ""
echo "Launching in progress..."
echo ""

cd ~

echo "Step 1: Stop old RaspIoT screen session"
screen -X -S raspiot quit

echo "Step 2: Starting RaspIoT..."
screen -S raspiot -dm bash -c 'python ~/raspiot/main.py'

if ! screen -list | grep -q "raspiot"; then
    echo "Test"
fi