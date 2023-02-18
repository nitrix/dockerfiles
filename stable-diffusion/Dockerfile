FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04
WORKDIR /opt
RUN apt-get update && apt-get install -y wget git xz-utils curl libsm6 libxrender1 libfontconfig1 libgtk2.0-dev unzip
COPY startup.sh /opt/startup.sh
RUN sed -i 's/\r$//' /opt/startup.sh
RUN mkdir /mnt/sd
CMD bash /opt/startup.sh
