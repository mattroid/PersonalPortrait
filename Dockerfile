FROM trafferty/docker-ipython-opencv

# the base image doesn't have the needed version of requests to do json posts
run apt-get update
RUN apt-get remove python3-requests -y
RUN cd /root; git clone https://github.com/kennethreitz/requests.git; cd requests; python3 setup.py install

ENV PASSWORD password

# dependency so we can watch the file system for new files
RUN pip install watchdog

WORKDIR /data

#this is for npm, so you can get a console to execute from
#CMD ["/bin/bash"]