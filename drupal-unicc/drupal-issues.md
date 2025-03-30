# Drupal Issues

**AH01067: Failed to read FastCGI header**

The "AH01067: Failed to read FastCGI header" error in Apache usually indicates an issue with the communication between Apache and your PHP handler, which is typically handled by the FastCGI protocol. Here are a few things you can try to fix this error:

1. Check your PHP handler configuration: Verify that the PHP handler you're using is properly configured and compatible with your version of Apache.
2. Increase the FastCGI request timeout: In some cases, the error may be caused by long-running scripts, so you can try increasing the FastCGI request timeout in your Apache configuration.
3. Check your Apache error logs: Check your Apache error logs for more details on the specific error that's causing the issue.
4. Try restarting Apache and your PHP handler: Sometimes, a simple restart of your web server and PHP handler can fix the issue.

If none of these solutions work, you may need to seek the assistance of a web developer or system administrator to further investigate the issue.

The solution is to temporarily disable Redis settings for the Asia site.\




**Drupal solr index 504 error**

A 504 error typically indicates that the Solr server is taking too long to respond to the Drupal website's request. This could be due to a variety of reasons, such as network issues, high server load, or misconfiguration.

Here are some steps you can take to fix the Drupal Solr index 504 error:

1. Increase the timeout value: You can try increasing the timeout value for Solr in your Drupal configuration. To do this, navigate to the "Search and metadata" section of your Drupal admin panel, click on "Apache Solr search," and then increase the "Server response timeout" value.
2. Check server load: A high server load could be causing the 504 error. Check your server logs and monitor the server load to identify any spikes. You can also consider upgrading your server to a more powerful one if the current server is unable to handle the load.
3. Check Solr logs: Check the Solr logs to see if there are any errors or warnings. These logs can help identify the root cause of the issue.
4. Check network connectivity: A network issue could be causing the 504 error. Ensure that the Solr server is accessible from your Drupal server and that there are no firewall rules blocking the connection.
5. Re-index: Try re-indexing your content to see if that resolves the issue. To do this, navigate to the "Search and metadata" section of your Drupal admin panel, click on "Apache Solr search," and then click on the "Index now" button.

**How to speed up solr index on Drupal?**

There are several steps you can take to speed up Solr indexing on Drupal:

1. Use the latest version of Drupal: The latest version of Drupal comes with many performance improvements, including better indexing performance.
2. Optimize your Drupal site: Make sure your Drupal site is optimized for performance. This includes using caching, minimizing HTTP requests, and optimizing your database.
3. Optimize your Solr server: Make sure your Solr server is optimized for performance. This includes increasing the JVM heap size, optimizing the Solr configuration, and using a high-performance storage system.
4. Use batch indexing: Instead of indexing all your content at once, use batch indexing. This allows you to index content in smaller batches, which can improve performance.
5. Use server-side caching: Use server-side caching to reduce the number of queries sent to Solr. This can be done by configuring Drupal's search API module to use caching.
6. Monitor your system: Monitor your system to identify any performance bottlenecks. This can be done using tools such as New Relic, which can help you identify slow queries, memory leaks, and other performance issues.

**Solr advanced settings.php**

```
// Some code
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['core'] = 'mycore';
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['path'] = '/solr';
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['host'] = 'localhost';
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['port'] = '8983';
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['http_method'] = 'AUTO';

// Advanced settings
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['timeout'] = 3000;
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['http_basic_auth_user'] = 'solruser';
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['http_basic_auth_pass'] = 'password';
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['exposed_facet_limit'] = '20';
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['omit_header'] = TRUE;
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['curl_verbose'] = TRUE;
$config['search_api.server.' . $server_id]['backend_config']['connector_config']['curl_options'] = [
  CURLOPT_SSL_VERIFYPEER => FALSE,
  CURLOPT_SSL_VERIFYHOST => FALSE,
];

```

**Azure AD issues**

### Description

Two errors: ( core 9.4.1, platformsh staging site)

_TypeError_: Argument 1 passed to Egulias\EmailValidator\EmailValidator::isValid() must be of the type string, null given, called in /app/web/core/lib/Drupal/Component/Utility/EmailValidator.php on line 30 in _Egulias\EmailValidator\EmailValidator->isValid()_ (line _35_ of _/app/vendor/egulias/email-validator/src/EmailValidator.php_)

&#x20;

Could not retrieve user profile information. Details: Client error: \`GET [https://graph.microsoft.com/v1.0/me\`](https://graph.microsoft.com/v1.0/me%60) resulted in a \`403 Forbidden\` response: {"error":{"code":"Authorization\_RequestDenied","message":"Insufficient privileges to complete the operation.","innerErro (truncated...)

**Solution:**

_“Granted ‘Admin Consent’ to **user.read** API for above application.”_

<figure><img src=".gitbook/assets/Screenshot 2022-07-21 at 15.18.08 (1).png" alt=""><figcaption></figcaption></figure>

**Down time**

As discussed, including action items for development colleagues:

* While there was a substantial spike in traffic, most notably to the PDF viewer on the Ireland site, this is unlikely the cause of the downtime, given that most of these requests were cached on the Cloudflare level, or challenged. \

* Sometimes it is helpful to be on a quick call with ICC & Vardot, so that we don't have separate channels of discussion and have to relay messages between the relevant parties. Hence, please initiate such call in major downtimes like these.\

* Please work with ICC & Vardot to identify the root cause of this issue, so that it can be prevented next time around, or at least swiftly resolved. If additional AWS access for the team is needed to for example reboot the MySQL service, please make it an action item to discuss this with ICC CWH team and implement accordingly. If such access is not granted, we should have the process and steps clearly documented for the ICC Service Desk operator on duty to take action (for example outlining the name of the zone, environment, and database in focus, rather than just "please restart mysql for unhcr site", as the operator on duty may not be familiar with our specific application and configuration).

