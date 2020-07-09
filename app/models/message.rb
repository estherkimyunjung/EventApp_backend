class Message < ApplicationRecord
    belongs_to :user
    belongs_to :room
    # after_save_commit :running_job
    
    # private 
    # def running_job
    #     MessageBroadcastJob.perform_later(self)
    # end
end
