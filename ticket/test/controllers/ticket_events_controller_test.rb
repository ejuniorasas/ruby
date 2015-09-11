require 'test_helper'

class TicketEventsControllerTest < ActionController::TestCase
  setup do
    @ticket_event = ticket_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_event" do
    assert_difference('TicketEvent.count') do
      post :create, ticket_event: { address: @ticket_event.address, email_address: @ticket_event.email_address, name: @ticket_event.name, price_paid: @ticket_event.price_paid, seat_id_seq: @ticket_event.seat_id_seq }
    end

    assert_redirected_to ticket_event_path(assigns(:ticket_event))
  end

  test "should show ticket_event" do
    get :show, id: @ticket_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_event
    assert_response :success
  end

  test "should update ticket_event" do
    patch :update, id: @ticket_event, ticket_event: { address: @ticket_event.address, email_address: @ticket_event.email_address, name: @ticket_event.name, price_paid: @ticket_event.price_paid, seat_id_seq: @ticket_event.seat_id_seq }
    assert_redirected_to ticket_event_path(assigns(:ticket_event))
  end

  test "should destroy ticket_event" do
    assert_difference('TicketEvent.count', -1) do
      delete :destroy, id: @ticket_event
    end

    assert_redirected_to ticket_events_path
  end
end
