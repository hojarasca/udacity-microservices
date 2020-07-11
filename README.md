[![hojarasca](https://circleci.com/gh/hojarasca/udacity-microservices.svg?style=svg)](https://circleci.com/gh/hojarasca/udacity-microservices.svg?style=svg)

## App Overview

This is a small app that uses an `sklearn` model to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.


## Setup

In order to run all the scripts it's necesary to have python3, docker and minikube installed.

The first thing is create a virtual env for the project. That can be done with

`make setup`.

Then you can source the virtual env with:

`source ./venv/bin/activate`

Once that's done the next step is install depdencies:

`make install`

In order to lint the code hadolint is required. It can be downloaded with

`make download-hadolint`

Once all of that is done the project can be linted:

`make lint`.


## Scripts

A docker image can be built using `run_docker.sh`. This script build a docker image under the tag `udacity-predictions` and then runs a container
based on that image exposing the app in the port 8090.

Once the docker container is running a prediction can be made by running `make_prediction_docker.sh`.

The app can be deployed to a kubernetes cluster by running the script `run_kubernetes.sh`. In order to make a prediction
agains the kubernetes version of the app you can run `make_prediction_kubernetes.sh`. That last script expects the cluster to be
a minikube cluster.

`upload_docker.sh` uploads the app's image to a personal [docker registry](https://hub.docker.com/repository/docker/hojarasca/udacity-predictions).
In order to do this first ensures that the docker environment is logged in, then it tags the image and lastly it pushes it.


## Logs

The logs for the app running on docker can be be found at `output_txt_files/docker_out.txt`.
The ones for the app running on kubernetes can be found at `output_txt_files/kubernetes_out.txt`.

## Other changes

I made tiny changes in app.py to make pylint scores 10/10. The other changes I made were ones
specified by the project, which were basically add logs.