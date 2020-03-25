#!/bin/sh

set -e

tmpfile=$(mktemp /tmp/tilt-example-csharp.XXXXXX)
cat hello-tilt/Pages/Index.cshtml.cs | \
    sed -e "s/startTimeSecs = .*;/startTimeSecs = $(date +%-s);/" | \
    sed -e "s/startTimeNanos = .*;/startTimeNanos = $(date +%-N);/" > \
    $tmpfile
mv $tmpfile hello-tilt/Pages/Index.cshtml.cs
