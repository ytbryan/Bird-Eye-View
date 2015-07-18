json.array!(@accounts) do |account|
  json.extract! account, :id, :type, :user_id, :user_id
  json.url account_url(account, format: :json)
end
