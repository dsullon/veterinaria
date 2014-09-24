json.array!(@users) do |user|
  json.extract! user, :id, :userId, :userName, :name, :lastName, :password, :address, :phone, :mobilePhone, :email, :userType, :avatar
  json.url user_url(user, format: :json)
end
