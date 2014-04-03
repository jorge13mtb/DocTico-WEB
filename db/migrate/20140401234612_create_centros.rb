class CreateCentros < ActiveRecord::Migration
  def change
    create_table :centros do |t|
      t.string :nombre
      t.float :longitud
      t.float :latitud
      t.string :tipo
      t.text :horario
      t.text :descripcion

      t.timestamps
    end
  end
end
