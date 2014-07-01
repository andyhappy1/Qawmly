json.array!(@trackees) do |trackee|
  json.extract! trackee, :id, :name, :email
  json.url trackee_url(trackee, format: :json)
end
