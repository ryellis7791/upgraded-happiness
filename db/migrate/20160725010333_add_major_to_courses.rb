class AddMajorToCourses < ActiveRecord::Migration[5.0]
  def change
    add_reference :courses, :major, foreign_key: true
  end
end
