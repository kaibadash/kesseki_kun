module Web::Controllers::Events
  class Show
    include Web::Action
    include JSONAPI::Hanami::Action
    expose :url_helpers
    deserializable_resource :event

    def call(params)
      self.data = EventRepository.new.find(params[:id])
      @url_helpers = routes
    end
  end
end
