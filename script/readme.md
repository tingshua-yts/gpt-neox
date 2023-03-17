# run docker

start docker in each node

    nvidia-docker run --name=deepspeed-gpt-neox -d --net=host \
                      -v /mnt:/mnt \
                      --shm-size=32g \
                      -w /mnt/project/gpt-neox   -it ai-studio-registry-vpc.cn-beijing.cr.aliyuncs.com/kube-ai/gpt-neox:0.0.2 /bin/bash

# start and config ssh
set sshservice port on each node

    echo 'Port 33' >> /etc/ssh/sshd_config

start ssh service on each node

    service ssh start

specify port on launcher node, xx.xx.xx.xx is node IP

    echo 'Host xx.xx.xx.xx' >> /etc/ssh/ssh_config
    echo 'Port 33' >> /etc/ssh/ssh_config
    echo 'Host xx.xx.xx.xx' >> /etc/ssh/ssh_config
    echo 'Port 33' >> /etc/ssh/ssh_config


# run pipeline parallel training
    sh script/train_pp.sh