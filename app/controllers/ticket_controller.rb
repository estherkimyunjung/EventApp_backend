class TicketsController < ApplicationController

  def create
      @ticket = Ticket.create(ticket_params)
      if @ticket.valid?
          render json: {@ticket}, status: :created
      else
          render json: { error: 'failed to create useticket'}, satus: :not_acceptable
      end
  end

  private
    def ticketparams
      params.require(:ticket).permit(:user_id, :event_id)
    end
end
