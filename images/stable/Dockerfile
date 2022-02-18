# docker build -t devwithlando/gitpod:1 .

FROM gitpod/workspace-base

RUN sudo rm /usr/local/bin/docker-compose \
    && wget https://files.lando.dev/installer/lando-x64-latest.deb \
    && sudo dpkg -i --ignore-depends docker-ce,iptables lando-x64-latest.deb && rm -rf lando-x64-latest.deb \
    && mkdir -p ~/.lando/cache \
    && echo "proxy: 'OFF'\nbindAddress: '0.0.0.0'\nproxyBindAddress: '0.0.0.0'" > ~/.lando/config.yml \
    && echo false > ~/.lando/cache/report_errors \
    && chmod 755 ~/.lando \
    && lando --clear 