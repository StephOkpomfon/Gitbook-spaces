# Remote HREFLANG

This documentation outlines the functionality and setup of the custom Drupal module designed for multisite installations. This module stores language versions of each node in a separate database using UUID as a key and overrides `hreflang` links to include all available sites.

The module will override the `hreflang` and `canonical` links in the HTML `<head>` section of each page. It will add links to all sites within the multisite setup, including language variations.

The module uses custom tokens `[node:remote_hreflangs]` and `[node:remote_canonical]` to replace Drupal default ones.

To setup this module on UNICC you need to make sure you have configured the shared database connection (currently under docroot/sites/settings.global.php)

`// Global DB connection for Hreflang module.`

`$databases['common']['default'] = [`\
`'database' => getenv("DB_NAME_COMMON"),`\
`'username' => getenv("DB_USER"),`\
`'password' => getenv("DB_PASSWORD"),`\
`'prefix' => '',`\
`'host' => getenv("DB_HOST"),`\
`'port' => '3306',`\
`'namespace' => 'Drupal\Core\Database\Driver\mysql',`\
`'driver' => 'mysql',`\
`];`

The module will commit the URLs to the database on cron or on CRUD operation on nodes and media documents, no further setup is needed besides token and cron schedule from Ultimate cron.

If you encounter any issues while using this module, please check the following:

* Ensure that the module is correctly installed and enabled.
* Double-check the database configuration for the shared database.
* Ensure you are using the correct tokens in the Metatag module configuration.
* Review Drupal's error logs for any module-specific error messages.

More information on the generation logic can be found here:

{% embed url="https://docs.google.com/spreadsheets/d/1GCNWQbdd1B1DKpDFj9vo0cZIuUPMOhKcD3qVq8V967E/edit#gid=1711574043" %}

<figure><img src="../../drupal-platform-docs/.gitbook/assets/UNHCR Hreflang.png" alt=""><figcaption></figcaption></figure>
