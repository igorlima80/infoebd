class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.datetime :date
      t.numeric :quantity
      t.datetime :date_purchase
      t.string :invoice_number
      t.string :invoice_cnpj
      t.numeric :unitary_value
      t.numeric :total_quantity
      t.numeric :amount
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
