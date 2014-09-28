json.array!(@users) do |user|
  json.extract! user, :id, :email, :name, :lastName, :password, :address, :phone, :mobilePhone, :avatar
  json.url user_url(user, format: :json)
end
