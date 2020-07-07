class TicketsController < ApplicationController

  def create
      @ticket = Ticket.new(ticket_params)
      # byebug
      if @ticket.valid?
          @ticket.save
          render json: {ticket: @ticket}, status: :created
      else
          render json: { error: 'failed to create ticket'}, satus: :not_acceptable
      end
  end

  def delete
    tickets = Ticket.select{|ticket| ticket.user_id === params[user_id]}
    @ticket = tickets.find_by(event_id: params[event_id])
    byebug
    if @ticket 
      @ticket.destroy
      render json: @ticket
    else
      render json: {error: 'Invalid Ticket'}
    end
  end

  private
    def ticket_params
      params.require(:ticket).permit(:user_id, :event_id)
    end
end
