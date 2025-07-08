#!/bin/bash

set -e

echo "🔧 Starting DevOps Lab tool installer..."

# Install Homebrew (if not installed)
if ! command -v brew &> /dev/null; then
    echo "🍺 Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install Docker (user still needs to start Docker Desktop manually)
if ! command -v docker &> /dev/null; then
    echo "🐳 Installing Docker..."
    brew install --cask docker
fi

# Install kubectl
if ! command -v kubectl &> /dev/null; then
    echo "☸️  Installing kubectl..."
    brew install kubectl
fi

# Install Kind
if ! command -v kind &> /dev/null; then
    echo "🛠 Installing Kind..."
    brew install kind
fi

# Install Argo Rollouts CLI
if ! command -v kubectl-argo-rollouts &> /dev/null; then
    echo "🚀 Installing Argo Rollouts CLI..."
    brew install argo-rollouts
fi

echo "✅ All tools installed. Please start Docker Desktop manually if not already running."
