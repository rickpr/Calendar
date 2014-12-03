json.array!(@users) do |user|
  json.extract! user, :id, :netid, :name, :private
  json.url user_url(user, format: :json)
end
