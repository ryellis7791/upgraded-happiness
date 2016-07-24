class RemoveMajorColumnFromCourses < ActiveRecord::Migration[5.0]
  def change
  	remove_column :courses, :major
  end
end
