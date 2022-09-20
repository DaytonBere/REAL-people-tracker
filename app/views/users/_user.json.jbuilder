json.extract! user, :id, :permissions, :name, :tags, :created_at, :updated_at
json.url user_url(user, format: :json)
