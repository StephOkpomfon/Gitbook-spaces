---
description: >-
  This following is for setting up a new Drupal instance for a UNHCR.org country
  or regional clone site. This documentation is still in Beta, and may need to
  be updated and improved.
---

# Subsite setting up

1. Setup local .lando.yml file. E.g

```
// Some code
ne:
    type: mysql
    creds:
      user: ne
      password: ne
      database: ne
    config:
      database: .lando/my-custom.cnf
```

2. Create configuration: You can copy an existing config folder and then modify each YAML file as needed.

<figure><img src=".gitbook/assets/Screenshot 2025-03-26 at 09.54.54.png" alt=""><figcaption></figcaption></figure>

The following example assumes we are cloning /afr to create /asia. You can swap out these two sites for whichever you would like to use.

1. Navigate to a new empty folder locally, and clone the test branch of the unhcr-mvp project from BitBucket.org:\
   `git clone -b staging git@bitbucket.org:iccgit/unhcr-mvp.git`\

2.  Within the local project, navigate to the ./docroot/sites folder.

    `cd docroot/sites`\

3.  Copy \[recursively] one of the existing site folders, (in our case "afr" to create "asia").

    `cp -r afr asia`\

4. Navigate to your new site folder, ("asia"), and open in VS code.\
   `cd asia`\
   `code .`\

5. Edit the "**settings.php**" file. Near the end of the file we will need to add a line of code to import the split config file for our new site. But since the new site’s config file doesn’t exist yet, we just want to comment out the line to import the split config file for the previous site, ("africa").\
   <mark style="color:red;">`//`</mark>` ``$config[‘config.split.config.split.africa’][‘status’] = TRUE;`\

6. Now, navigate 3 directores up to the main **/web** folder, and edit "_unicc-cwh-test.yaml_".\
   `cd ../../../`\

7. In "**unicc-cwh-test.yaml**" file, add a new environment under **`env:`** for the database.\
   \[...missing...]\

8.  In the same file, "**unicc-cwh-test.yaml**", under **`mountPaths`**, add a new mountPath for our "asia" site.\
    `mountPaths:`\
    &#x20;`- /var/www/docroot/sites/default/files`

    &#x20;`- /var/www/docroot/sites/afr/files`

    &#x20;<mark style="color:red;">`- /var/www/docroot/sites/asia/files`</mark>

    &#x20;`- /var/www/docroot/sites/default/files/private`


9.  These next steps will need to be done on both the **test** and **prod** servers. Login to the UNICC cloud database admin panel (adminer).

    TEST:  [https://unhcr-mvp-test-adminer.test.unhcr.un-icc.cloud/](https://unhcr-mvp-test-adminer.test.unhcr.un-icc.cloud/)\
    PROD:  [https://unhcr-mvp-adminer.prod.unhcr.un-icc.cloud/](https://unhcr-mvp-adminer.prod.unhcr.un-icc.cloud/)\

10. Create the new database, in this case named "**`unhcrasia`**" on the production server, and "**`unhcrasiatest`**" on the test server). Select the collation "**`latin1_swedish_ci`**".

    (Drupal will populate these databases, we just need to create them).

**Subsite settings for UNICC**

Add a new file named "settings.unicc.php" to /sites/asia/settings.unicc.php

```
// Some code
$databases['default']['default'] = [
  'database' => getenv("DB_NAME_2"),
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
  $config['simple_sitemap.settings']['base_url'] = 'https://iccmvp.unhcr.info/asia';
}

if (getenv("ENV") == 'test') {
  $config['config_split.config_split.entity_share_stg_remotes']['status'] = TRUE;
  $config['simple_sitemap.settings']['base_url'] = 'https://unhcr-mvp-test.test.unhcr.un-icc.cloud/asia';
}

$settings['trusted_host_patterns'] = [];

// Force Azure AD redirect URL to https
$settings['reverse_proxy'] = TRUE;
$settings['reverse_proxy_addresses'] = array($_SERVER['REMOTE_ADDR']);
$settings['reverse_proxy_trusted_headers'] = \Symfony\Component\HttpFoundation\Request::HEADER_X_FORWARDED_FOR | \Symfony\Component\HttpFoundation\Request::HEADER_X_FORWARDED_PROTO | \Symfony\Component\HttpFoundation\Request::HEADER_X_FORWARDED_PORT;
```

Import database from main or afr site first and then run command below.

```
// Drush
drush clean-site`
```

Config split

```
// Some code
config_split.conig_split.korea.yml
1.remove uuid
2. folder: ../config/kr
3. id: korea
4. label: Korea
```

Language entity

```
// Some code
language.entity.ko in config_split.config_split.korea.yml
```

Empty database

**Disable English**&#x20;

Add language.entity.en.yml and make disable:ture

```
// Some code

uuid: a3ecdc82-09d5-49d5-9a99-0061203f42cf
langcode: en
status: true
dependencies:
  module:
    - disable_language
third_party_settings:
  disable_language:
    disable: true
    redirect_language: de-ch
_core:
  default_config_hash: lBXDpdDPXQtrfTJQhr6MjRJJEEyYSoRJ0acdvHLsWeA
id: en
label: English
direction: ltr
weight: -10
locked: false

```



{% file src=".gitbook/assets/unhcr-empty-db.sql.zip" %}
