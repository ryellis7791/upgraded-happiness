class AddUserToMajors < ActiveRecord::Migration[5.0]
  def change
    add_reference :majors, :user, foreign_key: true
  end
end
