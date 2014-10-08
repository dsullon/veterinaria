json.array!(@request_details) do |request_detail|
  json.extract! request_detail, :id, :request_id, :service_id, :pet_id, :comment
  json.url request_detail_url(request_detail, format: :json)
end
