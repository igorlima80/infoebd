class Student < ApplicationRecord
  belongs_to :school_class
  belongs_to :type_student
  has_many :school_attendances
end
