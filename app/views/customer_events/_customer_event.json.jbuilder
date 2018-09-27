json.extract! customer_event, :id, :customer_id, :event_id, :payment_id, :created_at, :updated_at
json.url customer_event_url(customer_event, format: :json)
