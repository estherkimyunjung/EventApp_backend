class RoomsController < ApplicationController
    
        def index
            rooms = Room.all
            render json: rooms, include: :messages
        end
    
        def create
            room = Room.new(room_params)
            if room.save
                puts "successfully saved a message!"
                # ChatChannel.broadcast('chat_channel',
                #     id: chat_message.id,
                #     created_at: chat_message.created_at.strftime('%H:%M'),
                #     content: chat_message.content)
                render json: room, includes: [:messages, :users, :event]
            else
                render json: {error: "Message failed to create"}
            end
            
        end
    
          
        private
          
        def room_params
            params.require(:room).permit(:name, :event_id)
        end
end
