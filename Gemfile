source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use Postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

#beautify front-end
gem 'bootstrap-sass'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# API for unsplash.com - image for Opinion Module
gem 'unsplash', '~> 1.1.0'

#to seed sample data
gem 'faker'

# SLIM gem
gem 'slim'
# Template engine for Slim
gem 'slim-rails'

# Use devise for user authentication
gem 'devise'

# Use cancancan for user authorization
gem 'cancancan'

# Use identicon for default user avatar
gem 'identicon'

# Use Carrierwave for image uploading
gem 'carrierwave'
# Use MiniMagik for image processing
gem 'mini_magick'
# Use Cloudinary for online image storage
gem 'cloudinary'

#for search 
# gem 'elasticsearch-model', git: 'git://github.com/elasticsearch/elasticsearch-rails.git'
# gem 'elasticsearch-rails', git: 'git://github.com/elasticsearch/elasticsearch-rails.git'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
	# Heroku
	# ==================
	gem 'rails_12factor' # Heroku Gem Supports
	gem 'puma' # Using puma for server
end

gem 'figaro'