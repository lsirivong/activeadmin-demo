json.array!(@team_listings) do |team_listing|
  json.extract! team_listing, :id, :team_id, :event_id, :lane_number
  json.url team_listing_url(team_listing, format: :json)
end
