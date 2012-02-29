#!/bin/bash

# Define versions (git refs) of dependencies.
LEAFLET_REF="master"

# Begin real script.

git submodule update

# Update leaflet.
pushd game/app/assets
rm -r images/leaflet
rm stylesheets/leaflet.css
rm stylesheets/leaflet.ie.css
rm javascripts/leaflet.js
popd
pushd leaflet
git checkout $LEAFLET_REF
jake build[1vvvvrvt,custom]
popd
pushd leaflet/dist
cp -r images ../../game/app/assets/images/leaflet
cp leaflet.css ../../game/app/assets/stylesheets/
cp leaflet.ie.css ../../game/app/assets/stylesheets/
mv leaflet-custom.js ../../game/app/assets/javascripts/leaflet.js
rm leaflet-custom-src.js
popd

# Update gems.
pushd game
bundle update
popd
