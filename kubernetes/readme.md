Google Cloud kubenetes connecting to pod.

```
gcloud init
gcloud container clusters get-credentials prod --zone us-east1-b --project <<projectID>>
kubectl get pods
kubectl exec -it <<PodId>> /bin/sh
```
