json.array!(@muestras) do |muestra|
  json.extract! muestra, :hora, :fecha, :sistolica, :diastolica
end
