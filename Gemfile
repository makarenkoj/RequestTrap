source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "rails", "~> 6.1.4", ">= 6.1.4.1"

gem "bootsnap", ">= 1.4.4", require: false
gem "hotwire-rails", "~> 0.1.3"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
# Use Redis for Action Cable
gem "redis", "~> 4.0"
gem "redis-namespace"
gem "redis-rails"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 5.0"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "dotenv-rails", groups: %i[development test]
  gem "factory_bot_rails"
  gem "ffaker"
  gem "rspec-rails", "~> 5.0.0"
  gem "shoulda-matchers"
  gem "standard", "~> 1.4"
end

group :development do
  gem "listen", "~> 3.3"
  gem "spring"
  gem "web-console", ">= 4.1.0"
end

gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
