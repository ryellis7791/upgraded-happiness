class Course < ApplicationRecord
	belongs_to :major
	has_many :posts
	belongs_to :user
	
end
