class AddTypeStudentToStudent < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :type_student, foreign_key: true
  end
end
