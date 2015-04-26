source 'https://rubygems.org'


gem 'rails', '4.2.0'
gem 'pg'


gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'haml-rails'
gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git', :branch => "bootstrap3"
gem 'jbuilder', '~> 2.0'

gem 'annotate', '~> 2.6.5'

# authorisation
gem 'devise'

# ember
gem 'ember-rails'
gem 'ember-source'

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'puma'
  gem 'quiet_assets'
  # Checks ruby code grammar
  gem 'rubocop', require: false
  # With rspec
  gem 'rubocop-rspec'
  # With guard
  gem 'guard-rubocop'
end

group :development do
  gem 'spring'
  # gem 'rack-mini-profiler'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rails_best_practices'
  #   Guard
  gem 'guard'
  gem 'guard-bundler', require: false
  # And auto starts rails server
  gem 'guard-rails'
  gem 'guard-annotate'
end

group :test do
  gem 'shoulda-matchers'
  gem 'database_cleaner'
end


