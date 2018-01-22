# frozen_string_literal: true

module Web::Controllers::Events
  class Index
    include Web::Action
    include JSONAPI::Hanami::Action
    expose :url_helpers
    deserializable_resource :event

    def call(_params)
      self.data = EventRepository.new.all
      @url_helpers = routes
    end
  end
end
