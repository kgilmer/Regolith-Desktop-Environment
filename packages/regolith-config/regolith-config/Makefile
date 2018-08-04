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
	$(INSTALL) -m0644 -D configs/polybar/polybar.config $(PATH_POLYBAR)
	$(INSTALL) -m0644 -D backgrounds/Fire.png $(PATH_BACKGROUNDS)/Fire.png

uninstall:
	rm -f $(PATH_I3)
	rm -f $(PATH_ROFI)
	rm -f $(PATH_ROFI_LIGHT_THEME)
	rm -f $(PATH_ROFI_DARK_THEME)
	rm -f $(PATH_COMPTON)
	rm -f $(PATH_REGOLITH_DESKTOP)
	rm -f $(PATH_POLYBAR)
	rm -f $(PATH_BACKGROUNDS)/Fire.png

.PHONY: all install uninstall
