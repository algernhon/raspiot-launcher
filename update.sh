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
echo "Update in progress..."
echo ""

cd ~

echo "Step 1: Stop old RaspIoT screen session"
screen -X -S raspiot quit

echo "Step 2: Remove old Raspiot folder"
rm -f -r raspiot 2> /dev/null

echo "Step 3: Clone the last github version of RaspIoT"
git clone https://github.com/phoeliok/raspiot.git

while [ $? -ne 0 ]
do
    echo "Error: Git clone failed, retrying in 5sec..."
    sleep 5
    git clone https://github.com/phoeliok/raspiot.git
done

echo "Step 4: Copy the config file"
yes | cp -rf config.py ./raspiot/config.py

echo "Step 5: Starting RaspIoT..."
screen -S raspiot -dm bash -c 'python ~/raspiot/main.py'