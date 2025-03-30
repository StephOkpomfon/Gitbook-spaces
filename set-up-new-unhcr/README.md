---
description: >-
  This following is for setting up a new Drupal instance for a UNHCR.org country
  or regional clone site. This documentation is still in Beta, and may need to
  be updated and improved.
---

# Setting up a new site

The following example assumes we are cloning /afr to create /asia. You can swap out these two sites for whichever you would like to use.

1. Navigate to a new empty folder locally, and clone the test branch of the unhcr-mvp project from BitBucket.org:\
   `git clone -b test git@bitbucket.org:iccgit/unhcr-mvp.git`\

2.  Within the local project, navigate to the ./web/docroot/sites folder.

    `cd web/docroot/sites`\

3.  Copy \[recursively] one of the existing site folders, (in our case "afr" to create "asia").

    `cp -r afr asia`\

4. Navigate to your new site folder, ("asia"), and open in VS code.\
   `cd asia`\
   `code .`\

5. Edit the "**settings.php**" file. Near the end of the file we will need to add a line of code to import the split config file for our new site. But since the new site’s config file doesn’t exist yet, we just want to comment out the line to import the split config file for the previous site, ("africa").\
   <mark style="color:red;">`//`</mark>` ``$config[‘config.split.config.split.africa’][‘status’] = TRUE;`\

6. Now, navigate 3 directores up to the main **/web** folder, and edit "_unicc-cwh-test.yaml_".\
   `cd ../../../`\

7. In "**unicc-cwh-test.yaml**" file, add a new environment under **`env:`** for the database.\
   \[...missing...]\

8.  In the same file, "**unicc-cwh-test.yaml**", under **`mountPaths`**, add a new mountPath for our "asia" site.\
    `mountPaths:`\
    &#x20;`- /var/www/docroot/sites/default/files`

    &#x20;`- /var/www/docroot/sites/afr/files`

    &#x20;<mark style="color:red;">`- /var/www/docroot/sites/asia/files`</mark>

    &#x20;`- /var/www/docroot/sites/default/files/private`


9.  These next steps will need to be done on both the **test** and **prod** servers. Login to the UNICC cloud database admin panel (adminer).

    TEST:  [https://unhcr-mvp-test-adminer.test.unhcr.un-icc.cloud/](https://unhcr-mvp-test-adminer.test.unhcr.un-icc.cloud/)\
    PROD:  [https://unhcr-mvp-adminer.prod.unhcr.un-icc.cloud/](https://unhcr-mvp-adminer.prod.unhcr.un-icc.cloud/)\

10. Create the new database, in this case named "**`unhcrasia`**" on the production server, and "**`unhcrasiatest`**" on the test server). Select the collation "**`latin1_swedish_ci`**".

    (Drupal will populate these databases, we just need to create them).

