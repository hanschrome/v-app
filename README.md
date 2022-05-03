# V-APP is a project to abstract your applications from your operative system

V-APP is just a bash scripting with some file structure to run GUI applications from containers. 

## How it works

`./v-app` - To list the available apps. Not so intuitive, you can create an alias.

`./v-app [app]` - To build & run an app. It will be built once.

Example: `./v-app firefox`

## Why

We typically virtualize CLI applications for software development purposes. And as a developer we know
 perfectly the importance of abstract business from the software infrastructure. Now the OS is being 
 abstracting to the apps. Shell scripting can run on MacOS, all Linux distributions and Windows WSL.

We all hate when some software requires some packages, and we get conflicts with them, also running
 software directly on our computer could be risky.

Being the launchers bash scripting, you can write the command on a Launcher and add with a pretty icon on your
 desktop or on your dock.
 
## Just use docker-compose tho

In fact, it will be needed for apps which needs some hardware like Firefox with the camera, but it will be
 inside the app directory. It's important to keep each v-app individual, so in the future to add an app could be
 like ´git clone [url] Apps/[app]´.

## Versioning

This repository only has a main branch. So all development has to be updated and tested before to merge in main.

No gitflow. No agile. Something works, something gets merged. I'm working alone, I can be agile without gitflow.

## Dependencies

- docker
- realpath

## Future features

- Camera & microphone integration from host machine.
- Aliases to be able to configure ie "firefox-app" and run the container.
- Easier ways to "add a pendrive" to a v-app. Now it should be added manually as a volume from the mount point.
- More v-apps :)
