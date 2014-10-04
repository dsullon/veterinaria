json.array!(@pets) do |pet|
  json.extract! pet, :id, :user_id, :name, :age, :gender, :family_id, :breed_id, :otherDetails, :string
  json.url pet_url(pet, format: :json)
end
