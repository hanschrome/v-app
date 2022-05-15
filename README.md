# V-APP is a project to abstract your applications from your operative system

V-APP is just a bash scripting with some file structure to run GUI applications from containers. 

## How it works

`./v-app` - To list the available apps. Not so intuitive, you can create an alias.

`./v-app [app]` - To build & run an app. It will be built once.

Example: `./v-app firefox`

## Configure with Rofi

The launcher [Rofi](https://github.com/davatorium/rofi) allows to execute applications easily. Let's explain here how to configure it.

1. Once installed Rofi, install a keybinding for your OS

For example: [sxhkd](https://wiki.archlinux.org/title/Sxhkd), [sxhkd on github](https://github.com/baskerville/sxhkd).

Once installed sxhkd, create its configuration file (as a user, not root): mkdir .config/sxhkd touch .config/sxhkd/sxhkdrc

Add configuration on file, in this case we bind super+e to launch Rofi:

```
super + e
	rofi -show run
```

Finally, add to your .bashrc the v-app/Launchers on your path, for example:

```
# v-app path

export PATH=$PATH:~/v-app/Launchers
```

Reload .bashrc (. .bashrc), reload sxhkd (you should create a .conf file on services daemons, check documentation) and press super+e.

Easy! you got your Rofi launcher with v-app running. All your apps are now running under virtual environments.

![Screenshot of menu listing only the apps](https://github.com/hanschrome/v-app/blob/main/docs/screenshots/dmenu-rofi.png?raw=true)

## Why

We typically virtualize CLI applications for software development purposes. And as a developer we know
 perfectly the importance of abstract business from the software infrastructure. Now the OS is being 
 abstracting to the apps. Shell scripting can run on MacOS, all Linux distributions and Windows WSL.

We all hate when some software requires some packages, and we get conflicts with them, also running
 software directly on our computer could be risky.

Being the launchers bash scripting, you can write the command on a Launcher and add with a pretty icon on your
 desktop or on your dock.
 
## Just use docker-compose tho

It's important to keep each v-app individual, so in the future to add an app could be like ´git clone [url] Apps/[app]´.

## Versioning

This repository only has a main branch. So all development has to be updated and tested before to merge in main.

No gitflow. No agile. Something works, something gets merged. I'm working alone, I can be agile without gitflow.

## Dependencies

- docker
- realpath

## Future features

- Camera & microphone integration from host machine.
- Easier ways to "add a pendrive" to a v-app. Now it should be added manually as a volume from the mount point.
- More v-apps :)
