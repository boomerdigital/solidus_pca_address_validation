SolidusPcaAddressValidation
===========================

This branch is specifically for Addressy integration of address validation.

Installation
------------

Add solidus_pca_address_validation to your Gemfile:

```ruby
gem 'solidus_pca_address_validation', github: 'boomerdigital/solidus_pca_address_validation', branch: 'addressy'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g solidus_pca_address_validation:install
```

Testing
-------

First bundle your dependencies, then run `rake`. `rake` will default to building the dummy app if it does not exist, then it will run specs. The dummy app can be regenerated by using `rake test_app`.

```shell
bundle
bundle exec rake
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_pca_address_validation/factories'
```

Copyright (c) 2016 [name of extension creator], released under the New BSD License
