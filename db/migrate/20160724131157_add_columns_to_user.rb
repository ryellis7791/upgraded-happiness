class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :course_one, :string
  	add_column :users, :course_two, :string
  	add_column :users, :course_three, :string
  	add_column :users, :course_four, :string
  	add_column :users, :course_five, :string
  end
end
