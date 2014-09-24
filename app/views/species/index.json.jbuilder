json.array!(@species) do |species|
  json.extract! species, :id, :specieId, :name
  json.url species_url(species, format: :json)
end
