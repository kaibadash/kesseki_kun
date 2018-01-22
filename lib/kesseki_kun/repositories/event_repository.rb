# frozen_string_literal: true

class EventRepository < Hanami::Repository
  associations do
    has_one :user
  end
end
