class CreatePresionArterials < ActiveRecord::Migration
  def change
    create_table :presion_arterials do |t|
      t.string :hora
      t.string :fecha
      t.integer :sistolica
      t.integer :diastolica
      t.integer :usuario_id

      t.timestamps
    end
  end
end
