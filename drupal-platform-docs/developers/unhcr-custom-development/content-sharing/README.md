# Content sharing

Entity Share is a collection of modules allowing users to share content entities like nodes, taxonomy terms, media, etc. between different Drupal instances.

### Benefits of Entity Share Module

* **Authorized access**

The module provides content exposure to a site ensuring authentication. Without proper authentication, no site can have access to the channel data exposed from the server website.

* **Enhanced security for verifying content**

The client site has a choice to pull data from the available list of content shared with it. This allows an extra layer of security that allows the administrator/editor of the client site to verify data at its end before synchronizing it. A link to the content/entity being shared is available beside each item in the list of entities present in the respective channel.

* **Detect changes**

Different versions to detect changes, if made- The module lets you view the difference between the already pulled entity and the entity on the server end, in case anyone of them gets changed.

Given this, users have to install a module called diff to be able to view revisions of an entity. Although the module has issues depicting differences in the reference fields; developers have an opportunity here to contribute to the community by finding an appropriate solution to the same.

* **Multilingual support**

Translated entities may be shared among sites provided the language is configured on both ends. Even in the case where the default language of the server and the client site is different, this module is appropriate to use. The client site may add appropriate translations based on the pulled content on their end.

* **Auto-creation of referenced entities**

All the referenced entities are auto-created based on the UUID when a content/entity gets pulled if not present on the client end. Hence referenced paragraphs, images, and media that contain references to such fields need not be present on the client end before pulling content. They will be automatically created and linked.

* **Clean and simple user interface**

Lastly, the UI interface that entity\_share provides for pulling/synchronizing content is easy to use. The entity pull access might be given to a specific user/editor on the website without developer intervention, once configured properly.
