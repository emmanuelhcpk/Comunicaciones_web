class CreateRetos < ActiveRecord::Migration
  def change
    create_table :retos do |t|
      t.string :nombre
      t.string :descripcion
      t.decimal :latitud
      t.decimal :longitud

      t.timestamps null: false
    end
  end
end
