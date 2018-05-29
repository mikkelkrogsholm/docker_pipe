#!/bin/bash

# execute the python container
docker run --rm -v $PWD/shared_vol/:/shared_vol/ pipe_py

# execute the r container
docker run --rm -v $PWD/shared_vol/:/shared_vol/ pipe_r
