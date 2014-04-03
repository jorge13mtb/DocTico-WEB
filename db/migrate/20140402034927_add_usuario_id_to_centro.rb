class AddUsuarioIdToCentro < ActiveRecord::Migration
  def change
    add_column :centros, :usuario_id, :int
  end
end
