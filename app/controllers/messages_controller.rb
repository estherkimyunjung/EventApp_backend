class MessagesController < ApplicationController
    def index
        messages = Message.all
        render json: messages
    end

    def create
        message = Message.new(message_params)
        if message.save
            puts "successfully saved a message!"
            # ChatChannel.broadcast('chat_channel',
            #     id: chat_message.id,
            #     created_at: chat_message.created_at.strftime('%H:%M'),
            #     content: chat_message.content)
            render json: MessageSerializer.new(message)
        else
            render json: {error: "Message failed to create"}
        end
        
    end

      
    private
      
    def message_params
        params.require(:message).permit(:content, :user_id)
    end
end