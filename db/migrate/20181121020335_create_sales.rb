class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.datetime :date_sale
      t.numeric :unitary_value
      t.numeric :total_quantity
      t.numeric :amount
      t.string :cpf
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
