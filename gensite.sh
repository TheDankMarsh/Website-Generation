#!/bin/bash

echo "What shall we name this web site good sir?"
read dirname
for gen in $dirname/index.html $dirname/style.css $dirname/script.js; do
    [ ! -d $(dirname $dirname) ] || mkdir -p $dirname
    touch $gen
done
echo "<!DOCTYPE html>
<html>
<head>
    <title>Your HTML Template</title>
        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">
    <script src=\"script.js\"></script>
</head>
p
<body>
    <h1>Hello, World!</h1>
    <p>This is your HTML template.</p>
</body>
</html>" >"$dirname/index.html"
