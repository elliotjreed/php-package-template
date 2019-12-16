#!/bin/bash

current_directory=$(pwd)
current_directory=$(basename "$current_directory")

git_name=$(git config user.name);
git_email=$(git config user.email);

read -p "Author name ($git_name): " author_name
author_name=${author_name:-$git_name}

read -p "Author email ($git_email): " author_email
author_email=${author_email:-$git_email}

read -p "Author GitHub / Packagist username (elliotjreed): " username
username=${username:-elliotjreed}

read -p "Author website or profile (https://github.com/$username): " author_website
default_website="https://github.com/$username"
author_website=${author_website:-$default_website}

read -p "Package name ($current_directory): " package_name
package_name=${package_name:-$current_directory}

read -p "Package description: " package_description
package_description=${package_description:-PHP}

read -p "Top-level namespace (ElliotJReed): " namespace
namespace=${namespace:-ElliotJReed}

echo
echo "This script will replace the above values in all files in the project directory and reset the git repository."
read -p "Are you sure you wish to continue? (y/N) " -n 1 -r

if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi

echo

rm -rf .git
sed -i '/composer.lock/d' .gitignore

# If you're wondering what the `sed` replacement is here, it's just escaping characters for the regex. from the variables defined by `read` above
find . -type f -exec sed -i -e "s/:username/$(echo "$username" | sed -e 's/[]\/$*.^[]/\\&/g')/g" {} \;
find . -type f -exec sed -i -e "s/:author_name/$(echo "$author_name" | sed -e 's/[]\/$*.^[]/\\&/g')/g" {} \;
find . -type f -exec sed -i -e "s/:author_email/$(echo "$author_email" | sed -e 's/[]\/$*.^[]/\\&/g')/g" {} \;
find . -type f -exec sed -i -e "s/:author_website/$(echo "$author_website" | sed -e 's/[]\/$*.^[]/\\&/g')/g" {} \;
find . -type f -exec sed -i -e "s/:package_name/$(echo "$package_name" | sed -e 's/[]\/$*.^[]/\\&/g')/g" {} \;
find . -type f -exec sed -i -e "s/:package_description/$(echo "$package_description" | sed -e 's/[]\/$*.^[]/\\&/g')/g" {} \;
find . -type f -exec sed -i -e "s/:namespace/$(echo "$namespace" | sed -e 's/[]\/$*.^[]/\\&/g')/g" {} \;

mv tests/ElliotJReed tests/"$namespace"
mv src/ElliotJReed src/"$namespace"

echo "Replaced all values and removed git directory. This script is self-destructing."

rm -- "$0"

echo "Installing dependencies"

composer install