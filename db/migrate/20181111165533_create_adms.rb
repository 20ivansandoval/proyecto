class CreateAdms < ActiveRecord::Migration[5.1]
  def change
    create_table :adms do |t|
      t.string :nombre
      t.string :ubicacion
      t.integer :canthabitaciones
      t.boolean :disponibilidad
      t.text :descripcion

      t.timestamps
    end
  end
end
