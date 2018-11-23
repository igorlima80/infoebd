class SchoolClass < ApplicationRecord
  belongs_to :period
  belongs_to :teacher

  has_many :students
  accepts_nested_attributes_for :students, allow_destroy: true

  has_many :dailies
end
