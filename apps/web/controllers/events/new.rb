module Web::Controllers::Events
  class New
    include Web::Action

    def call(params)
      # TODO: 認証
      EventRepository.new.create(params)
    end
  end
end
