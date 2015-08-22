json.array!(@cert_authority_types) do |cert_authority_type|
  json.extract! cert_authority_type, :id, :name
  json.url cert_authority_type_url(cert_authority_type, format: :json)
end
