# Environments and Workflow

**Servers:**

<table><thead><tr><th width="180">Type</th><th width="158">Git branch</th><th width="234">Links</th><th width="135">Provider</th><th width="118">Owner</th><th>maintainer</th></tr></thead><tbody><tr><td>Development</td><td><code>dev</code></td><td><a href="https://unhcr-dev.unhcr.info/">https://unhcr-dev.unhcr.info/</a><br><a href="https://unhcr-dev.unhcr.info/">https://acnur-dev.unhcr.info/</a></td><td>UNICC</td><td>UNHCR</td><td>ICC</td></tr><tr><td>Staging</td><td><code>staging</code></td><td><p><a href="https://unhcr-dev.unhcr.info/">unhcr-dev.unhcr.info</a></p><p><a href="https://acnur-dev.unhcr.info/">acnur-dev.unhcr.info</a></p></td><td>UNICC</td><td>UNHCR</td><td>ICC</td></tr><tr><td>Preprod</td><td><code>preprod</code></td><td><a href="https://unhcr-preprod.unhcr.info/">https://unhcr-preprod.unhcr.info/</a></td><td>UNICC</td><td>UNHCR</td><td>ICC</td></tr><tr><td>Hotfix</td><td><code>hotfix</code></td><td><a href="https://unhcr-hotfix.unhcr.info/">https://unhcr-hotfix.unhcr.info/</a></td><td>UNICC</td><td>UNHCR</td><td>UNHCR</td></tr><tr><td>Production</td><td><code>master</code></td><td><p><a href="https://www.unhcr.org/">www.unhcr.org</a></p><p><a href="https://www.acnur.org/">www.acnur.org</a></p></td><td>UNICC</td><td>UNHCR</td><td>ICC</td></tr></tbody></table>

**Bitbucket Repositories:**

<table><thead><tr><th width="446.3333333333333">Repository</th><th>Owner</th></tr></thead><tbody><tr><td><a href="https://bitbucket.org/iccgit/unhcr-mvp/src/master/">https://bitbucket.org/iccgit/unhcr-mvp/src/master/</a></td><td>UNHCR</td></tr></tbody></table>

**Git Workflow Documentation:**

Our Git workflow follows the steps outlined below:

1. The developer creates a ticket branch:
   * The developer creates a new branch from the `dev` branch.
   * The branch should be named after the ticket or issue being worked on.
2. The developer commits changes to the ticket branch:
   * The developer makes all the necessary code changes related to the ticket.
   * The developer commits the changes to the ticket branch locally.
3. The developer pushes the ticket branch to the Vardot Git repository:
   * The developer pushes the ticket branch to the Vardot Git repository for collaboration and version control.
4. The developer opens two new pull requests (PRs):
   * First PR: The developer opens a PR to merge the changes from the ticket branch into the `development` branch.
     * This PR triggers a deployment to the Vardot development server for QA testing.
   * Second PR: The developer opens a PR to merge the changes from the ticket branch into the `dev` branch.
     * This PR triggers a deployment to the UNICC development server on the dev environment.
5. Testing and Approval:
   * QA team tests the changes deployed to the Vardot development server.
   * Once approved by all parties involved, the ticket status is updated to "ready to push."
6. The team lead merges the second PR:
   * The team lead reviews and merges the second PR to deploy the changes to the UNICC development server on the dev environment.
7. UNHCR testing and final PR:
   * UNHCR conducts testing on the dev environment.
   * A new PR is created to merge the `dev` branch into the `master` branch.
8. Deployment to Production:
   * Once the final PR is approved, the changes are deployed to the production environment.

**Deployment Workflow:**

* After a Pull Request is merged into the master branch on Bitbucket, the deployment process is triggered.
* The Bitbucket Pipeline is configured to automatically deploy the code to the pods.
* The pipeline initiates the re-building process, ensuring that the latest changes are incorporated into the codebase.
* Once the re-building process is complete, a developer gains shell access to the pods.
* The developer executes the necessary deploy commands on all the sites.
