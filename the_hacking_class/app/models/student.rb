class Student < ApplicationRecord
  belongs_to :course

  validates :student_name,  presence: true, length: { maximum: 140 }
end
