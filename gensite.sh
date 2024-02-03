#!/bin/bash

echo "What shall we name this web site good sir?" 
read dirname
for gen in $dirname/index.html $dirname/style.css $dirname/script.js; do [ ! -d `dirname $dirname` ] || mkdir -p $dirname; touch $gen;done 
