#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)

PATH_I3 = $(PREFIX)/etc/xdg/i3/config
PATH_ROFI = $(PREFIX)/etc/rofi.conf
PATH_ROFI_DARK_THEME = $(PREFIX)/usr/share/rofi/themes/regolith-dark-theme.rasi
PATH_ROFI_LIGHT_THEME = $(PREFIX)/usr/share/rofi/themes/regolith-light-theme.rasi
PATH_COMPTON = $(PREFIX)/etc/xdg/compton.conf
PATH_POLYBAR = $(PREFIX)/etc/xdg/polybar.config
PATH_REGOLITH_DESKTOP = $(PREFIX)/usr/share/xsessions/regolith.desktop
PATH_REGOLITH_DESKTOP_BADGE = $(PREFIX)/usr/share/unity-greeter/custom_regolith_badge.png
PATH_BACKGROUNDS = $(PREFIX)/usr/share/backgrounds

#
# Targets
#

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0644 -D configs/i3/i3-gaps.config $(PATH_I3)
	$(INSTALL) -m0644 -D configs/rofi/rofi.conf $(PATH_ROFI)
	$(INSTALL) -m0644 -D configs/rofi/regolith-dark-theme.rasi $(PATH_ROFI_DARK_THEME)
	$(INSTALL) -m0644 -D configs/rofi/regolith-light-theme.rasi $(PATH_ROFI_LIGHT_THEME)
	$(INSTALL) -m0644 -D configs/compton/compton.conf $(PATH_COMPTON)
	$(INSTALL) -m0644 -D configs/xsessions/regolith.desktop $(PATH_REGOLITH_DESKTOP)
	$(INSTALL) -m0644 -D images/custom_regolith_badge.png $(PATH_REGOLITH_DESKTOP_BADGE)
	$(INSTALL) -m0644 -D configs/polybar/polybar.config $(PATH_POLYBAR)
# Taken from http://wallpaper-site.webflow.io "#66 MARTIAN TERRAIN"
	$(INSTALL) -m0644 -D backgrounds/ESP_018747_2065_desktop.jpg $(PATH_BACKGROUNDS)/ESP_018747_2065_desktop.jpg
# Copied from https://github.com/deuill/i3-gnome-flashback
	$(INSTALL) -m0644 -D configs/gnome-flashback/i3-gnome-flashback-session.desktop $(PREFIX)/share/xsessions/i3-gnome-flashback-session.desktop
	$(INSTALL) -m0644 -D configs/gnome-flashback/i3-gnome-flashback.session $(PREFIX)/share/gnome-session/sessions/i3-gnome-flashback.session
	$(INSTALL) -m0755 -D configs/gnome-flashback/i3-gnome-flashback-session $(PREFIX)/bin/i3-gnome-flashback-session
	$(INSTALL) -m0755 -D configs/gnome-flashback/i3-gnome-flashback $(PREFIX)/bin/i3-gnome-flashback


uninstall:
	rm -f $(PATH_I3)
	rm -f $(PATH_ROFI)
	rm -f $(PATH_ROFI_LIGHT_THEME)
	rm -f $(PATH_ROFI_DARK_THEME)
	rm -f $(PATH_COMPTON)
	rm -f $(PATH_REGOLITH_DESKTOP)
	rm -f $(PATH_REGOLITH_DESKTOP_BADGE)
	rm -f $(PATH_POLYBAR)
	rm -f $(PATH_BACKGROUNDS)/ESP_018747_2065_desktop.jpg
	rm -f $(PREFIX)/bin/i3-gnome-flashback $(PREFIX)/bin/i3-gnome-flashback-session \
          $(PREFIX)/share/gnome-session/sessions/i3-gnome-flashback.session \
          $(PREFIX)/share/xsessions/i3-gnome-flashback-session.desktop


.PHONY: all install uninstall
