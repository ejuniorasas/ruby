class AddPhoneToTicketEvents < ActiveRecord::Migration
  def change
    add_column :ticket_events, :phone, :string
  end
end
