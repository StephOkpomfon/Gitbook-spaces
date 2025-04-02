---
description: An overview of how canonical tags are being managed across UNHCR sites.
---

# Canonical Tags

A canonical tag (aka "rel canonical") is a way of telling search engines that a specific URL represents the master copy of a page. Using the canonical tag prevents problems caused by identical or "duplicate" content appearing on multiple URLs.

### Requirements

* Customizable canonical tags for similar pages

### How Canonical Tags Work

Canonical tags are generated automatically for content pages. When content is shared between different sites, the canonical tag will always link the original content.

The shared content stores the value of the original content subdomain in the field `Canonical subdirectory` and the original UNHCR site in the field `Canonical domain` which are then being used in the custom token `[node:canonical-domain]` to generate the canonical tag.

For configuring canonical tags across sites with shared content, A list of sites must be configured correctly. The list represents the sites available for content sharing, the official URL of each site, and the currently active site. To access the UNHCR Sites list navigate to [https://mvp.unhcr.info/admin/config/system/unhcr-site](https://mvp.unhcr.info/admin/config/system/unhcr-site)

![List of configured available sites](<../../drupal-platform-docs/.gitbook/assets/image (5) (2).png>)

### Adding a new UNHCR Site

Adding a new site can only be done by users with the **Super Admin** role.

* Navigate to the UNHCR Site list [https://mvp.unhcr.info/admin/config/system/unhcr-site](https://mvp.unhcr.info/admin/config/system/unhcr-site)
* Click on **+ Add a UNHCR site**.

![Add Sites](<../../drupal-platform-docs/.gitbook/assets/image (7).png>)

* Fill in the required information

![Add UNHCR Site](<../../drupal-platform-docs/.gitbook/assets/image (8) (1).png>)

* If the new UNHCR site represents the current site the user is on, check the **Active** checkbox.
* Click **Save**.
* A confirmation message will show that the site has been added successfully.

![Add Site - Confirmation Message](<../../drupal-platform-docs/.gitbook/assets/image (9) (1) (1) (1).png>)

### Setting A UNHCR Site as Active

This action can be done by users with the roles **Site Admin** or **Super Admin**.

To set up a UNHCR site as the active URL for the current site follow the steps:

1. Navigate to the UNHCR Site list [https://mvp.unhcr.info/admin/config/system/unhcr-site](https://mvp.unhcr.info/admin/config/system/unhcr-site)
2. Click on **Edit** for the targeted site.\
   ![](<../../drupal-platform-docs/.gitbook/assets/image (27).png>)
3. Check the **Active** checkbox.\
   ![](<../../drupal-platform-docs/.gitbook/assets/image (6) (1) (1).png>)
4. Click **Save**.
5. Make sure the site has only one active UNHCR site instance.

### Setting up a custom canonical domain for a content page

Editors can manually change the generated canonical tags per content page by the following steps:

1. Navigate to the **Edit** page of the content.
2. In the side menu, expand the **Meta tags** accordion.
3. In **Advanced,** Change the value of the field `Canonical URL` from the default token to the new custom URL.\
   ![](<../../drupal-platform-docs/.gitbook/assets/image (3) (1).png>)
4. Click **Save**.
