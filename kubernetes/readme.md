Google Cloud kubenetes connecting to pod.

```
gcloud init
gcloud container clusters get-credentials prod --zone us-east1-b --project <<projectID>>
kubectl get pods
kubectl exec -it <<PodId>> /bin/sh
```


Connecting pod in a namespace

```
...
gcloud containers ...
kubectl config set-context --current --namespace=<<namespace>>
kubectl get pods
```
