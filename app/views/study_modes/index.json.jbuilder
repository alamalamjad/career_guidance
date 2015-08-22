json.array!(@study_modes) do |study_mode|
  json.extract! study_mode, :id, :name
  json.url study_mode_url(study_mode, format: :json)
end
