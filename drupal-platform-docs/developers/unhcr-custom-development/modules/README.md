# Modules

Several contrib and custom modules were used for the project. Contributed modules are developed and supported by the Drupal community whereas custom modules were developed specifically for this project. In some cases, the contributed modules were patched to align their functionality with this project. In those cases, all patches are kept and logged in the file named composer.json. This allows the contributed module to be updated should there be one and still have the patch applied afterward.

A list of modules is presented below. You can access this list and any configuration details by logging in as an administrator into Drupal and navigating to Modules.

Another way to get a complete listing of enabled modules is via the command line ‘drush’ tool (Drupal shell). Secure Shell (SSH) into the server and cd into the directory containing the Drupal code. unhcr.org was built on top of the Varbase profile, this approach provides a lot of out-of-the-box functionality and ensures consistency for updates and new features.

Modules can be reviewed and managed by following this link as a superuser: [https://mvp.unhcr.info/admin/modules](https://mvp.unhcr.info/admin/modules)

{% hint style="danger" %}
**It's preferred to use Drush for managing Drupal modules due to performance implications if done from the UI.**
{% endhint %}
