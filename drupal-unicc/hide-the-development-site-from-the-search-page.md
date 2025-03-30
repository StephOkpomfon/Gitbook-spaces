---
description: docroot/sites/sitename/setting.php
---

# Hide the development site from the search page



```
// add at docroot/sites/sitename/setting.php

$config['search_api_federated_solr.search_app.settings']['index']['id'] = 'unhcr';
$config['search_api.server.unhcr_testing']['backend_config']['connector_config']['host'] = '';
$config['search_api.server.unhcr_testing']['backend_config']['connector_config']['core'] = '';
$config['search_api.server.unhcr_testing']['status'] = false;
$config['search_api.index.unhcr_testing']['server'] = '';
$config['search_api.index.unhcr_testing']['status'] = false;
```
