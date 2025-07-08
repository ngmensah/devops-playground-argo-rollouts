# 🚀 DevOps Playground: Argo Rollouts & Prometheus (Canary Deployment Lab)

Learn how to run real-world **Canary deployments** using [Argo Rollouts](https://argo-rollouts.readthedocs.io/) and **Prometheus** — all locally using a lightweight [Kind](https://kind.sigs.k8s.io/) cluster. This hands-on lab is built for DevOps learners who want to stop reading and start **doing**.

---

## 📦 What's Included

✅ Kubernetes cluster with Kind  
✅ Argo Rollouts controller installed  
✅ Canary rollout with versioned app updates  
✅ Pre-promotion **AnalysisTemplate** using:
- ✔️ Prometheus metrics
- ✔️ Kubernetes Job (success/failure simulation)  
✅ Preconfigured Prometheus + StatsD exporter  
✅ Scripts to install, test, and clean everything  
✅ Bonus guides, CLI commands, and a learning roadmap  

---

## 🧠 What You’ll Learn

- How Argo Rollouts performs canary updates with real metrics
- How to simulate failure conditions with AnalysisTemplates
- How to install Prometheus in a local cluster
- How to troubleshoot rollouts step by step
- Core YAML structure used in real-world deployments

---

## 🛠️ Prerequisites

| Tool         | Version |
|--------------|---------|
| Docker       | Latest  |
| kubectl      | ≥ 1.27  |
| Kind         | ≥ 0.20  |
| Argo CLI     | ≥ 1.6   |

👉 You can run `setup/install_tools.sh` to install required tools automatically (Mac/Linux only).

---

## ⚙️ Quick Start

```bash
# Clone the project
git clone https://github.com/your-username/devops-playground-argo-rollouts.git
cd devops-playground-argo-rollouts

# 1. Create Kubernetes cluster with Kind
bash cluster/create-cluster.sh

# 2. Install Argo Rollouts controller
bash argo/install_argo_rollouts.sh

# 3. Deploy Prometheus + StatsD
kubectl apply -f prometheus/

# 4. Deploy initial version of the app
kubectl apply -f app/app-v1.yaml
kubectl apply -f argo/service.yaml

# 5. Deploy rollout config with analysis hooks
kubectl apply -f analysis/analysis-template-prometheus.yaml
kubectl apply -f argo/rollout.yaml
```
