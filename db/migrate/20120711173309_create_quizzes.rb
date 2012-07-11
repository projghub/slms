class CreateQuizzes < ActiveRecord::Migration
  def up
    create_table :quizzes do |t|
      t.integer :assignment_id
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :quizzes
  end
end
