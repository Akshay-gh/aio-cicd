#!/usr/bin/env bash

# Function to display the menu
display_menu() {
    clear
    echo "=== Menu ==="
    echo "1. Jenkins"
    echo "2. target1"
    echo "3. target2"
    echo "4. Exit"
    echo
    read -p "Enter your choice: " choice
}

# Function for option 1
option1() {
    echo "You selected Option 1"
    vboxmanage startvm deb11 --type=headless
    read -n 1 -s -r -p "Press any key to continue..."
}

# Function for option 2
option2() {
    echo "You selected Option 2"
    vboxmanage startvm ansible-target1 --type=headless
    read -n 1 -s -r -p "Press any key to continue..."
}

# Function for option 3
option3() {
    echo "You selected Option 3"
    vboxmanage startvm ansible-target2 --type=headless
    read -n 1 -s -r -p "Press any key to continue..."
}

# Main program
while true; do
    display_menu
    case $choice in
        1)
            option1
            ;;
        2)
            option2
            ;;
        3)
            option3
            ;;
        4)
            echo "Exiting..."
            exit
            ;;
        *)
            echo "Invalid choice. Please try again."
            read -n 1 -s -r -p "Press any key to continue..."
            ;;
    esac
done


