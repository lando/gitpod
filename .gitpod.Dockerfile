FROM gitpod/workspace-full

RUN sudo apt-get install apt-transport-https ca-certificates gnupg lsb-release
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN sudo apt-get -y update
RUN sudo apt-get install docker-ce docker-ce-cli containerd.io

RUN sudo apt-get -y update
RUN sudo bash -c "curl -Ls https://github.com/lando/hyperdrive/releases/download/v0.6.1/hyperdrive > /usr/local/bin/hyperdrive"
RUN sudo chmod +x /usr/local/bin/hyperdrive
RUN hyperdrive -y --name "James T. Kirk" --email kirk@enterprise.mil