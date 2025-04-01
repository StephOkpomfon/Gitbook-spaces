---
description: An overview of the UNHCR Base theme and how to use it.
---

# UNHCR Frontend Theme

The UNHCR theme follows UNHCR's general styling guidelines and components and puts it on top of Bootstrap's framework. This theme is a sub-theme of the Vartheme theme and is intended to be used as the base theme for all UNHCR projects.

<figure><img src="../../.gitbook/assets/spaces_bydr6BR5VPqrbltmdnWL_uploads_git-blob-506eb7e57977d128d8f2bcf0f17eb026e5e302c6_Technical Documentation.jpg" alt=""><figcaption></figcaption></figure>

## Using UNHCR base theme

The UNHCR theme is hosted on bitbucket under unhcr\_base\_theme: [https://bitbucket.org/Vardot/unhcr\_base\_theme](https://bitbucket.org/Vardot/unhcr_base_theme)

1.  Add the following lines to your composer.json file under the repositories section:\\

    ```json
    "vardot/unhcr":  {
        "type": "vcs",
        "url": "git@bitbucket.org:Vardot/unhcr_base_theme.git"
    }
    ```

    \\

    <figure><img src="../../.gitbook/assets/composer (1).png" alt=""><figcaption></figcaption></figure>
2.  Include the project into your composer file by requiring it:\\

    ```
    composer require 'vardot/unhcr:^1.0'
    ```
3.  If you had the theme previously in your themes/custom directory you would need to check if you have changes you want to back-port, use meld to check for differences **if things look out of order check with the team to decide on the issue**:

    ```
    meld docroot/themes/contrib/unhcr docroot/themes/custom/unhcr 
    ```
4.  Make sure everything is in order then delete the folder under themes/custom:\\

    ```
    rm -rf docroot/themes/custom/unhcr
    ```
5. Clear your caches and check your site.
6. Commit your code as usual.

## Creating a sub-theme

Each UNHCR project might require its own customizations to specific components from the base theme. Unlike creating a sub-theme from Vartheme, The sub-theme from UNHCR should only contain the desired styling customizations with specific library/variable overrides.

## Contributing to the UNHCR base theme

1. Clone the theme repo [https://bitbucket.org/Vardot/unhcr\_base\_theme](https://bitbucket.org/Vardot/unhcr_base_theme)
2. Add your changes and create a new pull request to branch **1.0.x**
3. To apply the changes to your project you can:\
   \- Create and apply a new local patch of your changes.\
   \- Require the dev version of the project after merge.\
   \- Request a new version release from the theme maintainer.

## Style guideline

<img src="../../.gitbook/assets/Stylesheet 01.jpg" alt="" data-size="original">

![](<../../.gitbook/assets/Stylesheet 02.jpg>) ![](<../../.gitbook/assets/Tablet and Mobile typography.jpg>)

## Theme elements

The base theme contains some ready-to-use elements that could be reused by multiple projects:

### Header

A basic header theming.

<figure><img src="../../.gitbook/assets/The Global Compact on Refugees _ The Global Compact on Refugees _ UNHCR.png" alt=""><figcaption></figcaption></figure>

### Mega Menu Header

The base theme provides styling compatible with the mega menu module:

<figure><img src="../../.gitbook/assets/UNHCR, the UN Refugee Agency _ UNHCR.png" alt=""><figcaption></figcaption></figure>

### Footer

Basic footer styling per UNHCR's style guide.\\

<figure><img src="../../.gitbook/assets/image (1) (1) (1).png" alt=""><figcaption></figcaption></figure>
