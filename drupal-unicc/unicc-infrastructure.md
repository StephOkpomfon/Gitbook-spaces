# Unicc Infrastructure

**Unicc Cloud Web Hosting**

{% embed url="https://cwh-docs.un-icc.cloud/Project/decommission" %}



**Simple Diagram**

{% file src=".gitbook/assets/Infrastructure.pdf" %}

DNS -> Cloudflare (`WAF`) -> AWS Cloudfront -> AWS Application Load Balancer( without WAF) -> AWS Kubernetes Cluster



Old config:&#x20;

db.m6g.2xlarge&#x20;

8 CPU&#x20;

32 GB&#x20;

New config:&#x20;

db.m6g.4xlarge&#x20;

16 CPU&#x20;

64 GB

**Requirement**

```
Cluster: UNHCR (dedicated)

 Organization: UNHCR

 Project name: unhcr-rimap

 Tenant: UNHCR

 Plan: Bronze

 App template: Drupal 9, PHP8.1+

 Account code: UNHCR-P-D56-T195

 Environments:  Dev only

 Database: MariaDB 10.4 (RDS solution)

 Persistent storage: True

 Client owner: pitoiset@unhcr.org

 Notifications: digital@unhcr.org

 

 

·  Bitbucket repo

·  AWS S3 account

·  Adminer Database

·  Load Balancer and WAF layer.
```

UNICC typically requires more memory than other environments.
