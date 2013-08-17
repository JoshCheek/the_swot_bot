class Enrollment < ActiveRecord::Base
	validates :student_profile_id, :presence => true
	validates :course_id, :presence => true
	validates :student_profile_id, :uniqueness => { :scope => :course_id }

	belongs_to :course
	belongs_to :student, :class_name => "StudentProfile", :foreign_key => "student_profile_id"
	has_many 	 :events
end