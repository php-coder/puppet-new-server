#!/bin/sh
CODENAME="$(lsb_release -c | awk '{print $2}')"
PACKAGE="puppetlabs-release-$CODENAME.deb"
wget -- "http://apt.puppetlabs.com/$PACKAGE"
dpkg -i "$PACKAGE"
rm -fv -- "$PACKAGE"
apt-get update
apt-get -y install puppet
