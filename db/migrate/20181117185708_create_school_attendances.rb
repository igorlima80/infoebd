class CreateSchoolAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :school_attendances do |t|
      t.boolean :presence
      t.references :student, foreign_key: true
      t.references :daily, foreign_key: true

      t.timestamps
    end
  end
end
