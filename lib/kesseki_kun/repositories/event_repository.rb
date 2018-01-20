class EventRepository < Hanami::Repository
  associations do
    has_one :user
  end
end
