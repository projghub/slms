class CreateGradeLevels < ActiveRecord::Migration
  def up
    create_table :grade_levels do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :grade_levels
  end
end
