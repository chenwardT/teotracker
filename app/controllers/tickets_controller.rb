class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = current_user.tickets.build
  end

  def create
    @ticket = current_user.tickets.build(ticket_params)

    if @ticket.save
      flash[:success] = "Ticket created"

      redirect_to @ticket
    else
      render 'ticket/new'
    end
  end

  private

    def ticket_params
      params.require(:ticket).permit(:title, :text, :user_id, :product_id)
    end
end
