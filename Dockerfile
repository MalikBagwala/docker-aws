FROM docker

RUN apk add python3
RUN pip3 install awscli

RUN docker --version && aws --version