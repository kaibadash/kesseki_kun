module Web::Controllers::Users
  class Index
    include Web::Action
    include JSONAPI::Hanami::Action
    expose :url_helpers
    deserializable_resource :user

    def call(params)
      self.data = UserRepository.new.all
      @url_helpers = routes
    end
  end
end
