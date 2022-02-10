# docker build -t devwithlando/gitpod:1 .

FROM gitpod/workspace-full

RUN sudo groupadd docker \
    && sudo usermod -aG docker $USER \
    && git clone https://github.com/lando/cli.git \
    && cd cli \
    && yarn install --prefer-offline --frozen-lockfile \
    && yarn build:cli \
    && sudo mv ./dist/@lando/cli /usr/local/bin/lando \
    && sudo chmod +x /usr/local/bin/lando \
    && mkdir -p ~/.lando/cache \
    && echo "proxy: 'OFF'\nbindAddress: '0.0.0.0'\nproxyBindAddress: '0.0.0.0'" > ~/.lando/config.yml \
    && echo false > ~/.lando/cache/report_errors \
    && lando --clear 