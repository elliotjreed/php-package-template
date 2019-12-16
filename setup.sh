#!/bin/bash

current_directory=$(pwd)
current_directory=$(basename "$current_directory")

read -p "Package name ($current_directory): " package_name
package_name=${package_name:-$current_directory}

read -p "Package description: " package_description

echo
echo "This script will replace the above values in all files in the project directory and reset the git repository."
read -p "Are you sure you wish to continue? (n/y) " -n 1 -r

echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
fi

echo

rm -rf .git
sed -i '/composer.lock/d' .gitignore

git init

echo

find . -type f -exec sed -i '' -e "s/:package_name/$package_name/" {} \;
find . -type f -exec sed -i '' -e "s/:package_description/$package_description/" {} \;

echo "Replaced all values and reset git directory. This script is self-destructing."

rm -- "$0"
