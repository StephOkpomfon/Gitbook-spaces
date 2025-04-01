# Search Engine Optimization

### Requirements

**Semantic Markup**

* Correct usage of semantic markup (e.g., according to schema.org)
* Caching to be adjusted according to the website content. For example, if there are frequent changes on the page then it should have shorter caching times.

**Robots.txt**

* Robots.txt file is to be used to properly allow and disallow the pages
* If the robots.txt says "Disallow: /", are these well-founded exceptions
* The robot meta tag by default: index, follow

**No Index & No Follow**

* Noindex and nofollow directives possible to be used

**No Flash Use**

* Flash content (.swf) not to be used

## **SEO Tips**

Search engine optimization is often about making small modifications to parts of your website. When viewed individually, these changes might seem like incremental improvements, but when combined with other optimizations, they could have a noticeable impact on your site’s user experience and performance in organic search results.

The following is a list of tips for Editors to follow as a guideline when adding content to the site:

| Tip                                   | Description                                                                                                                                                                                                                                                                                                                                                                                  |
| ------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Use Semantic HTML Elements            | <p>*Use headings properly: H1, H2, H3 …</p><p>*Avoid using more than one H1 in each page. Each page already is set to have the page title as H1 therefore, in the rich text you should use H2 and below.</p><p>*Avoid not specifying a hierarchy in headings in your page. In the rich text it is best to have subtitles within your text and use headings to do this.</p>                   |
| Proper and Unique Page Title Patterns | <p>Every single page has a different title</p><p>*Keep it short, direct, and concise</p><p>*Keep it relevant</p><p>*Avoid overly long title (more than 65 characters)</p><p>*Avoid stuffing keywords in titles</p><p>*Avoid choosing a title that has no relation to the content on the page</p><p>*Avoid using a single title across all of your site’s pages or a large group of pages</p> |
| Metadata, Meta Tags                   | <p>Meta tags describe the pages’ content to search engines</p><p>*Avoid duplicating description across all or some pages</p><p>*Avoid overly long meta descriptions</p><p>*Avoid irrelevant meta descriptions</p>                                                                                                                                                                            |
| Image ALT Attributes are Required     | <p>Alt text (alternative text), also known as "alt attributes" or “alt descriptions”.</p><p>*Describes the appearance and function of an image on a page</p><p>*Important for “Accessibility” - screen readers - and “Image SEO”</p><p>*Avoid missing alt text</p><p>*Avoid stuffing alt text with keywords</p>                                                                              |
| Use Human-Friendly URLs               | <p>A URL that is human-friendly, is search engine friendly</p><p>*Avoid URLs with a lot of query strings http://www.mysite.com/SubPage.aspx?PageId=303&#x26;MenuId=83</p><p>*Avoid stuffing keywords in URLs</p><p>*Avoid spaces and special characters in URLs</p>                                                                                                                          |
| Make Your Site Secure - HTTPS         | <p>*Google announced on August 06, 2014 that HTTPS is ranking signal</p><p>*Increases visitor confidence</p><p>*Improves security</p><p>This will be technically done on the server directly.</p>                                                                                                                                                                                            |
| Prevent URLs Pitfalls                 | <p>Each unique page should be accessed from a single URL only</p><p>*Use redirects to maintain a single domain (with or without www)</p><p>*Use redirects to maintain a single page URL *Do not create duplicate content</p>                                                                                                                                                                 |

### Acceptance Criteria

* As an editor, I can easily set a valid custom Schema.org type for a content page (e.g., type "Person" for the High Commissioner's page).
* As an editor, I do not need to manually set appropriate Article schema.org markup for news, stories, press releases (i.e., automatic markup).
* As an end user, (machine) I see valid and appropriate Schema.org markup for articles.
* As a developer, the custom code should have been compliant with Drupal's code standards (Code review).
* As an end user, (machine) I can see alternative (hreflang) links to homepages in different languages (i.e. homepage in AR on /ar).
* As an end user, (machine) I can see a self-referencing canonical link on every page.
* As an end user, (machine) I can see alternative (hreflang) links in different languages.
* As an end user, (machine) I can see a valid canonical link that will bring me to the correct page if shortened (/node/\[ID]).
* As an editor, I can make a page or article NOT appear in the Sitemap.xml.
* As an end site user (machine) I can instantly see a newly published article appear in the Sitemap.xml.
* As an end user, (machine) I can properly read the auto-generated Sitemap.xml.
* As a site admin, I can force regenerate the Sitemap.xml.
* As a developer, the custom code should have been compliant with Drupal's code standards (Code review).
