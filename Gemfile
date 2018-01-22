# frozen_string_literal: true

source "https://rubygems.org"

gem "faraday"
gem "faraday_middleware"
gem "hanami", "~> 1.1"
gem "hanami-model", "~> 1.1"
gem "hanami-utils"
gem "jsonapi-hanami", github: "jsonapi-rb/jsonapi-hanami"
gem "mysql2"
gem "rake"

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem "rack-cors", require: "rack/cors"
  gem "rubocop"
  gem "shotgun"
end

group :test, :development do
  gem "dotenv", "~> 2.0"
end

group :test do
  gem "capybara"
  gem "minitest"
end

group :production do
  # gem 'puma'
end
