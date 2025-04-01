# Content Sharing

Entity Share (Content Sharing) is a collection of modules allowing you to share content entities like nodes, taxonomy terms, media, etc., between different Drupal instances.

### Requirements

* Editors across all of UNHCR Global and Country sites should be able to share content pages within all their sites
* Editors who own the content can update the content and it would update across all country sites where it is being used
* Admins on each country site should be able to see a listing of all other content on other country sites and filter so they can find what they are looking for. Once a piece of content is copied over and then edited or translated then it will no longer syncornize from the origin source.

**Content Sharing: Blocks**

* Editors across all of UNHCR Global and Country sites should be able to share content blocks within all their sites
* Editors who own the content can update the content and it would update across all country sites where it is being used
* Admins on each country site should be able to see a listing of all other content on other country sites and filter so they can find what they are looking for. Once a piece of content is copied over and then edited or translated then it will no longer syncornize from the origin source.
* As a Country Admin, I should be able to select content blocks from all other country and Global site and publish it directly or translate it for my country site.

**Content Sharing: Links**

* Editors across all of UNHCR Global and Country sites, should be able to link/direct users to static pages in a different language.

**Content Sharing: SEO**

* Admins should be able to share content from different sites as mentioned above without affecting SEO, canonical links, hreflang tags should all be clear and strcutured.

#### Sharing saved blocks on the custom library

* Site admins to be able to only sync custom blocks created and saved under the custom block library
* Sharing custom blocks can be done across all sites

**Sharing SEO for synced content types pages**

* Admins should be able to share content from different sites as mentioned above without affecting SEO, canonical links, hreflang tags should all be clear and strcutured.

**Automatic syncing options**

* Each country site would have an option to have automatic updating of content or manual. For example, if the US English site determines that they would like to inherit all pieces of content from the Global English site automatically. Then any time a piece of content is published on the Global English site then it is published to the US English site as well.
* Eash site can be set to share the content either manually or automatically

**Automatic or Manual Content Sync Set Up**

* Each country site would have an option to have automatic updating of content or manual. For example, if the US English site determines that they would like to inherit all pieces of content from the Global English site automatically. Then any time a piece of content is published on the Global English site then it is published to the US English site as well.

**Notifications for Newly Published Content**

* Editors on the country sites should receive notifications for new content that has been published that could be relevant to their site
* Admins will need to set the specific topics and languages they are interested in receiving content for on their site. For example, the Syria site can specify that they want to recieve notifications on topics such as ""Syria"" and ""English"" and ""Arabic"". They would then only get notifications in the dashboard for content that has these tags and is within those languages. This would allow the admins to filter that content that they want to share on their site easier.
* There could be a weekly email summary of latest content subscribed to.

### Acceptance Criteria

* As a Country Admin, I should be able to filter the listing of content by the site origin, publish date, topic, and type of content.
* As a Country Admin, I should be able to copy the content piece from anotehr site to my site and publish it without any changes. If the content piece is updated, then it = should automatically update the content piece on my site.
* As a Country Admin, I should be able to copy the content piece from anotehr site to my site and translate it then publish it to my site.
* As a Country Admin, I should be able to select specific content blocks from all other country and Global site and publish it directly or translate it for my country site. (horizontally),
* As a Country Admin, I should be able to filter the listing of content by the site origin, publish date, topic, and type of content.
* As a Country Admin, I should be able to copy the content piece from anotehr site to my site and publish it without any changes. If the content piece is updated, then it = should automatically update the content piece on my site.
* As a Country Admin, I should be able to copy the content piece from anotehr site to my site and translate it then publish it to my site.
* As a global or country editor or admin, I should be able to link/direct users to a static pages in a different language.
* As a Country Admin on the site, I should be able to specify if my site will automatically receive updates from another site or manually receive updates.
* As a Country Admin, I should be able to subscribe to notifications for newly created content across all sites based on specific topics and languages that I set as my preferences.
