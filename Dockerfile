FROM debian:latest
LABEL MAINTAINER="https://github.com/lsgdefault/xdphisher"

WORKDIR /xdphisher/
ADD . /xdphisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./xdphisher.sh"]
