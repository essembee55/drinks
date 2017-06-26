class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.integer :price
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
