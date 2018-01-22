# frozen_string_literal: true

require "./config/environment"

# unless ENV['HANAMI_ENV'] = "production"
use Rack::Cors do
  allow do
    origins "*"
    resource "/*", headers: :any, methods: :any
  end
end

run Hanami.app
