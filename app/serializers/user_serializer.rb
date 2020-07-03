class UserSerializer < ActiveModel::Serializer
  attributes :user_name, :contact, :age, :supporter, :role, :secret_code
end
