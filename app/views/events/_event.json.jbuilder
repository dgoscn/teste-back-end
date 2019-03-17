json.extract! event, :id, :uuid, :url, :timestamp, :created_at, :updated_at
json.url event_url(event, format: :json)
