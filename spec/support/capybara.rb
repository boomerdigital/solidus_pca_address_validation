require 'capybara'
require 'capybara/rspec'
require 'capybara/rails'
require 'capybara/poltergeist'
require 'capybara-screenshot/rspec'

RSpec.configure do
  Capybara.javascript_driver = :poltergeist

  Capybara.register_driver(:poltergeist) do |app|
    Capybara::Poltergeist::Driver.new app, js_errors: true, timeout: 60
  end

  Capybara.save_and_open_page_path = ENV['CIRCLE_ARTIFACTS'] if ENV['CIRCLE_ARTIFACTS']
end
