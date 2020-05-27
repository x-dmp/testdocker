FROM ubuntu
RUN sed -i 's#http://archive.ubuntu.com/#http://mirrors.tuna.tsinghua.edu.cn/#' /etc/apt/sources.list;
RUN apt-get update
RUN apt-get install -y gcc libc-dev make
RUN mkdir -p /home/user/myapp
ADD hello.c /home/user/myapp
ADD hello.txt /home/user/myapp
WORKDIR /home/user/myapp
RUN gcc -static hello.c -o hello-C
ENTRYPOINT "./hello-C"
