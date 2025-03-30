---
description: Here the list of full commands for the final migration run
---

# Migration script commands

```
// Some code

drush cr;drush cim -y;

drush search-api:disable-all;drush search-api:server-disable unhcr_testing;drush search-api:server-disable unhcr

drush en unhcr_migrate_hk unhcr_migrate_hk_cn -y

drush cim --partial --source=/app/docroot/modules/custom/unhcr_migrate/unhcr_migrate_hk/config/install/ -y;drush cim --partial --source=/app/docroot/modules/custom/unhcr_migrate/unhcr_migrate_hk_cn/config/install/ -y

drush hk_unhcr_migrate:component-gallery-extract;drush hk_unhcr_migrate:country-extract;drush hk_unhcr_migrate:cta-extract;drush hk_unhcr_migrate:document-extract;drush hk_unhcr_migrate:emergency-extract;drush hk_unhcr_migrate:events-extract;drush hk_unhcr_migrate:extra-media-extract;drush hk_unhcr_migrate:landing-extract;drush hk_unhcr_migrate:para-extract;drush hk_unhcr_migrate:pdf-extract;drush hk_unhcr_migrate:supporters-extract;drush hk_unhcr_migrate:text-extract;drush hk_unhcr_migrate:tweets;drush hk_unhcr_migrate:txmd-extract;drush hk_unhcr_migrate:video-extract;drush hk_cn_unhcr_migrate:component-gallery-extract;drush hk_cn_unhcr_migrate:country-extract;drush hk_cn_unhcr_migrate:cta-extract;drush hk_cn_unhcr_migrate:document-extract;drush hk_cn_unhcr_migrate:emergency-extract;drush hk_cn_unhcr_migrate:events-extract;drush hk_cn_unhcr_migrate:extra-media-extract;drush hk_cn_unhcr_migrate:landing-extract;drush hk_cn_unhcr_migrate:media-extract;drush hk_cn_unhcr_migrate:para-extract;drush hk_cn_unhcr_migrate:pdf-extract;drush hk_cn_unhcr_migrate:supporters-extract;drush hk_cn_unhcr_migrate:text-extract;drush hk_cn_unhcr_migrate:tweets;drush hk_cn_unhcr_migrate:txmd-extract;drush hk_cn_unhcr_migrate:video-extract;drush hk_unhcr_migrate:extra-xml-pdf-extract;drush hk_cn_unhcr_migrate:extra-xml-pdf-extract;drush hk-migration-extra-pdf-extract;drush hk-cn-migration-extra-pdf-extract

drush mim hk_cn_images;drush mim hk_cn_media;drush mim hk_cn_component_cta_block;drush mim hk_cn_component_gallery;drush mim hk_cn_component_gallery_block;drush mim hk_cn_component_media_video;drush mim hk_cn_component_media_video_block;drush mim hk_cn_component_para_block;drush mim hk_cn_component_text_block;drush mim hk_cn_component_txmd_block;drush mim hk_cn_extra_pdf;drush mim hk_cn_media_extra_pdf --force;drush mim hk_cn_country;drush mim hk_cn_emergency;drush mim hk_cn_events;drush mim hk_cn_gallery;drush mim hk_cn_inline_publications;drush mim hk_cn_landing;drush mim hk_cn_stories;drush mim hk_cn_supporters;drush mim hk_component_cta_block;drush mim hk_component_gallery;drush mim hk_component_gallery_block;drush mim hk_component_media_video;drush mim hk_component_media_video_block;drush mim hk_component_text_block;drush mim hk_component_txmd_block;drush mim hk_component_para_block;drush mim hk_gallery;drush mim hk_extra_pdf;drush mim hk_media_extra_pdf --force;drush mim hk_emergency;drush mim hk_events;drush mim hk_landing;drush mim hk_stories --force;drush mim hk_supporters;

drush mim hk_menu_items;drush mim hk_menu_items --update;drush mim hk_menu_items --update;drush mim hk_menu_items --update;drush mim hk_cn_menu_items;drush mim hk_cn_menu_items --update;drush mim hk_cn_menu_items --update;drush mim hk_cn_menu_items --update

drush ev "\Drupal::service('update.update_hook_registry')->setInstalledVersion('unhcr_migrate_hk', 10000);";drush ev "\Drupal::service('update.update_hook_registry')->setInstalledVersion('unhcr_migrate_hk_cn', 10000);"

drush updb -y
drush mim hk_menu_items --update;drush mim hk_cn_menu_items --update;
drush cim -y
```



```
// for sites RW NG KE

drush cr;drush cim -y;drush search-api:disable-all;drush search-api:server-disable unhcr_testing;drush search-api:server-disable unhcr;drush en unhcr_migrate_co_en -y;drush cim --partial --source=/app/docroot/modules/custom/unhcr_migrate/unhcr_migrate_co_en/config/install/ -y;

drush co_en_unhcr_migrate:cta-extract;drush co_en_unhcr_migrate:document-extract;drush co_en_unhcr_migrate:emergency-extract;drush co_en_unhcr_migrate:events-extract; drush co_en_unhcr_migrate:extra-media-extract;drush co_en_unhcr_migrate:extra-pdf-extract rw;drush co_en_unhcr_migrate:extra-xml-pdf-extract rw;drush co_en_unhcr_migrate:component-gallery-extract;drush co_en_unhcr_migrate:landing-extract;drush co_en_unhcr_migrate:media-extract;drush co_en_unhcr_migrate:para-extract;drush co_en_unhcr_migrate:pdf-extract;drush co-en-migration-supporters-extract;drush co_en_unhcr_migrate:text-extract;drush co-en-migration-txmd-extract;drush co-en-migration-video-extract;

drush mim co_en_images;drush mim co_en_media;drush mim co_en_component_cta_block;drush mim co_en_component_gallery;drush mim co_en_component_gallery_block;drush mim co_en_component_media_video;drush mim co_en_component_media_video_block;drush mim co_en_component_para_block;drush mim co_en_component_text_block;drush mim co_en_component_txmd_block;drush mim co_en_extra_pdf;drush mim co_en_media_extra_pdf --force;drush mim co_en_country;drush mim co_en_emergency;drush mim co_en_events;drush mim co_en_gallery;drush mim co_en_inline_publications;drush mim co_en_landing;drush mim co_en_stories;drush mim co_en_supporters;drush mim co_en_menu_items;drush mim co_en_menu_items --update;drush mim co_en_menu_items --update;drush mim co_en_menu_items --update
```



```
// for sites DE AT CH

drush cr;drush cim -y;drush search-api:disable-all;drush search-api:server-disable unhcr_testing;drush search-api:server-disable unhcr;drush en unhcr_migrate_de_de -y;drush cim --partial --source=/app/docroot/modules/custom/unhcr_migrate/unhcr_migrate_de_de/config/install/ -y;

drush de_de_unhcr_migrate:cta-extract;drush de_de_unhcr_migrate:document-extract;drush de_de_unhcr_migrate:emergency-extract;drush de_de_unhcr_migrate:events-extract; drush de_de_unhcr_migrate:extra-media-extract;drush de_de_unhcr_migrate:extra-pdf-extract;drush de_de_unhcr_migrate:extra-xml-pdf-extract;drush de_de_unhcr_migrate:component-gallery-extract;drush de_de_unhcr_migrate:landing-extract;drush de_de_unhcr_migrate:media-extract;drush de_de_unhcr_migrate:para-extract;drush de_de_unhcr_migrate:pdf-extract;drush de-de-migration-supporters-extract;drush de_de_unhcr_migrate:text-extract;drush de-de-migration-txmd-extract;drush de-de-migration-video-extract;

drush mim de_de_images;drush mim de_de_media;drush mim de_de_component_cta_block;drush mim de_de_component_gallery;drush mim de_de_component_gallery_block;drush mim de_de_component_media_video;drush mim de_de_component_media_video_block;drush mim de_de_component_para_block;drush mim de_de_component_text_block;drush mim de_de_component_txmd_block;drush mim de_de_extra_pdf;drush mim de_de_media_extra_pdf --force;drush mim de_de_country;drush mim de_de_emergency;drush mim de_de_events;drush mim de_de_gallery;drush mim de_de_inline_publications;drush mim de_de_landing;drush mim de_de_stories;drush mim de_de_supporters;drush mim de_de_menu_items;drush mim de_de_menu_items --update;drush mim de_de_menu_items --update;drush mim de_de_menu_items --update
```
