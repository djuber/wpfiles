json.array!(@wordpresses) do |wordpress|
  json.extract! wordpress, :id, :version, :release_date
  json.url wordpress_url(wordpress, format: :json)
end
