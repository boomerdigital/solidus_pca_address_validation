# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_pca_address_validation'
  s.version     = '0.0.1'
  s.summary     = 'PCA Address Validation for Solidus.'
  s.description = 'PCA Address Validation for Solidus.'
  s.required_ruby_version = '>= 2.1'

  s.author    = 'Allison Reilly'
  s.email     = 'acreilly3@gmail.com'
  s.homepage  = 'http://boomer.digital'

  s.files       = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency "solidus", "~> 1.2"

  s.add_development_dependency 'dotenv'
  s.add_development_dependency "rspec-rails", "~> 3.2"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "sass-rails"
  s.add_development_dependency "coffee-rails"
  s.add_development_dependency "factory_girl"
  s.add_development_dependency "capybara"
  s.add_development_dependency "capybara-screenshot"
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "ffaker"
end
