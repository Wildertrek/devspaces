FROM quay.io/devfile/universal-developer-image:ubi8-latest

RUN curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

WORKDIR /projects