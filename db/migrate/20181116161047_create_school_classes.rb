class CreateSchoolClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :school_classes do |t|
      t.string :description
      t.references :period, foreign_key: true
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
