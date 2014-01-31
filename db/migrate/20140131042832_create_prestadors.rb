class CreatePrestadors < ActiveRecord::Migration
  def change
    create_table :prestadors do |t|
      t.text :servicios
      t.float :tarifas
      t.text :promociones
      t.text :puntos
      t.text :contactos
      t.text :websites

      t.timestamps
    end
  end
end
