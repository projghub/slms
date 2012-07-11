class CreateQuestions < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.integer :quiz_id
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :questions
  end
end
