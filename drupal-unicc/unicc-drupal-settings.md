# UNICC Drupal Settings

**Settings.unicc.php**

```
// Some code
$databases['default']['default'] = [
  'database' => getenv("DB_NAME"),
  'username' => getenv("DB_USER"),
  'password' => getenv("DB_PASSWORD"),
  'prefix' => '',
  'host' => getenv("DB_HOST"),
  'port' => '3306',
  'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
  'driver' => 'mysql',
];
// $config['config_split.config_split.entity_share_live_remotes']['status'] = FALSE;
// $config['config_split.config_split.entity_share_stg_remotes']['status'] = FALSE;
// $config['config_split.config_split.entity_share_dev_remotes']['status'] = TRUE;

// Entity share remotes per env.
if (getenv("ENV") == 'prod') {
  $config['config_split.config_split.entity_share_live_remotes']['status'] = TRUE;
  $config['simple_sitemap.settings']['base_url'] = 'https://iccmvp.unhcr.info';
}

if (getenv("ENV") == 'test') {
  $config['config_split.config_split.entity_share_stg_remotes']['status'] = TRUE;
  $config['simple_sitemap.settings']['base_url'] = 'https://unhcr-mvp-test.test.unhcr.un-icc.cloud';
}

$settings['trusted_host_patterns'] = [];

// Force Azure AD redirect URL to https
$settings['reverse_proxy'] = TRUE;
$settings['reverse_proxy_addresses'] = array($_SERVER['REMOTE_ADDR']);
$settings['reverse_proxy_trusted_headers'] = \Symfony\Component\HttpFoundation\Request::HEADER_X_FORWARDED_FOR | \Symfony\Component\HttpFoundation\Request::HEADER_X_FORWARDED_PROTO | \Symfony\Component\HttpFoundation\Request::HEADER_X_FORWARDED_PORT;
```



**Trusted Host Patterns**

```
// trusted_host_patterns
$settings['trusted_host_patterns'] = [
  '^unhcr-mvp-test\.test\.unhcr\.un-icc\.cloud$',
  '^iccmvp\.unhcr\.info$',
  '^unhcr-mvp\.prod\.unhcr\.un-icc\.cloud$',
];
```

**Redis settings**

```
// Redis
$settings['redis.connection']['interface'] = 'PhpRedis';
$settings['redis.connection']['host'] = 'redis';
$settings['redis.connection']['port'] = '6379';
$settings['cache']['default'] = 'cache.backend.redis';
$settings['container_yamls'][] = 'modules/redis/example.services.yml';
$settings['cache_prefix'] = array_pop(explode('/', $site_path)) . '_';
```

**Database connection**

```
// Database
if (getenv("DB_HOST")) {
  $databases['default']['default'] = [
    'database' => getenv("DB_NAME"),
    'username' => getenv("DB_USER"),
    'password' => getenv("DB_PASSWORD"),
    'prefix' => '',
    'host' => getenv("DB_HOST"),
    'port' => '3306',
    'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
    'driver' => 'mysql',
  ];
}
```

**Private files**

```
// private
$settings['file_private_path'] = 'sites/default/files/private';
```

1. Ask UNICC team to change the permission of private folder to writable "/var/www/docroot/sites/default/files/private".&#x20;
2. Add .htaccess file to the private folder.&#x20;
3. Add the code bellow to the .htaccess file

```
// .htaccess for private folder
# Deny all requests from Apache 2.4+.
<IfModule mod_authz_core.c>
  Require all denied
</IfModule>

# Deny all requests from Apache 2.0-2.2.
<IfModule !mod_authz_core.c>
  Deny from all
</IfModule>

# Turn off all options we don't need.
Options -Indexes -ExecCGI -Includes -MultiViews

# Set the catch-all handler to prevent scripts from being executed.
SetHandler Drupal_Security_Do_Not_Remove_See_SA_2006_006
<Files *>
  # Override the handler again if we're run later in the evaluation list.
  SetHandler Drupal_Security_Do_Not_Remove_See_SA_2013_003
</Files>

# If we know how to do it safely, disable the PHP engine entirely.
<IfModule mod_php7.c>
  php_flag engine off
</IfModule>
```

**Protect the settings file**

```
// Change permissions in Dockfile
RUN chmod 755 /var/www/docroot/sites/default
RUN chmod 644 /var/www/docroot/sites/default/settings.php
RUN chmod 644 /var/www/docroot/sites/default/services.yml
RUN chmod 755 /var/www/docroot/sites/afr
RUN chmod 644 /var/www/docroot/sites/afr/settings.php
RUN chmod 644 /var/www/docroot/sites/afr/services.yml
RUN chmod 755 /var/www/docroot/sites/asia
RUN chmod 644 /var/www/docroot/sites/asia/settings.php
RUN chmod 644 /var/www/docroot/sites/asia/services.yml
```

**Drush settings: drush/sites/unhcr.site.yml**

```
// Some code
maintest: 
  root: /var/www/docroot 
  uri: 'https://unhcr-mvp-test.test.unhcr.un-icc.cloud/'
afrtest: 
  root: /var/www/docroot
  uri: 'https://unhcr-mvp-test.test.unhcr.un-icc.cloud/afr/'
asiatest:
  root: /var/www/docroot
  uri: 'https://unhcr-mvp-test.test.unhcr.un-icc.cloud/asia/'
main: 
  root: /var/www/docroot 
  uri: 'https://iccmvp.unhcr.info/'
afr: 
  root: /var/www/docroot
  uri: 'https://iccmvp.unhcr.info/afr/'
asia:
  root: /var/www/docroot
  uri: 'https://iccmvp.unhcr.info/asia/'
```

**Commands.sh**

```
// Some code
#!/bin/bash

if [[ ${ENV} == 'prod' ]]; then
  # main site
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.main updb
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.main cim
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.main cr
  # afr site
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.afr updb
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.afr cim
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.afr cr
  # asia site
  php -d memory_limit=512M /usr/local/bin/drush @unhcr.asia updb
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.asia cim
  php -d memory_limit=512M /usr/local/bin/drush @unhcr.asia cr
else
  # main site test
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.maintest updb
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.maintest cim
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.maintest cr
  # afr site test
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.afrtest updb
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.afrtest cim
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.afrtest cr
  # asia site test
  php -d memory_limit=512M /usr/local/bin/drush @unhcr.asiatest updb
  php -d memory_limit=1024M /usr/local/bin/drush @unhcr.asiatest cim
  php -d memory_limit=512M /usr/local/bin/drush @unhcr.asiatest cr
fi
```

{% file src=".gitbook/assets/image (6).png" %}
