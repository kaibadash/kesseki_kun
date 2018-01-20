# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
get '/events', to: 'events#index', as: :events
get '/events/:id', to: 'events#show', as: :event
