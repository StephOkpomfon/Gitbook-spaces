# In-App config

* After importing the database and copying the static files
  * Create a new config split for the site
  * Install/Uninstall languages
  * Run **drush clean-site** inside site directory (Run this command multi-time until /admin/content page error disappears)
  * Create a [new remote](../../unhcr-custom-development/content-sharing/remotes.md) for the new site (check **entity\_share\_live\_remotes** and **entity\_share\_stg\_remotes** and **entity\_share\_dev\_remotes**) config directories
  * Create a new "[UNHCR site](../)" for the new site(**Active**) and **deactivate** all other sites
