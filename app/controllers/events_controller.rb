class EventsController < ApplicationController
  def index
    @events = Event.all
    render json: @events
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  # def create
  #     @event = Event.create(event_params)
  #     if @event.valid?
  #         render json: {@event}, status: :created
  #     else
  #         render json: { error: 'failed to create event'}, satus: :not_acceptable
  #     end
  # end

  # private
  # def event_params
  #     params.require(:event).permit(:title, :category, :date, :address, :description, :image, :status, :public, :organization_id)
  # end  
end
