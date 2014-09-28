json.array!(@recipees) do |recipee|
  json.extract! recipee, :id, :name, :ingredients, :type, :ocassion, :description, :picture, :video, :eating_qtty, :prep_time, :country, :tips, :difficulty, :rating, :location
  json.url recipee_url(recipee, format: :json)
end
