class Daily < ApplicationRecord
  belongs_to :school_class

  has_many :school_attendances
  accepts_nested_attributes_for :school_attendances, allow_destroy: true
end
