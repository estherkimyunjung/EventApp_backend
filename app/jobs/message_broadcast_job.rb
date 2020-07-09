class MessageBroadcastJob < ApplicationJob
    queue_as :default
  def perform(chat_message)
      ActionCable.server.broadcast('chat_channel', id: chat_message.id, room_id: chat_message.room_id, user_id: chat_message.user_id, content: chat_message.content, created_at: chat_message.created_at)
    end
end
  