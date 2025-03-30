# Import commands (HK)

<pre><code>drush cr
drush cim -y
drush drush search-api:disable-all
drush search-api:server-disable unhcr_testing
drush search-api:server-disable unhcr
drush entity:delete entity_subqueue homepage_featured_news
drush cim --partial --source=/app/docroot/modules/custom/unhcr_migrate/unhcr_migrate_hk/config/install/ -y
drush cim --partial --source=/app/docroot/modules/custom/unhcr_migrate/unhcr_migrate_hk_cn/config/install/ -y
drush hk_unhcr_migrate:component-gallery-extract;
drush hk_unhcr_migrate:country-extract;
drush hk_unhcr_migrate:country-multicolumn-extract;
drush hk_unhcr_migrate:cta-extract;
drush hk_unhcr_migrate:document-extract;
drush hk_unhcr_migrate:emergency-extract;
drush hk_unhcr_migrate:events-extract;
drush hk_unhcr_migrate:extra-media-extract;
drush hk_unhcr_migrate:landing-extract;
drush hk_unhcr_migrate:para-extract;
drush hk_unhcr_migrate:pdf-extract;
drush hk_unhcr_migrate:redirects-extract;
drush hk_unhcr_migrate:supporters-extract;
drush hk_unhcr_migrate:text-extract;
drush hk_unhcr_migrate:tweets;
drush hk_unhcr_migrate:txmd-extract;
drush hk_unhcr_migrate:video-extract;
drush hk_cn_unhcr_migrate:component-gallery-extract;
drush hk_cn_unhcr_migrate:country-extract;
drush hk_cn_unhcr_migrate:country-multicolumn-extract;
drush hk_cn_unhcr_migrate:cta-extract;
drush hk_cn_unhcr_migrate:document-extract;
drush hk_cn_unhcr_migrate:emergency-extract;
drush hk_cn_unhcr_migrate:events-extract;
drush hk_cn_unhcr_migrate:extra-media-extract;
drush hk_cn_unhcr_migrate:landing-extract;
drush hk_cn_unhcr_migrate:media-extract;
drush hk_cn_unhcr_migrate:para-extract;
drush hk_cn_unhcr_migrate:pdf-extract;
drush hk_cn_unhcr_migrate:redirects-extract;
drush hk_cn_unhcr_migrate:supporters-extract;
drush hk_cn_unhcr_migrate:text-extract;
drush hk_cn_unhcr_migrate:tweets;
drush hk_cn_unhcr_migrate:txmd-extract;
drush hk_cn_unhcr_migrate:video-extract
drush eval "\Drupal::database()->schema()->dropTable('migrate_map_hk_landing')";
drush eval "\Drupal::database()->schema()->dropTable('migrate_map_hk_country')";
drush eval "\Drupal::database()->schema()->dropTable('migrate_map_hk_events')";
drush eval "\Drupal::database()->schema()->dropTable('migrate_map_hk_supporters')";
drush eval "\Drupal::database()->schema()->dropTable('migrate_map_hk_landing')";
drush mr hk_cn_images;
drush mr hk_cn_media;
drush mr hk_cn_component_gallery;
drush mr hk_cn_component_gallery_block;
drush mr hk_cn_component_media_video;
drush mr hk_cn_component_media_video_block;
drush mr hk_cn_component_text_block;
drush mr hk_cn_emergency;
drush mr hk_cn_gallery;
drush entity:delete node --exclude=1;
drush mim hk_cn_images;
drush mim hk_cn_media;
drush mim hk_cn_component_cta_block;
<strong>drush mim hk_cn_component_gallery;
</strong>drush mim hk_cn_component_gallery_block;
drush mim hk_cn_component_media_video;
drush mim hk_cn_component_media_video_block;
drush mim hk_cn_component_para_block;
drush mim hk_cn_component_text_block;
drush mim hk_cn_component_txmd_block;
drush mim hk_cn_country;
drush mim hk_cn_emergency;
drush mim hk_cn_events;
drush mim hk_cn_gallery;
drush mim hk_cn_inline_publications;
drush mim hk_cn_landing;
drush mim hk_cn_stories;
drush mim hk_cn_supporters
drush mim hk_component_cta_block;
drush mim hk_component_gallery;
drush mim hk_component_gallery_block;
drush mim hk_component_media_video;
drush mim hk_component_media_video_block;
drush mim hk_component_text_block;
drush mim hk_component_txmd_block;
drush mim hk_gallery;
drush mim hk_emergency;
drush mim hk_events;
drush mim hk_landing;
drush mim hk_stories
drush mim hk_menu_items;
drush mim hk_menu_items --update;
drush mim hk_menu_items --update;
drush mim hk_menu_items --update
drush ev "\Drupal::service('update.update_hook_registry')->setInstalledVersion('unhcr_migrate_hk', 9000);"
drush updb -y
drush cim -y
</code></pre>
