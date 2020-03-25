#!/bin/sh

set -e

tmpfile=$(mktemp /tmp/tilt-example-csharp.XXXXXX)
# NOTE(dmiller): this requires GNU date
cat hello-tilt/Pages/Index.cshtml.cs | \
    sed -e "s/startTimeMillis = .*;/startTimeMillis = $(date +%s%3N);/" > \
    $tmpfile
mv $tmpfile hello-tilt/Pages/Index.cshtml.cs
