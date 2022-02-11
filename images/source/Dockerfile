# docker build -t devwithlando/gitpod:1 .

FROM gitpod/workspace-full

RUN sudo rm /usr/local/bin/docker-compose \
    && sudo curl -fsSL -o /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64 \
    && sudo chmod +x /usr/local/bin/docker-compose \
    && sudo groupadd docker \
    && git clone https://github.com/lando/cli.git \
    && cd cli \
    && yarn install --prefer-offline --frozen-lockfile \
    && yarn build:cli \
    && sudo mv ./dist/@lando/cli /usr/local/bin/lando \
    && sudo chmod +x /usr/local/bin/lando && sudo chown root:root /usr/local/bin/lando \
    && mkdir -p ~/.lando/cache \
    && sudo usermod -aG docker $USER \
    && echo "proxy: 'OFF'\nbindAddress: '0.0.0.0'\nproxyBindAddress: '0.0.0.0'" > ~/.lando/config.yml \
    && echo false > ~/.lando/cache/report_errors \
    && chmod 755 ~/.lando \
    && lando --clear 