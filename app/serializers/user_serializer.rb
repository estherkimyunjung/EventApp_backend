class UserSerializer < ActiveModel::Serializer
  attributes :username, :contact, :age, :supporter, :role, :secret_code
  has_many :events
end
