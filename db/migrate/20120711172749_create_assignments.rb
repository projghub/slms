class CreateAssignments < ActiveRecord::Migration
  def up
    create_table :assignments do |t|
      t.integer :assignment_type_id
      t.integer :submission_type_id
      t.integer :classroom_id
      t.string :name
      t.datetime :date_due
 
      t.timestamps
    end
  end

  def down
    drop_table :assignments
  end
end
