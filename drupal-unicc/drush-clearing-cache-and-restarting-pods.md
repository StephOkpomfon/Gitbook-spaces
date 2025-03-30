---
description: >-
  The below guidance is to enable quick actions like clearing Drupal cache or
  restarting pods on ICC CHW-hosted applications, such as www.unhcr.org
---

# 🚩 Drush clearing cache and restarting pods

### Setting up connection

1. Ensure you have a UNICC VPN account
2. Ensure you have _**kubectl**_ installed on your local machine
3. Ensure you have a project directory on your local machine where you have the config files stored (for example in `/configs/`)

[Navigate to this documentation page for the config files](kubectl-for-drush-commands.md)

### Connecting to pod

1. Start the VPN connection
2. Run `sh pod_connect.sh`
3. Or alternatively to 2:
   * To list pods: `kubectl --kubeconfig configs/user-access-unhcr-mvp-test -n unhcr-mvp-test get pods`
   * To connect to pod: `kubectl --kubeconfig configs/user-access-unhcr-mvp-test -n unhcr-mvp-test exec --stdin --tty <podname> -- sh`

### Clear the Drupal cache and other Drush commands

After connecting to the environment, select one of the web pods. In `/var/www` you can run `drush` commands for the root site. If you only want to clear cache for the Republic of Korea (`/kr/`) site for instance, navigate to `/var/www/docroot/kr/sites/kr` or utilize the URI flag: `drush --uri=https://www.unhcr.org/kr/ cr`.

To validate you are applying Drush commands to the right site, run `drush config:get system.site` to get the site information.

### Restart the web pods

There may be a need to restart pods, in case they terminated / are not running. Note that you cannot restart individual pods. To restart all pods, run (example using the staging config):&#x20;

`kubectl --kubeconfig config-unhcr-mvp-test rollout restart deployment web -n unhcr-mvp-test`



**Switch Solr between UNHCR and UNHCR testing.**

```
// unhcr
drush sa --format=list |  grep prod- | while read -r alias

do
  echo "Running cim on $alias";
  drush $alias config:set search_api_federated_solr.search_app.settings index.id unhcr -y
done
```

```
// unhcr testing

drush sa --format=list |  grep prod- | while read -r alias
do
  echo "Running cim on $alias";
  drush $alias config:set search_api_federated_solr.search_app.settings index.id unhcr_testing -y
done
```
