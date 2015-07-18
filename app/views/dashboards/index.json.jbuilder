json.array!(@dashboards) do |dashboard|
  json.extract! dashboard, :id, :user_id, :user_id, :website, :total_count
  json.url dashboard_url(dashboard, format: :json)
end
