json.array!(@users) do |user|
  json.extract! user, :id, :name, :username, :email, :password_digest, :password_confirmation, :profile_pic, :bio, :cooking_expertise, :favorite_foods, :location, :url, :language
  json.url user_url(user, format: :json)
end
