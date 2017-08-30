json.array!(@cages) do |cage|
  json.extract! cage, :id, :cage_name
  json.url cage_url(cage, format: :json)
end
