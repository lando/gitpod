# docker build -t devwithlando/gitpod-source:1 .

FROM gitpod/workspace-base

RUN sudo rm /usr/local/bin/docker-compose \
    && sudo curl -fsSL -o /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64 \
    && sudo chmod +x /usr/local/bin/docker-compose \
    && sudo curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && sudo curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && sudo echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && sudo apt-get -y update && sudo apt-get install -y nodejs yarn \
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
