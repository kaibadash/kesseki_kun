class SerializableEvent < JSONAPI::Serializable::Resource
  type 'event'
  belongs_to :user
  attributes :id, :title, :description, :user_id, :due_date, :user

  link :self do
    @url_helpers.path(:event, id: @object.id)
  end
end