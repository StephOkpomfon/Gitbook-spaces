# Steps to update ICC CWH WP sites

Updating WordPress on the ICC/bitbucket environment

1. Pull down the repo, example:  `git clone git@bitbucket.org:iccgit/unhcr-movilidadsegura.git`
2. Create a branch using `git branch [branch-name]`
3. Checkout the new branch using `git checkout [branch-name]`
4. Initialize Composer for your project with `composer init --type=wordpress-plugin`
   1. ⁠Package name \[\<vendor>/\<name>]: `unhcr/movilidadsegura`
   2. Description: `movilidadsegura.org`
   3. ⁠Author \[n to skip] `n`
   4. Minimum Stability: `[dev/`**`stable`**`]`
   5. Package Type: `wordpress-plugin`
   6. License: `GPL-2.0-or-later` (???)
   7. ⁠Define your dependencies? `n` _(we'll do that afterwards)_
   8. Add PSR-4 autoload mapping? `n` (???)
   9. Do you confirm generation: `yes`
5. Define your dependencies
   1. Search for plugins on packagist.org using `composer search [keywords]`
   2. Install in vendor directory with `composer require [<vendor>/<name>]`\
      &#xNAN;_**NB. Doesn’t work for many of our paid plugins, eg WPML**_
   3. Run `composer install` if you manually added any dependencies in _composer.json_ or had previously defined dependencies.
6. Make any code changes or wp-config.php changes using VS Code.
7. Update the git index with `git add .`
8. Commit the changes with `git commit -m "[message]"`
9. Push to origin with `git push origin [branch-name]`
10. Create a Pull Request:\
    [https://bitbucket.org/iccgit/unhcr-movilidadsegura/pull-requests/new\
    ](https://bitbucket.org/iccgit/unhcr-movilidadsegura/pull-requests/new)`source branch`` `**`[branch-name]`**` ``Destination Branch`` `**`test`**
11. Review, approve and merge to test branch.
