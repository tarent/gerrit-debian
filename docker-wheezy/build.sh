#!/bin/sh

mkdir -p /tmp/build-package/code
cp -a * /tmp/build-package/code/

cd /tmp/build-package/code/

dpkg-buildpackage $@

cp /tmp/build-package/*.deb /build-output
chmod a+rw /build-output/*.deb
