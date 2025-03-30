---
description: >-
  When creating a new webform, you need to check the "Disable remote submission
  for this webform" so that the webform will not be configured to send
  submission to webforms.unhcr.org.
---

# 🚀 Send to email using email handler

This will add the webform to the list of webforms to be ignored while processing submissions to be stored remotely on webforms.unhcr.org.&#x20;

Once the webform is created, please follow the below instructions to create an email handler for the webform.

Add Email Handler

* In the webform editor, click on the "Email Handlers" tab.
* Click on the "Add handler" button to add a new email handler.
* Choose "Email" from the list of available handlers.

Configure Email Handler

* Enter the recipient email addresses in the "To" field. You can separate multiple email addresses with commas.
* Configure other settings such as the "From" email address, subject, and email body.
* Optionally, you can customize the email template using tokens provided by the Webforms module.
* Click on the "Save" button to save your email handler configuration.

Test the Email Handler

* Before deploying your webform, it's essential to test the email handler to ensure that emails are being sent correctly.
* Submit a test submission on your webform and verify that the email is received at the specified recipient addresses.

