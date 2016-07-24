class CreateCoursesMajorsJoin < ActiveRecord::Migration[5.0]
  def change
    create_table :courses_majors, :id => false do |t|
    	t.integer "course_id"
    	t.integer "major_id"
    end
    add_index :courses_majors, ["course_id", "major_id"]
  end
end
