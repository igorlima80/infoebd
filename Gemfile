source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'capistrano', '~> 3.7', '>= 3.7.1'
gem 'capistrano-rails', '~> 1.2'
gem 'capistrano-passenger', '~> 0.2.0'
gem 'capistrano-bundler'

# Add this if you're using rbenv
gem 'capistrano-rbenv', '~> 2.1'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# A gem to automate using jQuery with Rails
gem 'jquery-rails'

# bootstrap 4
# Popper.js assets as a Ruby gem. https://popper.js.org/
# gem 'popper_js', '~> 1.12.9'
# Bootstrap 4 ruby gem for Ruby on Rails (Sprockets) and Hanami (formerly Lotus).
# gem 'bootstrap', '~> 4.1.1'

# Official Sass port of Bootstrap 2 and 3. http://getbootstrap.com/css/#sass
gem 'bootstrap-sass', '~> 3.3.7'

# the font-awesome font bundled as an asset for the rails asset pipeline http://fortawesome.github.com/Font-Awesome/
gem 'font-awesome-rails'
# Forms made easy for Rails! It's tied to a simple DSL, with no opinion on markup. http://blog.plataformatec.com.br/tag/…
gem 'simple_form'
# Flexible authentication solution for Rails with Warden. http://blog.plataformatec.com.br/tag/devise/
gem 'devise'
# The authorization Gem for Ruby on Rails.
gem 'cancancan', '~> 2.0'
# Role management library with resource scoping http://rolifycommunity.github.com/rolify/
gem 'rolify'
# Dynamic nested forms using jQuery made easy; works with formtastic, simple_form or default forms http://github.com/nathanvda/cocoon
gem 'cocoon'
# Integration of RubyMoney - Money with Rails
gem 'money-rails', '~>1'

gem 'wdm', '>= 0.1.0' if Gem.win_platform?

# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'
# Object-based searching. http://ransack-demo.herokuapp.com
gem 'ransack'

# flag-icon-css sass gem for use in Ruby/Rails projects.
gem 'flag-icons-rails'

gem 'seed_dump'
