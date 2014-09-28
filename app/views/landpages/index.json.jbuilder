json.array!(@landpages) do |landpage|
  json.extract! landpage, :id
  json.url landpage_url(landpage, format: :json)
end
