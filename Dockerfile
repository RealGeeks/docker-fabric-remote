FROM python:2.7

RUN pip install pyyaml requests fabric_remote

ENV FABFILE_PATH "/data/fabfile.py"

WORKDIR /root/
RUN ["mkdir", "/root/.ssh"]
ADD start.sh /root/

CMD ["./start.sh"]

EXPOSE 1234
