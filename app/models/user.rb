class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :courses
  has_many :posts
  has_one :major
  has_many :comments
  accepts_nested_attributes_for :major
  accepts_nested_attributes_for :courses, allow_destroy: true
  
end
