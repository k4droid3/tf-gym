# Tf-gym
This docker image adds all the required packages on tensorflow/tensorflow:latest-gpu-py3-jupyter image to make OpenaAI gym, GUI work with NVIDIA GPU inside the container.

##  Getting started

To get started, make sure to go through [this](https://www.tensorflow.org/install/docker) tutorial to install nvidia-docker2 and tensorflow/tensorflow:latest-gpu-py3-jupyter.

#### OpenGL

To make openGL, gedit and other GUI applications work

Enter the following command in the host PC
> sudo xhost +local:docker

it isn't very secure but it is easy. If you want it to be more secure instead please, checkout [this](http://wiki.ros.org/docker/Tutorials/GUI) article

Don't forget to enter following after use
> sudo xhost -local:docker

use the tags listed in X-server sub-section of usage section with the docker run command

#### Nvidia

use the tags listed in GPU sub-section of usage section with the docker run command

#### Jupyter

to make jupyter work on your host's browser use tags listed in jupyter sub-section of Usage Section.

### Prerequisities

In order to run this container you will need nvidia-dokcer2 and tensorflow/tensorflow installed on your system. Please, go through [this](https://www.tensorflow.org/install/docker) article to install.

### Usage

#### Container Parameters

To check if it installed correctly
> docker run --rm tf-gym:latest

To run interactive shell
> docker run -it --rm tf-gym:latest bash

#### X-server
> --volume="$HOME/.Xauthority:/home/tf/.Xauthority:rw" 
> --env="DISPLAY"

#### GPU
> -e NVIDIA_DRIVER_CAPABILITIES=all
> --gpus all

#### Jupyter
> --net=host

## Built With

### apt

* git
* gedit
* build-essential
* libgl1-mesa-dev
* mesa-utils
* python3-opengl
* python-opengl

### pip

* seaborn
* scikit-learn
* pandas
* gym
* torch
