json.array!(@statuses) do |status|
  json.extract! status, :id, :in_out, :on_off, :status_select_id, :current_location, :return, :employee_id
  json.url status_url(status, format: :json)
end
