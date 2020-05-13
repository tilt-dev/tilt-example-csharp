
echo "Testing 0-base"
tilt ci --file 0-base/Tiltfile
if (!$?) {
    throw "failed"
}
tilt down --file 0-base/Tiltfile

echo "Testing 1-measure"
tilt ci --file 1-measure/Tiltfile
if (!$?) {
    throw "failed"
}
tilt down --file 1-measure/Tiltfile

echo "Testing 2-build-locally"
tilt ci --file 2-build-locally/Tiltfile
if (!$?) {
    throw "failed"
}
tilt down --file 2-build-locally/Tiltfile

echo "Testing 3-live-update"
tilt ci --file 3-live-update/Tiltfile
if (!$?) {
    throw "failed"
}
tilt down --file 3-live-update/Tiltfile
