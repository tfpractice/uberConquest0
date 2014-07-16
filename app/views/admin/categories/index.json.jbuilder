json.array!(@categories) do |category|
  json.extract! category, :name, :featured
  json.url category_url(category, format: :json)
end