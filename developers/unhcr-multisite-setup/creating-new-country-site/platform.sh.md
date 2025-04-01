# Platform.sh

* Add a new database and solr core in **.platform/services.yaml**, the file will as below

```
db:
    configuration:
        schemas:
            - asia
        endpoints:
            asia:
                default_schema: asia
                privileges:
                    asia: admin
search:
    type: solr:8.6
    disk: 1024
    configuration:
        cores:
            asia:
                conf_dir: !archive "solr_8.x_config/"
        endpoints:
            asia:
                core: asia
```

* Add new route in the **.platform/routes.yaml**

```
"https://{default}/asia":
    type: upstream
    upstream: "app:http"
    cache:
      enabled: false
```

* in the **.platform.app.yaml** add **relationships** and **mount** and **rules** and **cron**

```
relationships:
    asia: 'db:asia'
    solrsearch_afr: 'search:afr'
    solrsearch_asia: 'search:asia'
.
.
web:
    locations:
        '/asia':
            root: 'docroot'
            expires: 5m
            passthru: '/asia/index.php'
            allow: false
            rules:
                '\.(jpe?g|png|gif|svgz?|css|js|map|ico|bmp|webp)$':
                    allow: true
                    expires: 1y
                '^/robots\.txt$':
                    allow: true
                    passthru: /asia/robots-asia.txt
                '^/sitemap\.xml$':
                    allow: true
                '^/libraries/pdf.js/web/viewer\.html$':
                    allow: true
                '^/libraries/pdf.js/web/locale/locale\.properties$':
                    allow: true
                'viewer\.properties$':
                    allow: true
                '\.(ttf|otf|eot|woff2?)$':
                    allow: true
                    expires: 1y
                    headers:
                      Access-Control-Allow-Origin: "*"
                '^/sites/sites\.php$':
                    scripts: false
                '^/sites/[^/]+/settings.*?\.php$':
                    scripts: false
        '/sites/asia/files':
            allow: true
            expires: 1y
            passthru: '/index.php'
            root: 'docroot/sites/asia/files'
            scripts: false
            rules:
                '^/sites/default/asia/(css|js)':
                    expires: 1y
        '/asia/sites/asia/files':
            allow: true
            expires: 1y
            passthru: '/index.php'
            root: 'docroot/sites/asia/files'
            scripts: false
            rules:
                '^/sites/default/asia/(css|js)':
                    expires: 1y
.
.
crons:
    asia:
        spec: '*/5 * * * *'
        cmd: 'cd docroot/sites/asia/ ; drush core-cron'
```

* in sites/**asia**/**settings.platformsh.php** change the database connection and other site related config like **simple\_sitemap.settings** and **site\_path**

```
// Configure the database.
if ($platformsh->hasRelationship('asia')) {
  $creds = $platformsh->credentials('asia');
  $databases['default']['default'] = [
    'driver' => $creds['scheme'],
    'database' => $creds['path'],
    'username' => $creds['username'],
    'password' => $creds['password'],
    'host' => $creds['host'],
    'port' => $creds['port'],
    'pdo' => [PDO::MYSQL_ATTR_COMPRESS => !empty($creds['query']['compression'])]
  ];
}
.
.
$settings['site_path'] = '/asia';
.
.
$config['simple_sitemap.settings']['base_url'] = 'https://mvp.unhcr.info/asia';
```
