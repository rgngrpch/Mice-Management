json.array!(@mice) do |mouse|
  json.extract! mouse, :id, :tag_number, :genome, :parent_information, :sex, :age, :date_of_birth
  json.url mouse_url(mouse, format: :json)
end
