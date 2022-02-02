# docker build -t devwithlando/gitpod:1 .

FROM gitpod/workspace-full

RUN sudo groupadd docker \
    && sudo usermod -aG docker $USER \
    && wget https://files.lando.dev/installer/lando-x64-latest.deb \
    && sudo dpkg -i --ignore-depends docker-ce,iptables lando-x64-latest.deb && rm -rf lando-x64-latest.deb \
    && echo "proxy: 'OFF'\nbindAddress: '0.0.0.0'\nproxyBindAddress: '0.0.0.0'" > ~/.lando/config.yml \
    && echo false > ~/.lando/cache/report_errors \
    && lando --clear 