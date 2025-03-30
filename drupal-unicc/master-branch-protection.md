---
description: Ask the ICC Team to set up branch protection
---

# Master branch protection

The master branch in Git is usually considered the main branch in a repository. It contains the latest stable code and is the branch from which all other branches are created. Protecting the master branch is important because any changes made to it directly affect the stability and functionality of the entire project.

Here are some reasons why protecting the master branch is necessary:

1. Avoiding accidental changes: Since the master branch is the primary branch, it's important to protect it from accidental changes that may negatively affect the project. By protecting the master branch, you ensure that only authorized contributors with the right permissions can make changes to it.
2. Ensuring code quality: To maintain a high level of code quality, it's important to have a review process for changes made to the master branch. Protecting the master branch ensures that all changes go through a code review process, where they can be checked for quality and adherence to project standards.
3. Maintaining stability: Changes to the master branch can affect the stability of the entire project. By protecting the master branch, you can ensure that only fully tested and reviewed changes are merged, minimizing the risk of introducing bugs or other issues.
4. Enforcing policies: You can use branch protection rules to enforce policies such as requiring code reviews or preventing force pushes. This helps maintain consistency and ensures that all contributors follow the same guidelines when making changes to the project.

Protecting the master branch is important to maintain the stability, quality, and security of the project. It ensures that changes to the primary branch are reviewed and approved, and that contributors follow the same guidelines and policies when making changes to the project.



**Create pull request**

<figure><img src=".gitbook/assets/Screenshot 2023-04-14 at 11.41.35.png" alt=""><figcaption></figcaption></figure>

**A reviewer should be assigned to the PR**

<figure><img src=".gitbook/assets/Screenshot 2023-04-14 at 11.42.32.png" alt=""><figcaption></figcaption></figure>

**Review the code by reviewer**

<figure><img src=".gitbook/assets/Screenshot 2023-04-14 at 11.47.07.png" alt=""><figcaption></figcaption></figure>

**Approve or Request change**

<figure><img src=".gitbook/assets/Screenshot 2023-04-14 at 11.48.14.png" alt=""><figcaption></figcaption></figure>

**The best way to avoid overriding each other's code.**

1. Before you begin developing, git clone the latest code from Bitbucket&#x20;
2. On your local machine, run drush cim to import the latest config file.&#x20;
3. After development, run drush cex to export the configuration.&#x20;
4. Push your code to the repo and make a PR&#x20;
5. check if have any conflict files&#x20;
6. If it's not a conflict, simply merge it&#x20;
7. If there is a conflict, fix it and re-push

