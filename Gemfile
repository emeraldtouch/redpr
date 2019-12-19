source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'haml'
gem 'jbuilder', '~> 2.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.1'
gem 'redis', '~> 4.1', '>= 4.1.3'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'

group :development, :test do
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'pry-byebug'
  gem 'rspec-rails', '4.0.0.beta3'
end

group :development do
  gem 'listen'
  gem 'pry-rails'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'selenium-webdriver'
end
