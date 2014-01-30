class CreatePaquetes < ActiveRecord::Migration
  def change
    create_table :paquetes do |t|
      t.string :nombre
      t.text :descripcion
      t.float :precio
      t.integer :tiempo

      t.timestamps
    end
  end
end
