FROM gitpod/workspace-full

RUN sudo apt-get -y install apt-transport-https ca-certificates gnupg lsb-release
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN sudo apt-get -y update
RUN sudo apt-get -y install docker-ce docker-ce-cli containerd.io

RUN sudo curl -fsSL -o /usr/local/bin/lando "https://files.lando.dev/cli/lando-linux-x64-edge"
RUN sudo chmod +x /usr/local/bin/lando