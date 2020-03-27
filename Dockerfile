# Firefox over VNC
#
# VERSION               0.1
# DOCKER-VERSION        0.2

from	ubuntu:18.04
# make sure the package repository is up to date
#run	echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run	apt-get update

# Install vnc, xvfb in order to create a 'fake' display and firefox
#run	apt-get install -y x11vnc xvfb firefox
#run	mkdir /.vnc
# Setup a password
#run	x11vnc -storepasswd 1234 ~/.vnc/passwd
run	mkdir /.app
run echo "hello world from app!" >| ~/.app/app.sh
run cat ~/.app/app.sh
# Autostart firefox (might not be the best way to do it, but it does the trick)
#run	bash -c 'echo "firefox" >> /.bashrc'
