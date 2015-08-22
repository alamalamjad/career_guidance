json.array!(@certification_authorities) do |certification_authority|
  json.extract! certification_authority, :id, :name, :code, :cert_authority_type_id, :city_id
  json.url certification_authority_url(certification_authority, format: :json)
end
