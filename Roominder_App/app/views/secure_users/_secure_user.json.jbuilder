json.extract! secure_user, :id, :name, :username, :email, :created_at, :updated_at
json.url secure_user_url(secure_user, format: :json)
