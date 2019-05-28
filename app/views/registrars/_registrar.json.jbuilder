json.extract! registrar, :id, :name, :phone, :fax, :mail, :url, :adresse, :city_id, :created_at, :updated_at
json.url registrar_url(registrar, format: :json)
