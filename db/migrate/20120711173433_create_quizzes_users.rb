class CreateQuizzesUsers < ActiveRecord::Migration
  def up
    create_table :quizzes_users do |t|
      t.integer :user_id
      t.integer :quiz_id
      t.integer :question_id
      t.integer :answer_id

      t.timestamps
    end
  end

  def down
    drop_table :quizzes_users
  end
end
