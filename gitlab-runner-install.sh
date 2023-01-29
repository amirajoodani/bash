#!/bin/bash
## Install GitLab Runner on Ubuntu 16.04
## https://docs.gitlab.com/runner/install/linux-manually.html
## Config do Runner /etc/gitlab-runner/config.toml
## Para registrar e usar uma CA auto assinada
## gitlab-runner register --tls-ca-file="/home/gitlab-runner/data/certs/ca.crt"

## Install Docker
##apt-get update
##apt-get upgrade
apt-get install -y apt-transport-https ca-certificates curl software-properties-common docker.io socat
systemctl start docker
systemctl enable docker


wget https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64 -O /usr/local/bin/gitlab-runner

chmod +x /usr/local/bin/gitlab-runner
useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash
gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner

mkdir -p /home/gitlab-runner/data/certs
true|openssl s_client -connect git.domain.com.br:443 2>/dev/null|openssl x509 > /home/gitlab-runner/data/certs/ca.crt

gitlab-runner start
gitlab-runner verify
