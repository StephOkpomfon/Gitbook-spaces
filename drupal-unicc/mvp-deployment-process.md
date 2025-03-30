# MVP Deployment Process

#### Manually deployment

Create a local folder to contain both environments.

```
// Create a folder
mkdir deployment
cd deployment

// Vardot MVP
git clone git@bitbucket.org:Vardot/unhcr.git

// Unicc MVP
git clone git@bitbucket.org:iccgit/unhcr-mvp.git

// Go to unhcr folder (Vardot)
cd unhcr

// Copy code from vardot to unicc-mvp
Copy composer.json, composer.lock, vendor to unicc-mvp
Remove the sites folder and then copy all docroot folder to unicc-mvp
set up afr site add a symlink to the afr folder

// Go to unhcr-mvp (Unicc)
cd unhcr-mvp
git checkout test

// Commit the changes
git add .
git commit -m "comment"
git push origin test

// Run drush cim and cr
The drush command should be run on the commands.sh file

```

After deployment, if something seems wrong, it might be a cache issue, or ask UNICC team to check.

**Merge code to master branch**

Create a pull request [https://bitbucket.org/iccgit/unhcr-mvp/pull-requests/new](https://bitbucket.org/iccgit/unhcr-mvp/pull-requests/new)

![](<.gitbook/assets/Screenshot 2022-04-07 at 14.01.47.png>)
