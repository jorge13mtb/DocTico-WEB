json.array!(@citas) do |cita|
  json.extract! cita, :identificador, :hora, :fecha, :centro
end
