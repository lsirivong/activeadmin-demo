json.array!(@events) do |event|
  json.extract! event, :id, :date
  json.url event_url(event, format: :json)
end
