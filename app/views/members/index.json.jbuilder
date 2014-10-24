json.array!(@members) do |member|
  json.extract! member, :id, :Id, :first_name, :last_name, :photo, :info, :search_preference, :description
  json.url member_url(member, format: :json)
end
