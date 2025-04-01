# Geo Filter Pop-up

The Geo Filter is a functionality that directs visitors to the global site to a regional or country-specific site based on their IP address and location.

### Requirements

* When visitors to the global site to show them a message that their is a regional site available based on their location.
* To save the option the user selected until the cookies are cleared and then the message will appear again.
* Message to be translated per language.
* The switcher prompt should be there onLoad and not animate in a few seconds after the page is loaded, as this creates cumulative layout shifts (CLS) and provides for a bad UX.

### Viewing

* You can see the pop-up message on the backend on this [page](https://www.unhcr.org/admin/config/regional/redirect-settings).
* Country redirects [list](https://www.unhcr.org/admin/content/country-site-redirects).

### Acceptance Criteria

* As a user, I should be able to see the geo filter message popped-up while the page is on load.
* As a user, I shouldn't be able to see the geo filter message popped-up with any animations.
* As a user, The message is translated - for Arabic language to have the country name translated to Arabic.
