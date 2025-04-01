# Search Functionality

The site utilizes the search index of the popular **Solr search** provided by the vendor mentioned in (Key Software Components) section.

{% hint style="info" %}
**Solr** is made available through several modules to provide ease of configuration and control on search functionality throughout the site. This is achieved using the **Search API** suite of modules.
{% endhint %}

### **Configuring Search**

**Search API** can be configured to utilize Database Search, Solr Search, or other types of search through other submodules. See the configuration page on this link: [https://mvp.unhcr.info/admin/config/search/search-api](https://mvp.unhcr.info/admin/config/search/search-api)

Solr config files \*\*\*\* give the Admin the opportunity to manage:

* What entities to index
* What server to use
* Search multilingual settings
* The index fields
* And, other configurations.

### **Search Indexing**

The search index appearance for each entity can be managed in the standard Drupal implementation of the “Search Index” view mode from the “Manage Display” tab for each entity’s bundle.

### **Search Results View**

Search results appear through a standard “view” named “search”. The view can be managed from [https://mvp.unhcr.info/admin/structure/views/view/search](https://mvp.unhcr.info/admin/structure/views/view/search)

To create a new search view, follow the same steps from a Drupal 7 tutorial: [https://www.drupal.org/docs/7/modules/search-api/getting-started/search-forms-and-results-pages/search-api-views/creating-a.](https://www.drupal.org/docs/7/modules/search-api/getting-started/search-forms-and-results-pages/search-api-views/creating-a)

{% hint style="info" %}
Note that in Drupal 8, this functionality is provided without the need to install the additional module “search\_api\_views”. This is already provided from the main “search\_api” module.
{% endhint %}
