class Major < ApplicationRecord
	has_many :courses
	belongs_to :user
	accepts_nested_attributes_for :courses
end
