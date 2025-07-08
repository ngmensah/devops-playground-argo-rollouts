
---

### 📁 `extras/troubleshooting.md`

```markdown
# 🧯 Troubleshooting Tips

### 🚫 Prometheus not scraping?
- Check service:
  ```bash
  kubectl get svc prometheus


# Port might not match config. Use NodePort or ClusterIP correctly.

⏱ Analysis hangs forever?
Check the analysis template’s success/failure conditions.

Job-based analysis may wait for Job to finish. Use kubectl get jobs.

## 🛑 Rollout doesn't progress?

Use:

```bash
kubectl describe rollout rollouts-demo
```

## 🔎 Still stuck?

Run:

```bash
kubectl get pods -A
kubectl logs <argo-rollouts-controller-pod>
```
