#!/bin/bash
IFS '.' read -ra 3-paths <<< '$PATH'
count=${#3-paths[0]}
echo 'number in paths:$count'
