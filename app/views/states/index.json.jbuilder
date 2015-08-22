json.array!(@states) do |state|
  json.extract! state, :id, :name, :code, :country_code
  json.url state_url(state, format: :json)
end
