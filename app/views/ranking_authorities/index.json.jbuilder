json.array!(@ranking_authorities) do |ranking_authority|
  json.extract! ranking_authority, :id, :name, :code
  json.url ranking_authority_url(ranking_authority, format: :json)
end
