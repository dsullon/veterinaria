json.array!(@requests) do |request|
  json.extract! request, :id, :requestDate, :serviceType_id, :address, :proposeDate, :proposeHour, :isPending, :isConfirmed, :comment, :vet_id, :user_id
  json.url request_url(request, format: :json)
end
