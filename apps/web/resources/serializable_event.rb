class SerializableEvent < JSONAPI::Serializable::Resource
  type 'event'
  attributes :title, :description, :user_id, :due_date

  belongs_to :user

  link :self do
    @url_helpers.path(:event, id: @object.id)
  end
end