json.extract! facturation, :id, :num, :account, :remise, :dateEnvoi, :dateLimite, :registrar_id, :created_at, :updated_at
json.url facturation_url(facturation, format: :json)
