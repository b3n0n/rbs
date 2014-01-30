json.array!(@paquetes) do |paquete|
  json.extract! paquete, :id, :nombre, :descripcion, :precio, :tiempo
  json.url paquete_url(paquete, format: :json)
end
