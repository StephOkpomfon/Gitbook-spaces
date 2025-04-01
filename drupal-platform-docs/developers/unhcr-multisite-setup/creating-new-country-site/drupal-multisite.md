# Drupal multisite

* Make a copy from docroot/sites/**starter\_kit\_site** to docroot/sites/**asia**
* Identify the domain and determine whether it falls under "unhcr.org" or "acnur.org".
* If the domain falls under "unhcr.org", add the new site prefix to the `$directory_domains` array.
* If the domain falls under "acnur.org", add the new site prefix to the `$acnur_directory_domains` array.
* Add the domain prefix to the `$directory_prefixes` array in the "docroot/sites/sites.php" file.
* Create a new database _(copy from the global site database_) and update the database connection to match the new database in the docroot/sites/**asia**/**settings.php**

{% hint style="success" %}
The code below for the default lamp setup
{% endhint %}

```
$databases['default']['default'] = [
    'database' => 'asia',
    'username' => 'asia',
    'password' => 'asia',
    'prefix' => '',
    'host' => 'database',
    'port' => '3306',
    'namespace' => 'Drupal\\Core\\Database\\Driver\\mysql',
    'driver' => 'mysql',
  ];
```

* Set the file\_public\_path and file\_private\_path

```
$settings['file_public_path'] = 'asia/sites/asia/files';
$settings['file_private_path'] = 'asia/sites/asia/files/private';
```

* Create robot docroot/robots-asia.txt and site docroot/asia symlink
*   To create a new config split, copy any site directory and enable the new config directory in the settings.php file, use the following PHP code:

    ```php
    $config['config_split.config_split.asia']['status'] = TRUE;
    ```
*   To configure the site name for the search API in the settings.php file, use the following code:\\

    ```php
    $config['search_api.index.unhcr']['field_settings']['site_name']['configuration']['site_name'] = 'Asia site';
    ```

**In-Site config**

To configure the In-Site settings, go to /admin/config/system/unhcr-site/add and add a new UNHCR site. Make sure to set it as the only active site and replicate it across all UNHCR Drupal sites without enabling the active checkbox.

#### Drush aliases

When adding a new site to a Drupal multi-site installation, it is important to create a Drush alias in the for effective site management.

To begin, navigate to the "drush/sites" directory within the root of the repository and locate a file named unhcr.site.yml.

Open the YAML file using a text editor or code editor of your choice.

Add the new site aliases as needed.

Drush alaiases name should follow a symantic naming convention to allow flexibility and automation, naming should be as following:

\[GIT BRANCH NAME]-\[SITE PREFIX]

As an example, a new site with the prefix xyz and the URL of https://www.unhcr.org/xyz should have the following aliases:

`master-xyz` for production, `dev-xyz` for dev and so on. Generally the complete alias will look as the following:

`master-xyz:`\
`root: /var/www/docroot`\
`uri: 'https://www.unhcr.org/xyz/'`\
`user: nobody`
