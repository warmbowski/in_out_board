json.array!(@offices) do |office|
  json.extract! office, :id, :office_name, :geoinfo, :geofence
  json.url office_url(office, format: :json)
end
