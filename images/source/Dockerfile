# docker build -t devwithlando/gitpod-source:1 .

FROM gitpod/workspace-full

RUN git clone https://github.com/lando/cli.git \
    && cd cli \
    && yarn install --prefer-offline --frozen-lockfile \
    && yarn build:cli \
    && sudo mv ./dist/@lando/cli /usr/local/bin/lando \
    && sudo chmod +x /usr/local/bin/lando && sudo chown root:root /usr/local/bin/lando \
    && mkdir -p ~/.lando/cache
    
RUN mkdir -p /scripts
COPY postinst.sh /scripts
WORKDIR /scripts

RUN chmod +x postinst.sh && ./postinst.sh \
    && echo "proxy: 'OFF'\nbindAddress: '0.0.0.0'\nproxyBindAddress: '0.0.0.0'" > ~/.lando/config.yml \
    && echo false > ~/.lando/cache/report_errors \
    && sudo chmod 755 ~/.lando \
    && lando --clear 