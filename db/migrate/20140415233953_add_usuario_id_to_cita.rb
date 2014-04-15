class AddUsuarioIdToCita < ActiveRecord::Migration
  def change
    add_column :cita, :usuario_id, :integer
  end
end
