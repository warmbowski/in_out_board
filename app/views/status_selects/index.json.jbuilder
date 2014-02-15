json.array!(@status_selects) do |status_select|
  json.extract! status_select, :id, :status, :status_type, :icon
  json.url status_select_url(status_select, format: :json)
end
