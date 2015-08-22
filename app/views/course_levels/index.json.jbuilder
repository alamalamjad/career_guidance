json.array!(@course_levels) do |course_level|
  json.extract! course_level, :id, :name
  json.url course_level_url(course_level, format: :json)
end
