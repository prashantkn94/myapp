source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem "rspec"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'bcrypt', '3.1.11'

gem 'bootstrap-sass', '3.3.7'

gem 'jquery-rails', '4.3.1'
gem 'httparty'

group :development do
  gem "web-console", ">= 3.3.0"
end

group :development, :test do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "rspec-rails", ">= 2.0.0"
  gem "factory_girl_rails", "~> 4.2.1"
  gem 'rails', '~> 5.1.4'
end

group :test do
  gem "faker", "~> 1.1.2"
  gem "capybara", "~> 2.2.0"
  gem "database_cleaner", "~> 1.0.1"
  gem "launchy","~> 2.3.0"
  gem "selenium-webdriver", "~> 2.35.1"
end	
