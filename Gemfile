source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.1'

gem 'administrate'
gem 'administrate-field-carrierwave', '~> 0.3.2'
gem 'administrate-field-enum'
gem 'administrate-field-password'
gem 'bootsnap'
# gem 'bootstrap'
# gem 'bootstrap-sass'
gem 'carrierwave', '~> 1.0'
gem 'clearance'
gem 'coffee-rails'
gem 'faker'
gem 'fog'
gem 'jbuilder', '~> 2.5'
gem 'pg'
gem 'pg_search'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.0'
# gem 'hiredis'
# gem 'redis', '~> 4.0'
gem 'render_anywhere'
gem 'sass-rails', '~> 5.0'
gem 'slim'
gem 'sprockets-rails'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker', '~> 3.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara'
  gem 'capybara-screenshot'
  gem 'capybara-webkit'
  gem 'factory_girl_rails'
  #gem 'pry'
  #gem 'pry-nav'
  #gem 'pry-rails'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner'
  gem 'rspec_junit_formatter', git: 'http://github.com/sj26/rspec_junit_formatter'
  gem 'simplecov', require: false
  gem 'webmock'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
