## Gerrit for Debian GNU/Linux

This is a package of [Gerrit](http://code.google.com/p/gerrit/) for [Debian GNU/Linux](http://http://www.debian.org/)

## How to build the package

Clone the package repository and change dir

    $ git clone git@github.com:tarent/gerrit-debian.git
    $ cd gerrit-debian

Build the Docker image for your distribution (currently only Debian Wheezy supported)

    $ docker build --rm -t gerrit-package-builder:wheezy docker-wheezy

Now building the package is easy as executing the command below:

    $ docker run -i -t --rm \
          -v $(pwd):/source -v $(pwd):/build-output \
          gerrit-package-builder:wheezy

You can add arbitrary arguments to `dpkg-buildpackage` by appending them to the command above, e.g:

    $ docker run -i -t --rm \
          -v $(pwd):/source -v $(pwd):/build-output \
          gerrit-package-builder:wheezy -sn -b -d
