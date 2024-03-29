source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.7', '>= 6.1.7.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# ActiveRecord connection adapter for PostGIS
gem 'activerecord-postgis-adapter', '~> 7'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Devise for user Authentification
gem 'devise', '~> 4.7'

# Preview send emails in the browser instead of sending.
gem 'letter_opener_web', '~> 1.0'

# Note: rexml gem is a bundled gem since Ruby 3
gem 'rexml'

# SVG icon pack designed for use modern web projects
gem 'evil_icons', '~> 1.10'

# Create styled HTML emails in Rails
gem 'premailer-rails', '~> 1.11'

# Decorator pattern view helper
gem 'active_decorator', '~> 1.3'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Image hosting in the cloud on S3
gem 'aws-sdk-s3', require: false

# HTTP/REST API client library
gem 'faraday', '~> 1.0'

# JSON API library
gem 'active_model_serializers', '~> 0.10.0'

# Setup Capybara for Integration Testing
group :test do
  gem 'launchy', '~> 2.5', '>= 2.5.2'
  gem 'capybara', '~> 3.39'
  gem 'apparition', '~> 0.6'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 5.1'
  gem 'factory_bot_rails', '~> 5'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Annotates Rails/ActiveRecord Models, routes, fixtures, and others based on the database schema.
  gem 'annotate', '~> 3.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
