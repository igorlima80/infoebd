class SchoolAttendance < ApplicationRecord
  belongs_to :student
  belongs_to :daily
end
