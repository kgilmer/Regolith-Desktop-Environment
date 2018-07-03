# Regolith Desktop Environment

Regolith is a set of open-source Linux UI elements that combine to provide a productivity-centric desktop experience.  

# Install

Regolith is installed on top of an existing Ubuntu 16.04 instance.  If you're not already using Ubuntu, it must be installed before proceeding.

## Install the Regolith PPA

```
$ sudo add-apt-repository ppa:kgilmer/regolith
$ sudo apt update
```

## Install the packages

```
$ sudo apt install regolith-desktop-env
```

## Login into the Regolith desktop session

1. Log out of your current desktop session.
2. At the greeter, select the Ubuntu icon to access the session type menu.  Select Regolith.
3. Log in.  Meta-enter for a terminal.  Meta-space for an application menu.

# FAQ

## What components is Regolith composed of?

[i3wm-gaps](https://github.com/Airblader/i3), [polybar](https://github.com/jaagr/polybar), [rofi](https://github.com/DaveDavenport/rofi) are combined with the [solarized color palette](http://ethanschoonover.com/solarized) and the [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) font.

## Why does the world need yet another Linux desktop environment?

i3wm by default lacks polish.  Rather than just tweaking a one-off configuration, all changes are bundled in Debian packages making installation and upgrading consistent and simple.

## Why a tiling window manager?

Various desktop UI metaphores have come and gone over the years.  For new computer users, UI elements such as large icons and big simple menus make sense.  However for those of us that have been using computers for awhile now, such things mostly get in the way.  Tiling window managers such as i3wm simply let the user interact with their applications with a minimum of overhead or ceremony.  A simple and consistent set of hotkeys provide the power and expressivity that an average computer user needs to configure their UI environment.

## Why is it based on Ubuntu?

Ubuntu LTS has a large user base, a great deal of support, and is well maintained.

## What does it look like?

![A terminal and the app launcher](assets/screenshot-term-rofi.png?raw=true "A single terminal (stterm) and the app launcher.")


## What's the current level of quality?

Regolith will require you to get your hands dirty.  It may be considered better than building i3wm from sources in terms of polish but certainly not something you won't have to tweak and fix to get working exactly how you like it.  
