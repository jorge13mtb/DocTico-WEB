class CreateTipoCentros < ActiveRecord::Migration
  def change
    create_table :tipo_centros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
