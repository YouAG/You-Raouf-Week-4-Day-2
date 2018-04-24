class Course < ApplicationRecord
	has_many :students
	
	validates :course_name,  presence: true, length: { maximum: 50 }
end
