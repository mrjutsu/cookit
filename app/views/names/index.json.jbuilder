json.array!(@names) do |name|
  json.extract! name, :id, :ingredients, :type, :ocassion, :description, :picture, :video, :eating_qtty, :prep_time, :country, :tips, :difficulty, :rating, :location
  json.url name_url(name, format: :json)
end
