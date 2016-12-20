json.extract! usuario, :id, :nombre, :pmer_apellido, :sdo_apellido, :nick, :email, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)