class EventsController < ApplicationController
  skip_before_action :logged_in?, only: [:index]
  
  def index
    @events = Event.all
    render json: @events, include: [:organization, :users, :announcements]
  end

  def show
    @event = Event.find(params[:id])
    render json: @event, include: [:users]
  end

  def create
      @event = Event.create(event_params)
      if @event.valid?
        # render json: { user: UserSerializer.new(@user) }, status: :created
          render json: {event: @event}, status: :created
      else
          render json: { error: 'failed to create event'}, satus: :not_acceptable
      end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
        
        render json: @event
    else 
        render json: { error: 'failed to update event'}, status: :not_acceptable
    end
  end


  private
  def event_params
      params.require(:event).permit(:title, :category, :date, :address, :description, :image, :stage, :public, :organization_id)
  end
    
end