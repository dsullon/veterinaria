json.array!(@pets) do |pet|
  json.extract! pet, :id, :petId, :user_id, :name, :weight, :height, :gender, :datebirth, :specie_id, :breed_id, :otherDetails
  json.url pet_url(pet, format: :json)
end
