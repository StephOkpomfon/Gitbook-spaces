# Migration Scenarios

One of the most significant challenges encountered during the migration process was the disparities between the features and functionalities implemented during the MVP phase and the specific requirements articulated by the editorial team.

In response to this situation, we considered several options for resolution, including the following:

1. **Development Change**: create a Jira ticket to make changes in Drupal and then continue with the migration for that part.
2. **New Scenario Mapping**: come up with a new mapping scenario to make it work.
3. **Manual Work**: enlisting it as a task for the editorial team to handle manually during or after the migration.

We also encountered situations where certain features or applications were missing for specific content types. In most cases, we resolved this by creating new mapping scenarios. All of these instances were documented in the corresponding [sheet](https://docs.google.com/spreadsheets/d/1e6HG1FfNOj-wrzjRHL_7TaOENGWDarOwly9wZUy2NuY/edit#gid=1662955262).

The most crucial mapping scenarios that we put into action include:

* [Content Types Mapping](https://docs.google.com/spreadsheets/d/1u6BZr2UFuENY3_1BmlSv-5GDnmbsfTZZarBb4jtW-Fk/edit#gid=1229635398)\
  The UNHCR team collaborated with the Vardot team in this sheet to meticulously establish and finalize the field mappings for each content type (and what not to migrate). This comprehensive documentation was completed before the commencement of the migration, ensuring that the development of scripts could be precisely tailored in accordance with these mappings.\\
* [Components Mapping](https://docs.google.com/spreadsheets/d/1rmqGJDEj2NlHibFp-j5XesSTl3KdM2NVFR9kZ1n3rdI/edit#gid=968911254)\
  The UNHCR team collaborated with the Vardot team in this sheet to meticulously establish and finalize the field mappings for each component (and what not to migrate). This comprehensive documentation was completed before the commencement of the migration, ensuring that the development of scripts could be precisely tailored in accordance with these mappings.\\
*   Media Header Template\
    Since we have several media header templates for the different content types, the UNHCR team provided us with their specific selections for each content type based on the content included in the feeds. For example, this is the mapping for the Landing page:\
    To use the \<template> tag to map it with the media header template\
    &#xNAN;_"FULL" to map it with the "Full width small" media template_

    _"BLACK" to map it with "Rectangle" or "Bar" media templates_

    _If \<template> = FULL then button is blue_\
    &#xNAN;_&#x49;f \<tempate> = BLUE (or BLACK in XML export) then button is outline light grey_\\
* Content Grid Custom Block Changes\
  While mapping the "Standard" component from Texis to the "Custom block" on Drupal, we identified missing information that was either required or different in Texis. As a result, we implemented the following changes:
  * Make the black bar optional and make it uncheck for the migrated content
  * The title to be used as the link to the page
  * If no title tag is added, a button will be added with the link
