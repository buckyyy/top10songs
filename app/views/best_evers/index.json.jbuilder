json.array!(@best_evers) do |best_ever|
  json.extract! best_ever, :id, :user, :song, :artist, :comment
  json.url best_ever_url(best_ever, format: :json)
end
