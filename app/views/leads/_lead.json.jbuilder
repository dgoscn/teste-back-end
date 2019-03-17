json.extract! lead, :id, :name, :email, :created_at, :updated_at
json.url lead_url(lead, format: :json)
