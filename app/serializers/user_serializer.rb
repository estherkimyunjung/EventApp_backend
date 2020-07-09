class UserSerializer < ActiveModel::Serializer
  attributes :username, :contact, :age, :supporter, :role, :id
  has_many :events
  has_many :messages
end
