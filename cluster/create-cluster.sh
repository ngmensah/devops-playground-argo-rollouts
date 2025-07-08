#!/bin/bash

set -e

echo "🚀 Creating Kubernetes cluster with Kind..."

# Create cluster
kind create cluster --name argo-lab --config cluster/kind-config.yaml

echo "✅ Cluster created."

echo "⏳ Waiting for nodes to be ready..."
kubectl wait --for=condition=Ready nodes --all --timeout=90s

echo "📦 Installing Argo Rollouts controller..."
bash argo/install_argo_rollouts.sh

echo "📊 Installing Prometheus + StatsD..."
kubectl apply -f prometheus/

echo "📱 Deploying sample app v1..."
kubectl apply -f app/app-v1.yaml
kubectl apply -f argo/service.yaml

echo "📈 Deploying analysis templates..."
kubectl apply -f analysis/analysis-template-prometheus.yaml
kubectl apply -f analysis/analysis-template-job.yaml

echo "✅ Setup complete! Run 'kubectl get all' to verify."
