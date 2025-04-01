# Site Logo Configurations

The UNHCR team requires the ability to change the site's logo based on the language and country, as they have distinct logos for each variation.

### Requirements

#### Logo Per Site per Language

* To be able to change the site logo per site per language. Example case, Northern Europe regional site (/neu) has a different logo for Denmark section: https://www.unhcr.org/neu/dk, Finland section: https://www.unhcr.org/neu/fi , Norway section: https://www.unhcr.org/neu/no etc.
* Logo files (PNG, print, SVG) on language-level granularity (rather than site-level) and making it a editable field in Drupal UI (for Super Admin role).
* This may also apply to other default images / fallbacks, including the default open graph share image (e.g. sites on acnur.org/... will eventually have to show the ACNUR logo rather than UNHCR logo in the default open graph, if none is explicitly defined).

### Acceptance Criteria

* As a site admin, I can easily add a logo for different language versions.
* As a user, I can see a different logo appearing for each language version.
* As a designer, I am happy that the logo is appearing as expected (desktop).
* As a designer, I am happy that the logo is appearing as expected (mobile).
* As a developer, I have tested this, and it works as expected, and has been well implemented.
* As a developer, The logo can be configured easily via the backend.

{% hint style="info" %}
This feature is only available for Super admin role.
{% endhint %}
