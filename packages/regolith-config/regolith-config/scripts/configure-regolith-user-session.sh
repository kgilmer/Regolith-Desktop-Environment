#!/bin/bash

# This script will configure a login session with regolith defaults if:
# 1. The file ~/.regolith-session-flag does not exist.
# 2. The desktop session is regolith.
#
# Once the script completes the file ~/.regolith-session-flag is written to the user directory
# as a way of ensuring the script is only run once per user.

if [[ "$DESKTOP_SESSION" = "regolith" && ( ! -f ~/.regolith-session-flag ) ]] ; then 
	echo "Executing regolith session configuration script."

	# Required for Nautils to work correctly with i3
	gsettings set org.gnome.desktop.background show-desktop-icons false

	# Set the theme
	gsettings set org.gnome.desktop.interface gtk-theme "SolArc-Dark"
	gsettings set org.gnome.desktop.wm.preferences theme "SolArc-Dark"
	gsettings set org.gnome.desktop.interface icon-theme "Arc"

	# Set the lockscreen background
	gsettings set org.gnome.desktop.background picture-uri "file:///usr/share/backgrounds/ESP_020323_2050_desktop.jpg"

	# Only run this script once per login session.
	touch ~/.regolith-session-flag
fi
