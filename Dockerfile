FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

RUN chmod -R 777 /tmp

RUN apt-get update
RUN apt-get install -y --no-install-recommends git gedit --fix-missing
RUN apt-get install -y --no-install-recommends build-essential libgl1-mesa-dev mesa-utils --fix-missing
RUN apt-get install -y --no-install-recommends python-opengl python3-opengl --fix-missing
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN pip3 install seaborn
RUN pip3 install scikit-learn
RUN pip3 install pandas
RUN pip3 install torch
RUN git clone https://github.com/openai/gym
RUN cd gym && pip3 install -e . && cd ~
RUN rm -rf gym


CMD ["echo", "It's working!! use -it and bash to open interactive shell..."]

