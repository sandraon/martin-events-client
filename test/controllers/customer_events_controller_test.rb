require 'test_helper'

class CustomerEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_event = customer_events(:one)
  end

  test "should get index" do
    get customer_events_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_event_url
    assert_response :success
  end

  test "should create customer_event" do
    assert_difference('CustomerEvent.count') do
      post customer_events_url, params: { customer_event: { customer_id: @customer_event.customer_id, event_id: @customer_event.event_id, payment_id: @customer_event.payment_id } }
    end

    assert_redirected_to customer_event_url(CustomerEvent.last)
  end

  test "should show customer_event" do
    get customer_event_url(@customer_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_event_url(@customer_event)
    assert_response :success
  end

  test "should update customer_event" do
    patch customer_event_url(@customer_event), params: { customer_event: { customer_id: @customer_event.customer_id, event_id: @customer_event.event_id, payment_id: @customer_event.payment_id } }
    assert_redirected_to customer_event_url(@customer_event)
  end

  test "should destroy customer_event" do
    assert_difference('CustomerEvent.count', -1) do
      delete customer_event_url(@customer_event)
    end

    assert_redirected_to customer_events_url
  end
end
