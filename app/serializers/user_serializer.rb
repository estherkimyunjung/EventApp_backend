class UserSerializer < ActiveModel::Serializer
  attributes :username, :contact, :age, :supporter, :role, :secret_code, :id
  has_many :events
end
