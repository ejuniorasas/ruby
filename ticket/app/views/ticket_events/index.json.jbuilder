json.array!(@ticket_events) do |ticket_event|
  json.extract! ticket_event, :id, :name, :seat_id_seq, :address, :price_paid, :email_address, :phone
  json.url ticket_event_url(ticket_event, format: :json)
end
