#!/bin/bash

echo "all args passed to scripts: $@"
echo "number of variables passed to script: $#"
echo "script name: $0"
echo "present directory: $PWD"
echo "who is running: $USER"
echo "home directory of current user: $HOME"
echo "PID of this script: $$"
sleep 100 &
echo "PID of recently executed background processs: $!"
echo "all args passed to scripts: $*"