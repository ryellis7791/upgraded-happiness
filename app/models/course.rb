class Course < ApplicationRecord
	has_and_belongs_to_many :users
	has_many :posts
	has_and_belongs_to_many :majors
end
