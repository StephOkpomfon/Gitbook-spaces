---
coverY: 0
---

# Kubectl for drush commands

#### Install kubectl

{% embed url="https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/" %}

{% embed url="https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/" %}

#### Setup ICC VPN

Ask unicc team

#### List pods

```
 kubectl --kubeconfig user-access-unhcr-mvp-dev.yaml -n unhcr-mvp-dev get pods
```

```
kubectl --kubeconfig config-unhcr-mvp-test -n unhcr-mvp-test get pods
```

```
 kubectl --kubeconfig user-access-unhcr-mvp -n unhcr-mvp get pods
```

#### Access pod ssh

```
kubectl --kubeconfig config-unhcr-mvp-test -n unhcr-mvp-test exec --stdin --tty <pod name> -- sh
```

```
kubectl --kubeconfig user-access-unhcr-mvp -n unhcr-mvp exec --stdin --tty <pod name> -- sh
```

```
kubectl --kubeconfig user-access-unhcr-mvp-dev.yaml -n unhcr-mvp-dev exec --stdin --tty web-766f5d4786-kkq6r -- sh 
```

**Copy file to remote server**

```
// Local to remote:
kubectl --kubeconfig <config file> cp <filename> <namespace>/<container_name>:<path>
example: kubectl cp file.txt unhcr-mvp-test/web-95cd9789b-kzdqp:/var/www
// Remote to local:
kubectl --kubeconfig <config file> cp  <namespace>/<container_name>:<path> <filename>
// example
kubectl --kubeconfig <config file> cp kr.sql.gz unhcr-mvp-test/web-5cc:/var/www/kr.sql.gz
```

**Access solr admin panel**

```
// Some code
kubectl --kubeconfig config-unhcr-mvp-test port-forward -n unhcr-mvp-test solr-0 8983:8983 
http://localhost:8983

// live site
kubectl port-forward solr-0 9000:8983 -n unhcr-mvp
```

#### Exit from console on pod

```
exit
```

**Restart pod**

<pre><code>// kubectl rollout restart deployment web -n unhcr-mvp
<strong>kubectl --kubeconfig config-unhcr-mvp-test rollout restart deployment web -n unhcr-mvp-test
</strong></code></pre>

```
kubectl --kubeconfig user-access-unhcr-mvp-dev.yaml rollout restart deployment web -n unhcr-mvp-dev
```

```
kubectl --kubeconfig <config_file> rollout restart deployment web -n unhcr-mvp
```

```
// restart solr
  kubectl --kubeconfig user-access-unhcr-mvp rollout restart statefulset solr-staging -n unhcr-mvp   
```

**Delete pod**

```
// kubectl delete pod solr-0
```

**Drush get db details**

```
drush sql-connect --show-passwords
```

#### Mvp Config file

{% file src=".gitbook/assets/config-unhcr-mvp-test" %}
MVP staging site
{% endfile %}

{% file src=".gitbook/assets/user-access-unhcr-mvp-training" %}
MVP training site
{% endfile %}

{% file src=".gitbook/assets/user-access-unhcr-mvp" %}
MVP prod site
{% endfile %}

{% file src=".gitbook/assets/user-access-unhcr-mvp-dev.yaml" %}
MVP dev site
{% endfile %}

**RefWorld Config file**

{% file src=".gitbook/assets/unhcr-access-unhcr-refworld-test" %}

{% file src=".gitbook/assets/unhcr-access-unhcr-refworld" %}

{% file src=".gitbook/assets/unhcr-access-unhcr-refworld-dev" %}



