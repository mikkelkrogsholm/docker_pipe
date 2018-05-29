This is the repo for trying to build a data science pipeline using containers.

Basically the idea is to have containers that do one thing - like functions. We call these: functainers.

Right now the pipe works by have a shared volume between the containers, but there is also the possibility of piping containers using stdin/stdout (that setup still needs to be developed).

## The pipe

The pipe is very simple and only has two steps, but provides a recipe that can be expanded upon:

1) Get the data
A Python container runs a python script that fetches the iris data set from a source online and stores it in a shared folder.

2) Run a model
A R container then reads in that data, runs a clustering algorithm on it and produces a plot of the clusters and stores that in the same folder.

## Running the pipe

First you need to build the containers. You do that like this:

#### Python container
```
docker build -t pipe_py ./py_container
```

#### R container
```
docker build -t pipe_r ./r_container
```

#### Start the pipe
Then you `chmod` the shell script and execute it:

```
# make it executable
chmod +x my_pipe_line.sh

# execute the pipe
./my_pipe_line.sh
```