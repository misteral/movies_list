json.extract! user, :id, :username, :created_at, :updated_at
json.url api_user_url(user, format: :json)
