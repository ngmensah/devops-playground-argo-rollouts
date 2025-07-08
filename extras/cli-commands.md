# 🔧 Argo Rollouts & Kubernetes CLI Tips

## 🔍 Monitor Rollout

```bash
kubectl argo rollouts get rollout rollouts-demo
```

## 📈 Promote Rollout
```bash
kubectl argo rollouts promote rollouts-demo
```

## Abort Rollout
```bash
kubectl argo rollouts abort rollouts-demo
```

## View All Events
```bash
kubectl get events --sort-by='.metadata.creationTimestamp'
```
