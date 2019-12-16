[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code-of-conduct.md) [![Build Status](https://travis-ci.org/elliotjreed/:package_name.svg?branch=master)](https://travis-ci.org/elliotjreed/:package_name) [![Coverage Status](https://coveralls.io/repos/github/elliotjreed/:package_name/badge.svg?branch=master)](https://coveralls.io/github/elliotjreed/:package_name?branch=master)

# PHP

**This is a template. To use it, clone this repository or select "Use this template" from [GitHub.com/elliotjreed/php-package-template](https://github.com/elliotjreed/php-package-template) and run:**

```bash
bash ./setup.sh
```

## Getting Started

PHP 7.4 or above and Composer is expected to be installed.

### Installing Composer

For instructions on how to install Composer visit [getcomposer.org](https://getcomposer.org/download/).

### Installing

After cloning this repository, change into the newly created directory and run:

```bash
composer install
```

or if you have installed Composer locally in your current directory:

```bash
php composer.phar install
```

This will install all dependencies needed for the project.

## Running the Tests

### Unit tests

All unit tests can be run by executing:

```bash
composer phpunit
```

#### Debugging

To have PHPUnit stop and report on the first failing test encountered, run:

```bash
composer phpunit:debug
```

### Static analysis

[Phan](https://github.com/phan/phan) and [Psalm](https://psalm.dev/) are configured at their highest levels, meaning false positives are quite likely.

All static analysis can be run by executing:

```bash
composer static-analysis
```

### Mutation testing

Mutation testing (via [Infection](https://infection.github.io/)) can be run by executing:

```bash
composer mutation
```

Code format checking (via [PHP Code Sniffer](https://github.com/squizlabs/PHP_CodeSniffer)) can be run by executing:

```bash
composer phpcs
```

### Running everything

All of the tests can be run by executing:

```bash
composer test
```

### Outdated dependencies

Checking for outdated Composer dependencies can be performed by executing:

```bash
composer outdated
```

### Validating Composer configuration

Checking that the [composer.json](composer.json) is valid can be performed by executing:

```bash
composer validate --no-check-publish
```

### Running via GNU Make

If GNU [Make](https://www.gnu.org/software/make/) is installed, you can replace the above `composer` command prefixes with `make`.

All of the tests can be run by executing:

```bash
make test
```

### Running the tests on a Continuous Integration platform (eg. Travis)

To run all the tests and report code coverage in Clover XML format (which many CI platforms can read, including Travis CI), add the following to your CI config (eg. [.travis.yml](.travis.yml)):

```yaml
      script:
        - composer travis
      after_success:
        - travis_retry php vendor/bin/php-coveralls
```

## Coding standards

PHP coding standards are quite strict and are defined in [ruleset.xml](ruleset.xml).

The rules are PSR-2 and PSR-12 standards with additionally defined rules.

The code formatting checks can be run by executing:

```bash
composer phpcs
```

To automatically fix any issues where possible, run:

```bash
composer phpcs:fix
```

## Built With

  - [PHP](https://secure.php.net/)
  - [Composer](https://getcomposer.org/)
  - [PHPUnit](https://phpunit.de/)
  - [Phan](https://github.com/phan/phan)
  - [Psalm](https://psalm.dev/)
  - [Infection](https://infection.github.io/)
  - [PHP Code Sniffer](https://github.com/squizlabs/PHP_CodeSniffer)
  - [GNU Make](https://www.gnu.org/software/make/)

## License

This project is licensed under the MIT License - see the [LICENCE.md](LICENCE.md) file for details.
