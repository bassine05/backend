json.extract! domain, :id, :name, :expiration_date, :status, :registrar_id, :contact_id, :extension_id, :operation_id, :created_at, :updated_at
json.url domain_url(domain, format: :json)
