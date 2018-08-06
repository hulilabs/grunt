# Introduction
This repo contains Grunt, a dockerized service to run Grunt tasks in Alpine.

It also uses the latest available nodejs stable version

![Grunt](https://avatars2.githubusercontent.com/u/1630826?v=3&s=200)

Grunt let's us automate tasks when building web applications. For example, we run tasks to compress our web files (images, js, css) to serve them more efficiently, also we run tasks to check the code format (jshint, scsshint), or we can also run watchers to execute tasks when files are modified. If you are new to Grunt we recommend you to check the [official documentation](http://gruntjs.com/getting-started) first.

# Getting started

## Requirements
- [Docker](https://docs.docker.com/engine/installation/)

## Configuration
Check the [configuring tasks](http://gruntjs.com/configuring-tasks) section of the Grunt official documentation as a guideline for configuring your tasks.

## Usage
This service is meant to start a docker container, run a grunt task and then be removed when the task is completed. For example:
```
docker run -it --rm -v $(pwd):/srv -w="/srv/src/resource" huli/grunt:alpine jshint
```

The above comand will start a docker container with the `huli/grunt` image, mounting the folder project in the `/srv` folder and setting `/srv/src/resource` as the working directory, this should be the folder where the `Gruntfile.js` is located. Finally it will run npm install and execute the `jshint` task.
