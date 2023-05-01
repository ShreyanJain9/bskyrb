#!/bin/bash

# get the current version from lib/bskyrb/version.rb
VERSION=`cat lib/bskyrb/version.rb | grep "VERSION =" | cut -d '"' -f 2`
echo "Building gem version $VERSION"

# build the gem
gem build bskyrb.gemspec

# install the gem locally
gem install ./bskyrb-$VERSION.gem
