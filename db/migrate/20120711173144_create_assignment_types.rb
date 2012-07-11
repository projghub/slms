class CreateAssignmentTypes < ActiveRecord::Migration
  def up
    create_table :assignment_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :assignment_types
  end
end
