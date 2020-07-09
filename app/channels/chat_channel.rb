class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'chat_channel'
  end

  def unsubscribed
  end

  def save(options)
    message = Message.new(
      room_id: options.fetch('roomId'),
      content: options.fetch('content'),
      user_id: options.fetch('userId')
    )
    if message.save
        puts "successfully saved a message!"
        ActionCable.server.broadcast('chat_channel',
          id: message.id,
          created_at: message.created_at,
          content: message.content, 
          room_id: message.room_id, 
          user_id: message.user_id)
        # render json: MessageSerializer.new(message)
    else
        render json: {error: "Message failed to create"}
    end
  end
end