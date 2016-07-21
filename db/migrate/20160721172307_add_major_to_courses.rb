class AddMajorToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :major, :string
  end
end
