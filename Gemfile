source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'
gem 'bootstrap-sass', '~> 3.2.0'
gem 'sprockets'
gem 'bcrypt-ruby'             # Encryption
gem "faker"                   # Rake sample_data
#Fun gems
gem "parsley-rails"           # Client side validation
#Extras
gem "will_paginate"           # Paginates, basically all but for first 30
gem "bootstrap-will_paginate" # Bootstrap css for paginates

# Use sqlite3 as the database for Active Record
group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem "better_errors"         # Better errors 
  gem "binding_of_caller"     # Better errors console
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara', '2.3.0'
  gem 'spring'
  gem 'factory_girl_rails'
end

gem 'autoprefixer-rails'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

group :doc do
  gem 'sdoc', '~> 0.4.0', require: false
end

group :production do
  gem 'pg' 
  gem 'rails_12factor'
end

