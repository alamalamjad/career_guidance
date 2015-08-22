json.array!(@institution_types) do |institution_type|
  json.extract! institution_type, :id, :name
  json.url institution_type_url(institution_type, format: :json)
end
