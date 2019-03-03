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
# Taken from http://wallpaper-site.webflow.io
	$(INSTALL) -m0644 -D backgrounds/ESP_018747_2065_desktop.jpg $(PATH_BACKGROUNDS)/ESP_018747_2065_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_016869_1775_desktop.jpg $(PATH_BACKGROUNDS)/ESP_016869_1775_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_018105_2045_desktop.jpg $(PATH_BACKGROUNDS)/ESP_018105_2045_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_020190_1690_desktop.jpg $(PATH_BACKGROUNDS)/ESP_020190_1690_desktop.jpg 
	$(INSTALL) -m0644 -D backgrounds/ESP_020528_1750_desktop.jpg $(PATH_BACKGROUNDS)/ESP_020528_1750_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_016895_1525_desktop.jpg $(PATH_BACKGROUNDS)/ESP_016895_1525_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_020323_2050_desktop.jpg $(PATH_BACKGROUNDS)/ESP_020323_2050_desktop.jpg
	$(INSTALL) -m0644 -D backgrounds/ESP_034883_1645_desktop.jpg $(PATH_BACKGROUNDS)/ESP_034883_1645_desktop.jpg
# Copied from https://github.com/deuill/i3-gnome-flashback
	$(INSTALL) -m0644 -D configs/gnome-flashback/i3-gnome-flashback.session $(PREFIX)/usr/share/gnome-session/sessions/i3-gnome-flashback.session
	$(INSTALL) -m0755 -D configs/gnome-flashback/i3-gnome-flashback-session $(PREFIX)/usr/bin/i3-gnome-flashback-session
	$(INSTALL) -m0755 -D configs/gnome-flashback/i3-gnome-flashback $(PREFIX)/usr/bin/i3-gnome-flashback
	$(INSTALL) -m0644 -D configs/gnome-flashback/i3-gnome-flashback.desktop $(PREFIX)/usr/share/applications/i3-gnome-flashback.desktop
# Regolith session configuration script
	$(INSTALL) -m0755 -D scripts/configure-regolith-user-session.sh $(PREFIX)/usr/bin/configure-regolith-user-session.sh
	$(INSTALL) -m0755 -D scripts/polybar-launcher.sh $(PREFIX)/usr/bin/polybar-launcher.sh
	
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
	rm -f $(PATH_BACKGROUNDS)/ESP_016869_1775_desktop.jpg
	rm -f $(PATH_BACKGROUNDS)/ESP_018105_2045_desktop.jpg
	rm -f $(PATH_BACKGROUNDS)/ESP_020190_1690_desktop.jpg
	rm -f $(PATH_BACKGROUNDS)/ESP_020528_1750_desktop.jpg
	rm -f $(PATH_BACKGROUNDS)/ESP_016895_1525_desktop.jpg
	rm -f $(PATH_BACKGROUNDS)/ESP_020323_2050_desktop.jpg
	rm -f $(PATH_BACKGROUNDS)/ESP_034883_1645_desktop.jpg
	rm -f $(PREFIX)/usr/bin/i3-gnome-flashback $(PREFIX)/usr/bin/i3-gnome-flashback-session \
          $(PREFIX)/usr/share/gnome-session/sessions/i3-gnome-flashback.session \
	  $(PREFIX)/usr/share/applications/i3-gnome-flashback.desktop
	rm -f $(PREFIX)/usr/bin/configure-regolith-user-session.sh
	rm -f $(PREFIX)/usr/bin/polybar-launcher.sh


.PHONY: all install uninstall
