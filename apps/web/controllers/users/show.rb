# frozen_string_literal: true

module Web::Controllers::Users
  class Show
    include Web::Action
    include JSONAPI::Hanami::Action
    expose :url_helpers
    deserializable_resource :user

    def call(params)
      self.data = UserRepository.new.find(params[:id])
      @url_helpers = routes
    end
  end
end
