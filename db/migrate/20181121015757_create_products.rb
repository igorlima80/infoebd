class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.numeric :quantity_stock
      t.numeric :amount
      t.references :product_category, foreign_key: true

      t.timestamps
    end
  end
end
