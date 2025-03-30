# Git workflow

**Git workflow**

1. Create a branch for your work on local e.g `git checkout -b ssar_andy`
2. When you make changes in Drupal, Run `lando drush cex` to export the config files
3. Commit your changes, `git add .` -> `git commit -m "comment"` -> `git pull` -> `git push origin branch_name`
4. Create a Pull Request to merge your code, then assign it to other developer for review.
5. After merging the code into the master branch on github, then go back to your local master Run `git pull origin master`
6. Merge master into your local branch, e.g Run `git checkout ssar_andy` -> `git merge master`

**Useful git commands**

1. Switch branch `git checkout branch_name`
2. create a branch `git checkout -b branch_name`
3. Check difference `git diff file_name`
4. Git log `git log` or `git log --oneline`
5. Git status `git status`

**Workflow Diagram**\


{% file src=".gitbook/assets/Workflow.pdf" %}
