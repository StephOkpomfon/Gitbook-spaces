# UNICC File Structure

Drupal code must be placed in the root directory. Dokerfile and commands.sh are moved to the root directory. For unicc staging site, there is a file unicc-cwh-staging.yaml.

![](<.gitbook/assets/Screenshot 2022-08-03 at 16.21.36.png>)

Dockerfile needs to be placed in the web directory web/Dockerfile.

```
// Dockerfile
FROM public.ecr.aws/unicc/lap80-alpine:stable


USER root

# Install Imageagick
RUN apk add --no-cache imagemagick

# Install redis client
RUN pecl install -o -f redis \
&&  rm -rf /tmp/pear \
&&  docker-php-ext-enable redis

COPY . /var/www
RUN rm -rf /var/www/html/ && ln -s /var/www/docroot /var/www/html
WORKDIR /var/www

# Change permissions
RUN chmod 755 /var/www/docroot/sites/default
RUN chmod 644 /var/www/docroot/sites/default/settings.php
RUN chmod 644 /var/www/docroot/sites/default/services.yml
RUN chmod 755 /var/www/docroot/sites/afr
RUN chmod 644 /var/www/docroot/sites/afr/settings.php
RUN chmod 644 /var/www/docroot/sites/afr/services.yml
RUN chmod 755 /var/www/docroot/sites/asia
RUN chmod 644 /var/www/docroot/sites/asia/settings.php
RUN chmod 644 /var/www/docroot/sites/asia/services.yml

USER nobody

CMD ["/var/www/commands.sh"]
```

Commands.sh this file contains drush command and composer command etc.

```
// Commands.sh
#!/bin/bash
 php -d memory_limit=512M /usr/local/bin/drush uli
 php -d memory_limit=512M /usr/local/bin/drush @unhcr.asia updb
 php -d memory_limit=1024M /usr/local/bin/drush @unhcr.asia cim
 php -d memory_limit=1024M /usr/local/bin/drush @unhcr.afr cim
 php -d memory_limit=1024M /usr/local/bin/drush @unhcr.main cim
 php -d memory_limit=512M /usr/local/bin/drush @unhcr.asia cr

```

The file(unicc-cwh-branch.yaml) contains server configurations. E.g Database, Memcached, Dump-Backup, Solr, Adminer, Cron, Redis, mountPaths etc.

```
// unicc-cwh-branch.yaml
projectName: unhcr-mvp
projectType: mistral-advanced
apps:
  - name: ingress-app
    version: v0.5.17
    appType: alb-ingress
    values:
      certificatesArn: "arn:aws:acm:eu-west-1:766306017388:certificate/fcd3bee8-b185-470c-bd26-a078cf420f1f"
      hosts:
        - hostNames: ["unhcr-mvp.prod.unhcr.un-icc.cloud", "iccmvp.unhcr.info"]
          appName: web
  - name: ingress-app-vpn
    version: v0.5.17
    appType: nginx-ingress
    values:
      whitelistCidr: "195.55.64.11/32,193.194.138.93/32,193.194.138.132/32,192.91.247.212/31"
      proxyBodySize: 1G
      hosts:
        - hostNames: ["unhcr-mvp-adminer.prod.unhcr.un-icc.cloud"]
          appName: adminer
  - name: memcached-apache
    appType: memcached
    version: v0.4.92
  - name: web
    version: v0.5.0
    context: .
    dockerfile: Dockerfile
    values:
      memcachedApache: true
      resources:
        limits:
          cpu: 500m
          memory: 756Mi
        requests:
          cpu: 200m
          memory: 256Mi
      replicaCount: 2
      secret:
        - name: NEW_RELIC_LICENSE_KEY
          secret_key: new_relic_license_key
          secret_name: unhcr-mvp
        - name: DB_HOST
          secret_name: unhcr-mvp
          secret_key: db_host
        - name: DB_PASSWORD
          secret_name: unhcr-mvp
          secret_key: user_db_password
        - name: SMTP_USER
          secret_name: unhcr-mvp
          secret_key: aws_access_key
        - name: SMTP_PASSWORD
          secret_name: unhcr-mvp
          secret_key: aws_smtp_password
        - name: AWS_SECRET_ACCESS_KEY
          secret_name: unhcr-mvp
          secret_key: aws_secret_access_key
      env:
        ENV: prod
        NEW_RELIC_APP_NAME: unhcr-mvp
        DB_USER: unhcrmvp
        DB_NAME: unhcrmvp
        DB_NAME_1: unhcrafr
        DB_NAME_2: unhcrasia
      sharedStorage:
        enabled: true
        existingPvc: unhcr-mvp
        mountPaths:
          - /var/www/docroot/sites/default/files
          - /var/www/docroot/sites/afr/files
          - /var/www/docroot/sites/asia/files
          - /var/www/docroot/sites/default/files/private
  - name: shared-storage
    appType: efs-storage
    version: v0.4.92
    values:
      enabled: true
      name: unhcr-mvp
      efsEndpoint: fs-0b1ae160be356518d.efs.eu-west-1.amazonaws.com
  - name: dump-backup
    appType: s3-backup-restore
    version: v0.4.92
    values:
      projectName: unhcr-mvp
      backupStorage: true
      backupDb: true
      schedule: "0 10 * * *"
  - name: solr
    appType: solr
    version: v0.4.92
    values:
      version: 8.11
      javaMem: "-Xms128m -Xmx512m"
      resources:
        limits:
          cpu: 500m
          memory: 756Mi
        requests:
          cpu: 200m
          memory: 256Mi
  - name: adminer
    appType: adminer
    version: v0.4.92
    values:
      resources:
        limits:
          cpu: 200m
          memory: 512Mi
        requests:
          cpu: 100m
          memory: 128Mi
  - name: moodle-cronjob
    appType: cronjob
    version: v0.5.2
    values:
      image:
        registry: docker.io
        repository: curlimages/curl
        tag: latest
      schedule: "*/15 * * * *"
      command:
        - /bin/sh
        - -c
        - curl -sS "https://iccmvp.unhcr.info/cron/$MOODLE_CRON_PASSWORD"
      secret:
        - name: MOODLE_CRON_PASSWORD
          secret_key: moodle_cron_password
          secret_name: unhcr-mvp
      env:
        ENV: prod
  - name: redis
    appType: redis
    version: v0.4.63
    catalog: git@bitbucket.org:awsopda/helm-charts.git


```

Provide Cron path to UNICC. Get path here "/admin/config/system/cron"
