json.array!(@inquiries) do |inquiry|
  json.extract! inquiry, :email, :suggested
  json.url inquiry_url(inquiry, format: :json)
end