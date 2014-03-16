json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :name
  json.url apartment_url(apartment, format: :json)
end
