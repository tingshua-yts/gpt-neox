#!/bin/bash
set -x
name=gpt
image=ai-studio-registry-vpc.cn-beijing.cr.aliyuncs.com/kube-ai/gpt-neox:0.0.2
flag=$(sudo docker ps  | grep "$name" | wc -l)
if [ $flag == 0 ]
then
    sudo nvidia-docker stop "$name"
    sudo nvidia-docker rm "$name"
    sudo nvidia-docker run --name="$name" -d --net=host \
         -v /mnt:/mnt \
         --shm-size=32g \
         --privileged\
    -w /mnt   -it $image /bin/bash
#    -w /workspace   -it pytorch/pytorch:1.9.0-cuda10.2-cudnn7-devel /bin/bash
fi
sudo docker exec -it "$name" bash
