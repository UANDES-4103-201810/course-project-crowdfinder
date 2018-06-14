json.extract! merch, :id, :name, :description, :promise_id, :created_at, :updated_at
json.url merch_url(merch, format: :json)
