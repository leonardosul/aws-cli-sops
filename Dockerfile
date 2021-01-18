FROM amazon/aws-cli:2.1.19

# Install SOPS
RUN yum install wget git -y
RUN wget https://github.com/mozilla/sops/releases/download/v3.6.1/sops-3.6.1-1.x86_64.rpm
RUN rpm -i sops-3.6.1-1.x86_64.rpm

ENTRYPOINT ["/bin/bash", "-c"]
