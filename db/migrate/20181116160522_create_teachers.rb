class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :cpf
      t.datetime :birth
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
