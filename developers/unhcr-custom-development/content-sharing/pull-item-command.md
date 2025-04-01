# Pull Item Command

**Command Name:** `entity-share-extras:pull-item` (aliased as `ese:pull-item`)

**Description:** This Drush command is used to retrieve a particular item (entity) from a remote website by utilizing the Entity Share module. It is specifically developed for UNHCR to fetch content that contains numerous referenced items, such as countries listed in the countries field. These items cannot be shared via Entity Share.

**Command Syntax:**

```shell
drush entity-share-extras:pull-item <remote> <channel> <config> <langcode> <url>
```

**Parameters:**

* `<remote>`: The remote ID from which to pull the item.
* `<channel>`: The channel ID associated with the remote.
* `<config>`: The config ID related to the synchronization configuration.
* `<langcode>`: The language code for the imported item.
* `<url>`: The URL of the item you want to pull from the remote website.

**Usage Example:**

```shell
drush entity-share-extras:pull-item global_site_live content_landing_page_lb synchronized_content en https://www.unhcr.org/jsonapi/node/news/0af45387-02a8-490f-a747-b6dfd537bffd
```

**Functionality:**

1. The command initializes the necessary services and context required for importing content.
2. It then uses the `entity_share_client.import_service` service to prepare for content import.
3. Finally, it imports the item from the specified URL.
