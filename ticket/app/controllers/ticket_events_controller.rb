class TicketEventsController < ApplicationController
  before_action :set_ticket_event, only: [:show, :edit, :update, :destroy]

  # GET /ticket_events
  # GET /ticket_events.json
  def index
    @ticket_events = TicketEvent.all
  end

  # GET /ticket_events/1
  # GET /ticket_events/1.json
  def show
  end

  # GET /ticket_events/new
  def new
    @ticket_event = TicketEvent.new
  end

  # GET /ticket_events/1/edit
  def edit
  end

  # POST /ticket_events
  # POST /ticket_events.json
  def create
    @ticket_event = TicketEvent.new(ticket_event_params)

    respond_to do |format|
      if @ticket_event.save
        format.html { redirect_to @ticket_event, notice: 'Ticket event was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_event }
      else
        format.html { render :new }
        format.json { render json: @ticket_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_events/1
  # PATCH/PUT /ticket_events/1.json
  def update
    respond_to do |format|
      if @ticket_event.update(ticket_event_params)
        format.html { redirect_to @ticket_event, notice: 'Ticket event was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_event }
      else
        format.html { render :edit }
        format.json { render json: @ticket_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_events/1
  # DELETE /ticket_events/1.json
  def destroy
    @ticket_event.destroy
    respond_to do |format|
      format.html { redirect_to ticket_events_url, notice: 'Ticket event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_event
      @ticket_event = TicketEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_event_params
      params.require(:ticket_event).permit(:name, :seat_id_seq, :address, :price_paid, :email_address, :phone)
    end
end
