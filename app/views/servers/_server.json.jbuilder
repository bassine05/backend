json.extract! server, :id, :name, :ip_adress, :domain_id, :created_at, :updated_at
json.url server_url(server, format: :json)
