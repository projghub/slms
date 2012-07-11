class CreateAssignmentsCourses < ActiveRecord::Migration
  def up
    create_table :assignments_courses do |t|
      t.integer :assignment_id
      t.integer :course_id
      t.integer :weight
      t.integer :points

      t.timestamps
    end
  end

  def down
    drop_table :assignments_courses
  end
end
