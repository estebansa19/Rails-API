class CreateArticulos < ActiveRecord::Migration[5.2]
  def change
    create_table :articulos do |t|
      t.string :nombre
      t.integer :precio
      t.integer :cantidad

      t.timestamps
    end
  end
end
