json.array!(@productions) do |production|
  json.extract! production, :id, :mouse_genome, :mother_tag_number
  json.url production_url(production, format: :json)
end
