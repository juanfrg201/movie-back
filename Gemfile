source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"


gem "rails", "~> 7.0.5", ">= 7.0.5.1"
gem 'active_model_serializers', '~> 0.10.13'


gem "sqlite3", "~> 1.4"


gem "puma", "~> 5.0"

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem "bootsnap", require: false

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'pry-rails', '~> 0.3.9' #detener request y comprobar el reuqest
  gem 'rspec-rails', '~> 5.0', '>= 5.0.1' #para tester en rails
  gem 'factory_bot_rails', '~> 6.2' #crear esquemas guias de nuestros modelos
  gem 'shoulda-matchers', '~> 5.0' #testear modelos facil
  gem 'active_model_serializers', '~> 0.10.13'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  gem "spring"
  gem 'listen'
end

