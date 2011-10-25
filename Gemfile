source 'http://rubygems.org'

gem 'rails', '3.1.1'
gem 'mysql2'
gem 'haml'
gem "haml-rails"
gem 'heroku'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'pg'
end

gem 'jquery-rails'

group :test, :development do
  gem "rspec-rails", "~> 2.6"
end

group :test do
  gem 'factory_girl_rails', '~> 1.0.1'
  gem "shoulda-matchers"
  gem 'turn', :require => false
end