class CreateCita < ActiveRecord::Migration
  def change
    create_table :cita do |t|
      t.string :identificador
      t.string :hora
      t.string :fecha
      t.string :centro

      t.timestamps
    end
  end
end
