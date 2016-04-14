json.array!(@products) do |product|
  json.extract! product, :id, :cod, :price, :description
  json.url product_url(product, format: :json)
end
