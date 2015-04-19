class CreateLogros < ActiveRecord::Migration
  def change
    create_table :logros do |t|
      t.integer :usuario_id
      t.date :fecha
      t.integer :reto_id

      t.timestamps null: false
    end
  end
end
