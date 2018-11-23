class CreateDailies < ActiveRecord::Migration[5.2]
  def change
    create_table :dailies do |t|
      t.datetime :date_daily
      t.references :school_class, foreign_key: true

      t.timestamps
    end
  end
end
