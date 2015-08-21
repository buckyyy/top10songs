json.array!(@votes) do |vote|
  json.extract! vote, :id, :song_id, :artist_id, :rank
  json.url vote_url(vote, format: :json)
end
