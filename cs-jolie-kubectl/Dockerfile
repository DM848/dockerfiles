FROM dm848/cs-jolie:v1.3.0

# install kubectl
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
RUN chmod +x kubectl
RUN mv kubectl /usr/bin/kubectl

# this entrypoint file will authenticates against the google cloud k8s cluster
WORKDIR /kubectl-setup
COPY jolie-v1-kubectl-entrypoint.sh setup.sh
ENTRYPOINT ["/kubectl-setup/setup.sh"]