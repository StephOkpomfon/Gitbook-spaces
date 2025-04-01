---
description: >-
  The Update Token Value Drush command allows users to update the value of a
  token in Drupal. This command can be useful for updating tokens easily and
  quickly
---

# Update Token Value via Drush Command

### Usage

<mark style="color:green;">`drush utut [token] [value]`</mark>

* token]: The token to update.
* \[value]: The new value for the token.

### Example

<mark style="color:green;">`drush utut asylumseekers 5.5`</mark>

This command will update the value of the **asylumseekers** token to "5.5".

### Output

If the token updates successfully: Token updated successfully.

If the token does not exist: Token ID is not found.

### Note

* Make sure to use the correct token syntax when specifying the token to update.
* Ensure that the token is valid and exists in the system before updating its value.
* To update tokens on all sites, we currently use a bash while loop that executes the command on all country sites.

```bash
drush sa --format=list |  grep prod- | while read -r alias
do
    echo "Running cim on $alias";
    drush $alias utut asylumseekers 5.4
    drush $alias utut currentyear 2024
    drush $alias utut displacedpeople 108.4
    drush $alias utut idppercent 58
    drush $alias utut idpreturns 5.7
    drush $alias utut idps 62.5
    drush $alias utut peopleofconcern 112.6
    drush $alias utut refugeechildren 41
    drush $alias utut refugeereturns 339300
    drush $alias utut refugees 35.3
    drush $alias utut staffnumbers 20739
    drush $alias utut stateless 4.4
    drush $alias utut statisticsyear 2022
    drush $alias utut unhcrage 73
    drush $alias utut unhcrcountries 135
    drush $alias utut unhcrrefugees 29.4
    drush $alias utut unrwarefugees 5.9
done
```
