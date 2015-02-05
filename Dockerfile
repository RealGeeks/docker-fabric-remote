FROM python:2.7

RUN pip install pyyaml requests fabric_remote

ENV FABFILE_PATH "/data/fabfile.py"

WORKDIR /root/
RUN ["mkdir", "/root/.ssh"]
RUN  echo "    IdentityFile /root/.ssh/id_rsa" >> /etc/ssh/ssh_config
ADD start.sh /root/

CMD ["./start.sh"]

EXPOSE 1234
