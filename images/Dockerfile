# docker build -t devwithlando/gitpod:1 .

FROM gitpod/workspace-full

RUN sudo apt-get -y update \
    && sudo apt-get -y install apt-transport-https ca-certificates gnupg lsb-release \ 
    && sudo apt-get -y install docker-ce docker-ce-cli containerd.io \
    && sudo curl -fsSL -o /usr/local/bin/lando "https://files.lando.dev/cli/lando-linux-x64-edge" \
    && sudo chmod +x /usr/local/bin/lando \
    && mkdir -p ~/.lando/cache \
    && echo "proxy: 'OFF'\nbindAddress: '0.0.0.0'\nproxyBindAddress: '0.0.0.0'" > ~/.lando/config.yml \
    && echo false > ~/.lando/cache/report_errors \
    && lando --clear 