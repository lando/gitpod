# docker build -t devwithlando/gitpod:1 .

FROM gitpod/workspace-full

RUN wget https://files.lando.dev/installer/lando-x64-stable.deb \
    && sudo dpkg -i --ignore-depends docker-ce,iptables lando-x64-stable.deb \
    && rm -rf lando-x64-stable.deb \
    && mkdir -p ~/.lando/cache \
    && echo "proxy: 'OFF'\nbindAddress: '0.0.0.0'\nproxyBindAddress: '0.0.0.0'" > ~/.lando/config.yml \
    && echo false > ~/.lando/cache/report_errors \
    && lando --clear 