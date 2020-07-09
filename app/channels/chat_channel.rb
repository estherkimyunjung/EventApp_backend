class ChatChannel < ApplicationCable::Channel
    def subscribed
      stream_from 'chat_channel'
    end
  def unsubscribed
    end
  def create(options)
    byebug
     Message.create(
        room_id: options.fetch('roomId'),
        content: options.fetch('content'),
        user_id: options.fetch('userId')
     )
   end
end