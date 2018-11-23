class CreateTypeStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :type_students do |t|
      t.string :name

      t.timestamps
    end
  end
end
