source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.1.13'
gem 'pg'
gem 'puma'

# rendering
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'turbolinks'
gem 'slim-rails'

# assets
gem 'jquery-rails'
gem 'bootstrap-sass'
gem 'bootswatch-rails'
gem 'devise-bootstrap-views'

# api
gem 'jbuilder', '~> 2.0'

# users
gem 'devise'

# data management
gem 'countries'
gem 'ancestry'

group :development, :test do
  gem 'byebug'
  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'letter_opener'

  gem 'quiet_assets'

  gem 'rspec-rails'
end

gem 'faker'       # usually should be used in development group, but I need a lot of fake data in production
gem 'fabrication' # that's why we need this gem anywhere

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
end
