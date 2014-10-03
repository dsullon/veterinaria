json.array!(@vets) do |vet|
  json.extract! vet, :id, :emailContact, :password, :name, :businessName, :document, :logo, :address
  json.url vet_url(vet, format: :json)
end
