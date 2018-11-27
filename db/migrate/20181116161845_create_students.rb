class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.datetime :birth
      t.string :address
      t.string :email
      t.string :phone
      t.references :school_class, foreign_key: true

      t.timestamps
    end
  end
end
