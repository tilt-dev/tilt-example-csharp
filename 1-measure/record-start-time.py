import re
import time

f = open("hello-tilt/Pages/Index.cshtml.cs", "r")
contents = f.read()
f.close()

timestamp_ms = float(time.time()) * 1000
contents = re.sub(r'startTimeMillis = .*;',
                  "startTimeMillis = %d;" % timestamp_ms,
                  contents)

f = open("hello-tilt/Pages/Index.cshtml.cs", "w")
f.write(contents)
f.close()