<img align="right" width="160" height="160" title="Regolith Logo" src="./assets/logo-icon.png">

# Regolith Desktop Environment

Regolith is a set of open-source Linux UI components that combine to provide a productivity-centric desktop experience on top of Ubuntu, by reducing unnecessary visual clutter and maximizing screen space for applications.

## What does it look like?

![After login](assets/screenshot-empty.png?raw=true "After login.")

Regolith was optimized to devote almost the entire screen to applications.  There is a single on-screen UI element, the bar, at the bottom which gives the user some information such as current and all workspaces, currently selected window, CPU utilization, power state, voluve, time, and wireless network.  There is no dock, global file menu, widgets, or other visual clutter between the user and the application.

---

![A terminal](assets/screenshot-terminal.png?raw=true "A single terminal (stterm)")


**st**, a minimal terminal emulator, has been customized for use with Regolith.

---

![Three terminals](assets/screenshot-terminal-3.png?raw=true "Regolith uses i3wm for window management, a tiling window manager that frees the user from micromanaging window layouts.")


Regolith uses i3wm for window management, a tiling window manager that frees the user from micromanaging window layouts.

---

![Rofi Launcher](assets/screenshot-rofi.png?raw=true "Rofi is the program launcher for launching applications quickly without taking up any screen space.")

Rofi is the program launcher for launching applications quickly without taking up any permanent screen space.

# Tour

## Aesthetic

* The [Source Code Pro](https://fonts.google.com/specimen/Source+Code+Pro) font from Adobe
* The [Solarized Dark palette](https://ethanschoonover.com/solarized/) 
* Color is combined with simple iconography for system status
* [Materia Light GTK theme](https://github.com/nana-4/materia-theme)

## System Bar

Upon login, you'll find a bar at the bottom of the screen.  This is divided into three primary sections.  From left to right;

1. Workspaces ~ A list of active workspaces and their corresponding index.  The labels for each workspace are defined in i3wm's config file.
2. Focused Window ~ Because i3wm does not render the title bars of applications, the primary focused application's title is displayed here.
3. System Status ~ A handfull of system indicators such as CPU utilization and active network connection live here.

## Launching Applications

Rofi can be invoked via Meta-space.  This presents a list of available programs on the PATH along with desktop applications.  There are no icons or folders on the Regolith desktop.  Applications are launched either via Rofi or from a terminal.

## Workspaces

10 virtual workspaces are available.  Workspaces provide the primary means of dividing applications across screens.  Meta-<number key> is used to select a workspace.  By default each workspace is empty and will only be visible in the System Bar if a program has a window in that workspace.  See the [i3wm users guide](https://i3wm.org/docs/userguide.html#_using_i3) for much more on workspace management.

# Open Issues and Unimplemented Features

Regolith is a small project and still has many rough edges.  Have a look at the [Github issues](https://github.com/kgilmer/Regolith-Desktop-Environment/issues) for more information.

# FAQ

## What components is Regolith composed of?

[i3wm-gaps](https://github.com/Airblader/i3), [polybar](https://github.com/jaagr/polybar), [rofi](https://github.com/DaveDavenport/rofi) are combined with the [solarized color palette](http://ethanschoonover.com/solarized) and the [Source Code Pro](https://github.com/adobe-fonts/source-code-pro) font.

## Who's Regolith made for?

Anyone who prefers to focus on their applications rather than visual bloat and ceremony might like the Regolith Desktop.  It is best suited for those that spend a lot of time on their computer and prefer to get things done with a minimum of ceremony.  If you're afraid of using the terminal, Regolith is probably not for you.

## Why does the world need yet another Linux desktop environment?

i3wm by default lacks polish.  Rather than just tweaking a one-off configuration, all changes are bundled in Debian packages making installation and upgrading consistent and simple.  Additionally, having the gnome session functionality (as provided by Ubuntu) saves us from having to deal with a lot of the low-level stuff that isn't very interesting.

## Why a tiling window manager?

Various desktop UI metaphores have come and gone over the years.  For new computer users, UI elements such as large icons and big simple menus provide visual .  However for those of us that have been using computers for awhile now, such things mostly get in the way.  Tiling window managers such as i3wm simply let the user interact with their applications with a minimum of overhead or ceremony.  A simple and consistent set of hotkeys provide the power and expressivity that an average computer user needs to configure their UI environment.

## Why is it based on Ubuntu?

Ubuntu LTS has a large user base, a great deal of support, and is well maintained.

# Install

Regolith is installed on top of an existing Ubuntu 18.04 instance.  If you're not already using Ubuntu, it must be installed before proceeding.

## Enable the Regolith PPA

```
$ sudo add-apt-repository ppa:kgilmer/regolith
$ sudo apt update
```

## Install the Regolith Meta Package

```
$ sudo apt install regolith-desktop-env
```


## Video of Install

![Install Video](https://github.com/kgilmer/Regolith-Desktop-Environment/raw/master/assets/regolith-install.gif)

## Quick Start

1. Log out of your current desktop session. (Reboot or restart `gdm` <this will kill your current xsession>)
2. At the greeter, select the Ubuntu icon (or settings button on login screen) to access the session type menu.  Select Regolith.
3. Log in. If Regolith is installed correctly, only a status bar will show at the bottom of the screen.
4. Basic Hotkeys
    - Meta-enter for a terminal.  
    - Meta-space for an application menu. 
    - Meta-arrow for switching windows
    - Meta-num for creating/switching workspace
    - Meta-f for toggling fullscreen
    - (Meta = Windows Key)
5. Get to work and have fun.


## What's the current level of quality?

Regolith will require you to get your hands dirty.  It may be considered better than building i3wm from sources in terms of polish but certainly not something you won't have to tweak and fix to get working exactly how you like it. 

## What's contained in this repo?

Regolith is simply a set of existing open source programs plus some configuration.  This repo contains the Debian package metadata necessary to build the packages that are not already available in Ubuntu's standard repositories as well as Regolith-specific configuration files that give the environments look and feel.  Anyone wishing to produce something similar can fork the repo, create their own Launchpad.net PPA and update the packages as needed.
