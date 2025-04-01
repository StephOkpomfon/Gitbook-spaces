# Search Optimizations

Following the initial deployment of unhcr.org, the UNHCR team identified and subsequently reported many issues encountered with the primary search page.

These challenges encompassed both application-related and ICC server-related issues. Subsequently, the following enhancements were implemented:

#### Results page settings & configurations

Following the site's launch, the UNHCR team expressed concerns regarding the search results boosting and ranking. Their primary requirements were to default the search results sorting by date and elevate the landing page to the highest boosting level. However, implementing these changes led to the unintended consequence of key pages, created under different content types, being positioned lower in the search results or on a different page when searching for specific keywords.

To address the issue, we made several adjustments, including different boosting levels for various content types and modifications to the boosting levels for individual fields. Additionally, we granted access to the Solr search page, facilitating the UNHCR team's ability to make these changes from their end and effectively fine-tune the search results to align with their requirements.

* [Edit search index _UNHCR_](https://www.unhcr.org/admin/config/search/search-api/index/unhcr/edit)
* [Manage fields for search index _UNHCR_](https://www.unhcr.org/admin/config/search/search-api/index/unhcr/fields)
* [Manage processors for search index _UNHCR_](https://www.unhcr.org/admin/config/search/search-api/index/unhcr/processors)
* [Search API Federated Solr: Search App Settings](https://www.unhcr.org/admin/config/search-api-federated-solr/search-app/settings)
* [Search API Attachments](https://www.unhcr.org/admin/config/search/search_api_attachments)

#### Permission to solar search page

Whenever a modification was made to the Solr settings, reindexing was necessary to implement the changes. Given the substantial volume of content, indexing for the global site typically consumed approximately 24 hours.

We connected the staging site with a testing Solr server to expedite this process. Additionally, a specific role called "Search tester" was created. This role was granted permission to access the Solr search settings page, enabling the UNHCR team to enact and test changes in the testing environment. Furthermore, access to this page was extended to the production environment to facilitate seamless transition and testing on both platforms.

#### Boosted keyword

The editorial team expressed a need to enhance the prominence of specific node pages for particular search keywords. This requirement extended to all content types indexed in the search.

To fulfill this request, we enabled a module, "[Search API Solr: Boosted Keyword](https://www.drupal.org/project/search_api_solr_boosted_keyword)" that allows certain roles to boost specific nodes and regulate the extent of their boosting within the search results.

Check this page to view an overview of it: [Boosted keywords overview](https://www.unhcr.org/admin/config/search/keywords).\\

#### Multiple search filters URL

Within the migrated content, numerous links were inserted to guide users to the search page. These links included multiple tags, and in the context of federated search, they required the inclusion of brackets, represented as "\[ ]," within the URL to encompass multiple filters. The UNHCR editorial team manually updated these links, but Drupal inadvertently altered the values, resulting in broken links.

To rectify this issue, a preprocessing step within the unhcr\_search module was implemented to rewrite the URL before rendering it, ensuring that this modification was applied to all types of links.

#### Prevent delete index

We encountered an issue where making changes and reindexing Solr caused the deletion of the old index. Consequently, the search results page remained empty until the new index was fully generated.

We resolved this issue by applying a custom patch in the UNHCR repository, which altered the deletion behavior to an update, ensuring that the search results page would no longer become empty during reindexing.
