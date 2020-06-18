FROM docker

RUN apk add python3
RUN apk add --update py-pip
RUN pip install awscli

RUN docker --version && aws --version

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]