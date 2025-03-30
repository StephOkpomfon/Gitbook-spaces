# Go live checking list

**Website Go-live Checklist**

1. **Disable Basic Authentication**
2. **Update `robots.txt`**
3. **Enable Google Tag Manager (GTM)**
4. **Generate Sitemap**
5. **Configure Cron Settings**
6. **Switch SOLR Configuration**
7. **Change URL e.g**
   * From `ng-uat` to `ng`
8. **Re-index hreflang**
   * Changing the URL from `ng-uat` to `ng`
9. **Remove SOLR Settings**
10. **Check URL Redirects**
11. **Add return url to Active Directory (AD) Group**
12. **Rebuild Tracking Information for SOLR if solr index is 0**
13. **Enable Auto-sync for Country Switcher**
14. **'/de/' => '**[**https://www.unhcr.org/dach/de/'**](https://www.unhcr.org/dach/de/') **(need remove before go live)**
15. **add drush alias** _drush/sites/unhcr.site.yml_ (Note: the number only allow 2 - 9) [https://bitbucket.org/iccgit/unhcr-mvp/src/master/drush/sites/unhcr.site.yml](https://bitbucket.org/iccgit/unhcr-mvp/src/master/drush/sites/unhcr.site.yml)
16. **Add cron settings in unicc-cwh-master.yaml.** [**https://bitbucket.org/iccgit/unhcr-mvp/src/master/unicc-cwh-master.yaml**](https://bitbucket.org/iccgit/unhcr-mvp/src/master/unicc-cwh-master.yaml)
17. **Content share config file.**

Feel free to modify or expand on this checklist as needed.

**Post launch checklist**

* Solr search
  * Confirm both main Solr and backup index are indexed
  * Re-index Solr indexes if necessary (e.g. if URL has changed to remove _-uat_)
  * Check news and stories index pages are complete
  * Check search results in all languages
* Sitemap
  * Re-generate sitemap if necessary (e.g. if URL has changed to remove _-uat_)
  * Check sitemap.xml is present, correct and listed in robots.txt
* Canonicals/hreflang
  * Ensure correct language declaration and country variant is listed in the site settings (e.g. pt-br)
  * Refresh hreflang database
  * Ensure all global and country homepages are updated to include new site in hreflang metadata
  * Check source code of any pages shared from global for canonical/hreflang metadata
* Google Analytics
  * Check Google Analytics real-time data to confirm GA is working
* Cookie consent banner
  * Check cookie consent banner is working
  * Edit banner code if necessary
* Redirects
  * Implement any redirect tickets logged on Jira
  * Check sample of old URLs in audit spreadsheet to confirm they are redirecting to correct page
  * When satisfied that redirects are working correctly, submit sitemap.xml to Google Search Console
* Uptrends and DevOps
  * Update Uptrends and DevOps information accordingly (make sure you update URLs and CMS versions as well).
  * Update the JSON file for the [Global Web Presence page](https://code.refugeeagency.org/global-web-presence/). JSON files available [here](https://unhcr365.sharepoint.com/teams/psp-desdevelopment/Shared%20Documents/Forms/AllItems.aspx?csf=1\&web=1\&e=YRozcI\&CID=390e05ba%2D11b4%2D41db%2Db902%2D5ddad32e1794\&FolderCTID=0x012000AEFD63D523C65A4F924C8C799F358410\&id=%2Fteams%2Fpsp%2Ddesdevelopment%2FShared%20Documents%2FQuality%20of%20Service%2FCountry%20and%20Help%20JSON%20files%20%28code%2Erefugeeagency%2Eorg%29).

{% embed url="https://bitbucket.org/iccgit/unhcr-mvp/pull-requests/1104" %}

{% embed url="https://bitbucket.org/iccgit/unhcr-mvp/pull-requests/1105" %}
