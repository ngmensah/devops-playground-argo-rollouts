#!/bin/bash

echo "🔧 Installing Argo Rollouts controller..."

kubectl create namespace argo-rollouts

kubectl apply -n argo-rollouts -f https://github.com/argoproj/argo-rollouts/releases/latest/download/install.yaml

echo "✅ Argo Rollouts controller installed."
