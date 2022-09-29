FROM nvidia/cuda:11.7.0-cudnn8-runtime-ubuntu22.04
WORKDIR /opt
COPY startup.sh /opt/startup.sh
RUN apt update && apt-get install -y wget git xz-utils
RUN sed -i 's/\r$//' /opt/startup.sh
RUN mkdir /mnt/sd
CMD bash /opt/startup.sh
