json.array!(@prestadors) do |prestador|
  json.extract! prestador, :id, :servicios, :tarifas, :promociones, :puntos, :contactos, :websites
  json.url prestador_url(prestador, format: :json)
end
