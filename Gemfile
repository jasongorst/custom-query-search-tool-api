source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.0.4.3"

# Use mysql as the database for Active Record
gem "mysql2", "~> 0.5.5"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 6.2.2"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder", "~> 2.11.5"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", "~> 1.16.0", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors", "~> 2.0.1"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", "~> 1.7.2", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

# Use capistrano for deployment
group :development do
  gem 'bcrypt_pbkdf', "~> 1.1.0", require: false
  gem 'ed25519', "~> 1.3.0", require: false
  gem "capistrano", "~> 3.17.2", require: false
  gem 'capistrano-rails', "~> 1.6.2", require: false
  gem 'capistrano-rbenv', "~> 2.2.0", require: false
  gem 'capistrano-passenger', "~> 0.2.1", require: false
end
