#!/bin/bash


clear
while true; do
    echo "Select an option:"
    echo "1. Show currently installed versions of Java"
	echo "2. Change Your current java version"
    echo "3. Quit"
    read -p "Enter your choice (1, 2, or 3): " choice

    case $choice in
        1)
			clear
            echo "Here are your currently installed versions of Java."
            archlinux-java status
			read -p 'Press "enter" to continue...' null
			clear
            ;;
		2)
			clear
			archlinux-java status
			read -p "What version would you like to change to? " java_version
			clear
			sudo archlinux-java set $java_version
			echo "Java version has been updated to: ${java_version}!"
			read -p 'Press "enter" to continue...' null
            clear
			;;

        3)
			clear
            echo "Quitting..."
            break
            ;;
        *)
			clear
            echo "Invalid choice. Please try again.\n"
			;;
    esac
done
