FROM node:8.4.0

EXPOSE 3000
RUN apt-get update && apt-get install -y apt-transport-https
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | \
      tee /etc/apt/sources.list.d/azure-cli.list
RUN apt-key adv --keyserver packages.microsoft.com --recv-keys 417A0893
RUN apt-get update && apt-get install azure-cli    