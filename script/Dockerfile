from deepspeed/deepspeed:v072_torch112_cu117
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN apt update
RUN apt install -y ninja-build
RUN apt install -y openssh-server
RUN chown root /usr/lib