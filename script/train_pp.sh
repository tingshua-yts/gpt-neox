export MASTER_ADDR=192.168.9.15
python ./deepy.py train.py -d configs small_pp.yml local_setup.yml --hostfile ./configs/hostfile

