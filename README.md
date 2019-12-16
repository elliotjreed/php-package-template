[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code_of_conduct.md) [![Build Status](https://travis-ci.org/elliotjreed/:package_name.svg?branch=master)](https://travis-ci.org/elliotjreed/:package_name) [![Coverage Status](https://coveralls.io/repos/github/elliotjreed/:package_name/badge.svg?branch=master)](https://coveralls.io/github/elliotjreed/:package_name?branch=master)

# PHP

**This is a template. To use it, clone this repository and run:**

```bash
bash ./setup.sh
```

## Getting Started

PHP 7.4 or above and Composer is expected to be installed on our system.

### Installing Composer

For instructions on how to install Composer visit [getcomposer.org](https://getcomposer.org/download/).

### Installing

After cloning this repository, change into the newly created directory and run

```bash
composer install
```

or if you have installed Composer locally in your current directory

```bash
php composer.phar install
```

This will install all dependencies needed for the project.

## Running the Tests

All tests can be run by executing

```bash
vendor/bin/phpunit
```

`phpunit` will automatically find all tests inside the `test` directory and run them based on the configuration in the `phpunit.xml` file.

## Built With

  - [PHP](https://secure.php.net/)
  - [Composer](https://getcomposer.org/)
  - [PHPUnit](https://phpunit.de/)

## License

This project is licensed under the MIT License - see the [LICENCE.md](LICENCE.md) file for details.
