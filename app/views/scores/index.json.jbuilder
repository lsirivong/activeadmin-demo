json.array!(@scores) do |score|
  json.extract! score, :id, :total, :bowler_id, :event_id
  json.url score_url(score, format: :json)
end
