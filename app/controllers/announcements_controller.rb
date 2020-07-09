class AnnouncementsController < ApplicationController
    def create
        @announce = Announcement.create(announce_params)
        if @announce.valid?
            render json: @annoumce, status: :created
        else
            render json: { error: 'failed to create announcement'}, satus: :not_acceptable
        end
    end

    private
    def announce_params
        params.require(:announcement).permit(:event_id, :message)
    end
end
