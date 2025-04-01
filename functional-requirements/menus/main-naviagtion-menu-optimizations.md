# Main Naviagtion Menu Optimizations

### Requirements

To enhance the user experience and address the challenges confronted by the editorial team, a series of improvements were implemented within the main navigation menu.

#### Sidebar menu connection with mega menu

As the main menu is interconnected with the sidebar menu, the editorial team wanted a way to display children's menu items on the sidebar menu of the parent page, sourced from the main navigation. However, they did not want all sub-levels to appear on the main menu. To address this, a solution was implemented: If a menu item is not enabled in the main menu settings, it won't appear in the mega menu but will still be visible in the sidebar menu. Conversely, to hide it from the sidebar menu, a new checkbox was added to the menu item edit settings called "Hide on side navigation (all languages)."

Check the [About UNHCR](https://www.unhcr.org/about-unhcr) page to view an example of the sidebar menu.

#### Main menu backend list length

The main menu on the global site is quite lengthy, and by default, Drupal displays all items and subitems on a single page without any way to collapse or organize them. This made navigating and editing the menu challenging for the editorial team because they had to scroll up and down a lot. To make things easier, we added a module that separates submenu items under each parent menu item. This way, administrators can view the submenu items for each parent more conveniently without the need for extensive scrolling.

#### Separate pages for menu items

An additional challenge for the editorial team arose from the fact that, based on the migrated content, the old system had separate pages for each language for the same content. In Drupal, this is treated as translation. To address this, a solution was implemented to add a menu item without it appearing in other languages if not translated.

#### Hide untranslated items

One of the most complex challenges faced by the editorial team on the menu settings page was the appearance of links in languages other than their own due to the above-mentioned solution. Editors found this confusing and reported it as a bug. To resolve this, the team introduced a label for menu items that are not translated into the language the editor is using. This label is hidden by default, and administrators can display it by clicking "Hide untranslated items" to view the menu items.

#### Delete menu items

When a menu item is deleted from the source language, it will be deleted with all translations. To avoid deleting it by mistake, we added a validation to prevent the admin user from deleting the source language until all translations are deleted. _<mark style="color:orange;">This feature is not pushed to production as per the client's request.</mark>_

In addition to that, the team also made several user interface (UI) and user experience (UX) improvements on the mega menu settings page. These changes aimed to simplify the process for admin users when adjusting menu items. For example, we added options to remove or add columns on levels 2 or 3, making it more user-friendly and flexible for administrators.

### Acceptance Criteria

* As an editor, I can create a mega menu on my site.
* As an editor, I can add links to pages that will appear in the navigation menu.
* As an editor, I can structure my links in the navigation and edit navigation labels and subheadings easily.
* As an editor, I can add an external link in the navigation menu.
* As an editor, I can easily re-order any links in the navigation menu.
* As an editor, I can add a dropdown menu to the navigation menu.
* As an editor, I can add a featured story to the navigation menu.
* As an editor, I can add a CTA button to the navigation menu.
* As a site end user, I can see the navigation menu, and it appears correctly (desktop).
* As a site end user, I can see the navigation menu, and it appears correctly (mobile).
* As a site end user, I can click on the navigation menu links to visit pages.
* As a site end user, I can see a different icon for external links, so I know I'm leaving this site.
* As a designer, I am happy that the design is appearing as expected (desktop).
* As a designer, I am happy that the design is appearing as expected (mobile).
* As a developer, I can easily add/update/remove menu items in the mega menu configuration page.
* As a developer, I can easily set up a submenu.
* As a developer, I can set the link target to open in a new tab or the same tab.
* As a developer, I can easily change the display styles of the navigation menu.
