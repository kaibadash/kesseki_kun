# frozen_string_literal: true

module Web::Controllers::Users
  class New
    include Web::Action

    def call(params)
      UserRepository.new.find_or_create_by_auth0_token(params[:token])
    end
  end
end
