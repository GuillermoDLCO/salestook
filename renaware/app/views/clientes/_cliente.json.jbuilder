json.extract! cliente, :id, :name, :dni, :direccion, :email, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
