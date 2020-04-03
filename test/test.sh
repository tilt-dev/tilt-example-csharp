#!/bin/bash

set -ex

# cd to the root of the repo.
cd $(dirname $(dirname $0))

echo "Testing 0-base"
tilt ci --file 0-base/Tiltfile
tilt down --file 0-base/Tiltfile

echo "Testing 1-measured"
tilt ci --file 1-measure/Tiltfile
tilt down --file 1-measure/Tiltfile

echo "Testing 2-build-locally"
tilt ci --file 2-build-locally/Tiltfile
tilt down --file 2-build-locally/Tiltfile

echo "Testing 3-live-update"
tilt ci --file 3-live-update/Tiltfile
tilt down --file 3-live-update/Tiltfile
