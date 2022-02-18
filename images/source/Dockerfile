# docker build -t devwithlando/gitpod-source:1 .

FROM gitpod/workspace-node

RUN sudo rm /usr/local/bin/docker-compose
RUN sudo curl -fsSL -o /usr/local/bin/docker-compose https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64
RUN sudo chmod +x /usr/local/bin/docker-compose
RUN sudo groupadd docker
RUN git clone https://github.com/lando/cli.git
RUN cd cli
RUN yarn install --prefer-offline --frozen-lockfile
RUN yarn build:cli
RUN sudo mv ./dist/@lando/cli /usr/local/bin/lando
RUN sudo chmod +x /usr/local/bin/lando && sudo chown root:root /usr/local/bin/lando
RUN mkdir -p ~/.lando/cache
RUN sudo usermod -aG docker $USER
RUN echo "proxy: 'OFF'\nbindAddress: '0.0.0.0'\nproxyBindAddress: '0.0.0.0'" > ~/.lando/config.yml
RUN echo false > ~/.lando/cache/report_errors
RUN chmod 755 ~/.lando
RUN lando --clear 
