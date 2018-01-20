class SerializableUser < JSONAPI::Serializable::Resource
  type 'user'
  attributes :id, :name

  link :self do
    @url_helpers.path(:user, id: @object.id)
  end
end