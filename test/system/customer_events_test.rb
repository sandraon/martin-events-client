require "application_system_test_case"

class CustomerEventsTest < ApplicationSystemTestCase
  setup do
    @customer_event = customer_events(:one)
  end

  test "visiting the index" do
    visit customer_events_url
    assert_selector "h1", text: "Customer Events"
  end

  test "creating a Customer event" do
    visit customer_events_url
    click_on "New Customer Event"

    fill_in "Customer", with: @customer_event.customer_id
    fill_in "Event", with: @customer_event.event_id
    fill_in "Payment", with: @customer_event.payment_id
    click_on "Create Customer event"

    assert_text "Customer event was successfully created"
    click_on "Back"
  end

  test "updating a Customer event" do
    visit customer_events_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @customer_event.customer_id
    fill_in "Event", with: @customer_event.event_id
    fill_in "Payment", with: @customer_event.payment_id
    click_on "Update Customer event"

    assert_text "Customer event was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer event" do
    visit customer_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer event was successfully destroyed"
  end
end
