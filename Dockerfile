FROM quay.io/devfile/universal-developer-image:ubi8-latest

USER 0


COPY VA-Internal-S2-RCA2.pem /etc/pki/ca-trust/source/anchors/
RUN sudo update-ca-trust extract
  
RUN \
  sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc && \
  sudo yum install -y https://packages.microsoft.com/config/rhel/8/packages-microsoft-prod.rpm && \
  sudo dnf install -y azure-cli
  

USER user

WORKDIR /projects