#NCCL_DEBUG=INFO python ./deepy.py train.py -d configs small.yml local_setup.yml --hostfile /mnt/project/gpt-neox/configs/hostfile
python ./deepy.py train.py -d configs small.yml local_setup.yml