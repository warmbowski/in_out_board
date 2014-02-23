json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :email, :default_office_id, :title
  json.url employee_url(employee, format: :json)
end
