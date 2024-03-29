gem 'turbo-rails'
gem 'devise'

gem_group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'capybara'
  gem 'webdrivers'
  gem 'faker'
end

initializer 'generators.rb', <<-CODE
    Rails.application.config.generators do |g|
    g.test_framework :rspec,
    fixtures: false,
    view_specs: false,
    helper_specs: false,
    routing_specs: false,
    request_specs: false,
    controller_specs: false
    end
CODE

initializer 'README.md', <<-CODE
# This was initialized from a template with:

* rspec and friends
* turbo
* devise
CODE

after_bundle do
  generate 'rspec:install'
  generate 'turbo:install'
  generate 'devise:install'
end
