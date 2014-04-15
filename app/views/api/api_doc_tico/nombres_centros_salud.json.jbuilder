json.array!(@centros) do |centro|
  json.extract! centro, :nombre
end
