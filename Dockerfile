FROM nvidia/cuda:10.1-runtime-ubuntu18.04
ENV PATH="/root/miniconda3/bin:${PATH}"

RUN apt-get update && apt-get install -y rsync htop git openssh-server

RUN apt-get install python3-pip -y
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN pip3 install --upgrade pip

#CONDA
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN chmod +x Miniconda3-latest-Linux-x86_64.sh
RUN ./Miniconda3-latest-Linux-x86_64.sh -b
RUN conda init bash

# RUN conda install pytorch==1.10.1 torchvision==0.11.2 torchaudio==0.10.1 -c pytorch
RUN pip install torch==1.7.1+cu101 torchvision==0.8.2+cu101 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html

RUN conda install ffmpeg
RUN pip install opencv-python-headless dominate scipy tqdm matplotlib scikit-image

WORKDIR /vid2vid
CMD ./scripts/zizi/test.sh
