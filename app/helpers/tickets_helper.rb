module TicketsHelper
  def ticket_status(ticket)
    if ticket.is_open
      "Open"
    else
      "Closed"
    end
  end

  def ticket_status_class(ticket)
    if ticket.is_open
      "success"
    else
      "danger"
    end
  end
end
