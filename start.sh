#!/bin/sh

# save project path
PYTHON_PATH=$(cd "$(dirname "$0")" && pwd)
echo $PYTHON_PATH

# run python container
docker run --rm --name python_container -itd -e DISPLAY=localhost:0.0 -v $PYTHON_PATH:/python -w /python python bash

# show std io/err in python container
docker attach python_container

# escape read sequence
# ctrl + p, ctrl + q

# excute command in running container
# docker exec -it python_container bash
