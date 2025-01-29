#!/bin/bash
echo "Starting..."
ver=0.0.0A

echo "Entering..."
clear

echo "Calebh101 Autoinstall for Ubuntu"
echo "Version $ver"
read -p "Start the installation? (y/n): " confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then
    echo ""
    echo "Initializing..."
    sudo apt update
    echo "Installing..."

    echo "Installing apps..."
    sudo snap install chrome
    sudo snap install code
    sudo snap install discord
    
    echo "Installing SDKs..."
    sudo snap install flutter

    echo "Initializing apps..."
    flutter doctor
else
    echo "Action cancelled"
    exit
fi