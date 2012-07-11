class CreateClassrooms < ActiveRecord::Migration
  def up
    create_table :classrooms do |t|
      t.integer :teacher_id
      t.integer :grade_level_id
      t.string :name
      t.string :reference
      t.datetime :date_start
      t.datetime :date_end

      t.timestamps
    end
  end

  def down
    drop_table :classrooms
  end
end
