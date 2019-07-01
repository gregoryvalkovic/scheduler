json.extract! event, :id, :name, :startDate, :endDate, :created_at, :updated_at
json.url event_url(event, format: :json)
