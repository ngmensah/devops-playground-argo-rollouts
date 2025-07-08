# 🚀 DevOps Playground: Argo Rollouts & Prometheus (Canary Deployment Lab)

Learn how to run real-world **Canary deployments** using [Argo Rollouts](https://argo-rollouts.readthedocs.io/) and **Prometheus** — all locally using a lightweight [Kind](https://kind.sigs.k8s.io/) cluster. This hands-on lab is built for DevOps learners who want to stop reading and start **doing**.

---

## 📦 What's Included

✅ Kubernetes cluster with Kind  
✅ Argo Rollouts controller installed  
✅ Canary rollout with versioned app updates  
✅ Pre-promotion **AnalysisTemplate** using:
    ✔️ Prometheus metrics
    ✔️ Kubernetes Job (success/failure simulation)  
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

---

## Run a Failure Simulation

```bash
# Replace Prometheus analysis with job-based analysis
kubectl apply -f analysis/analysis-template-job.yaml

# Simulate a success
kubectl apply -f analysis/success-job.yaml

# Simulate a failure
kubectl apply -f analysis/failure-job.yaml
```

## 📂 Project Structure

```bash
├── argo/           # Argo Rollouts YAML files
├── app/            # Sample app versions
├── analysis/       # AnalysisTemplates + Jobs
├── prometheus/     # Prometheus + StatsD setup
├── cluster/        # Kind config + cluster script
├── setup/          # CLI tool installer
├── extras/         # Learning roadmap, commands, troubleshooting
└── assets/         # Diagrams & screenshots
```

## Helpful CLI Commands

```bash
# View rollout status
kubectl argo rollouts get rollout rollouts-demo

# Promote rollout manually
kubectl argo rollouts promote rollouts-demo

# Abort rollout
kubectl argo rollouts abort rollouts-demo

# View rollout history
kubectl argo rollouts history rollouts-demo
```

## Bonus Learning
[✔] extras/learning-roadmap.md → Next DevOps skills to learn

[✔] extras/troubleshooting.md → Common errors and fixes

[✔] extras/cli-commands.md → Useful kubectl & argo commands

## Cleanup

```bash
kind delete cluster
```

Built by a DevOps learner, for DevOps learners.
Questions? PRs welcome — let's grow together 🚀
