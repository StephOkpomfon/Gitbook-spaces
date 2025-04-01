# Search

Search functionality is paramount to the UNHCR website, as it is one of the most vital features. This is due to its extensive utilization by users seeking information about UNHCR.

### Design Reference

* [Main search page](https://www.sketch.com/s/6ecd71b4-af49-42b4-9d65-0e9d20134b89/a/AxjLD54)

### Requirements

#### Simple & Advanced Search

* Visitors should be able to use a powerful search engine that enables them to apply a simple text search and a more advanced search.
* Visitors should have the option for an advanced search that can allow users to filter results and sort by relevancy, date, or other options.
* Visitors should be able to change their search keyword on the search results page directly.
* Visitors should be able to see the keyword search in the field when viewing the results on the search results page.
* Visitors should be able to refine their search by date.

#### Federated Search

* Visitors should be able to search all sites' content in one search page.

#### Suggested Search

* Visitors should have suggestions, search segments/facets, different content types, and keywords from the search engine.

#### Search Filters

* Visitors should be able to filter the search results based on categories and types of content.

#### Solr Search

* Search should be provided through the Apache Solr search engine.

#### PDF Indexing in Search

* Visitors should be able to search the content within the pdf files.

#### Search Improvements

* As a CMS editor I can select to promote specific pages to appear at the top of the results list for specific keywords - you can select specific search terms currently, but not specific pages to link to
* As a user I can click on the search button on mobile and desktop
* As a site admin I can specify a max number of popular search terms
* To add a submit button to start the search and remove the auto-submit from it - this is on the search icon on the header

### Viewing

* [Main Search Page](https://www.unhcr.org/search?sm_site_name\[]=Global%20site)
* [News Landing Page](https://www.unhcr.org/news-and-stories)
* [Forums and committees](https://www.unhcr.org/what-we-do/forums-and-committees)

### Acceptance Criteria

* As an end user, I can click on search and type in a term.
* As an end user, I can see suggested popular search terms and click on these items to visit specific results.
* As an end user, I am presented with a search results page where I can see the number of search matches.
* As an end user, I am presented with a search results page where I can edit my search term.
* As an end user, I am presented with a search results page where I can filter the results to narrow down search results.
* As an end user, I can sort search results by relevance or date.
* As an end user, I can see the title, description and thumbnail for each result.
* As an end user, I can see the date published of new stories.
* As an end user, I can see the tags associated with this page e.g. country or topic.
* As an end user, I can use filters easily and deselect options.
* As an end user, I know what filters are currently active and part of my search.
* As an end user, I can easily expand and collapse the filters on the left hand side.
* As an end user, I can easily navigate search results going backwards and forewards (pagination is easy to use).
* As an end-site user, I am happy that search is delivering the results that I expect to see.
* As a site admin, I can change the priority of content types so that landing pages are ranked before PDFs or news items.
* As a site admin, I can specify a specific search URL for results for each of the suggested popular terms.
* As a site admin, I can easily create the list of popular search terms and their destination URLs.
* As a site admin, I can see that the filters match the taxonomy of terms for the site.
* As a site admin, I am happy that search orders the most relevant content to the user.
* As a site admin, I can see most popular search terms, search terms used on the site.
* As a site admin, I know whether users are selecting filters when conducting searches.
* As a developer, I can easily create and manage searches on any entity known to Drupal.
* As a developer, I can easily create and manage faceted search interfaces.
* As a developer, I can change the boosting and other configuration parameters to improve search.
