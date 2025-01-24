FROM jenkins/agent
USER root
RUN apt-get update && apt-get install -y build-essential
RUN groupadd -g 1001 builder && useradd -m -u 1001 -g 1001 builder
USER builder
VOLUME /home/jenkins