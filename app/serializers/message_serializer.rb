class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :content, :created_at, :room_id
end
