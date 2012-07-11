class CreateSubmissionTypes < ActiveRecord::Migration
  def up
    create_table :submission_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :submission_types
  end
end
