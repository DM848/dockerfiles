#!/bin/sh
set -e

# setup basic pod variables/configuration
sh pod-setup-entrypoint.sh

# configure kubectl
kubectl config set-cluster default \
    --server=https://kubernetes.default \
    --certificate-authority=/var/run/secrets/kubernetes.io/serviceaccount/ca.crt
kubectl config set-context default --cluster=default
token=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
kubectl config set-credentials user --token=$token
kubectl config set-context default --user=user
kubectl config use-context default

exec "$@"