class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :nombre
      t.string :ubicacion
      t.integer :cant_habitaciones
      t.boolean :disponibilidad
      t.text :descripcion

      t.timestamps
    end
  end
end
