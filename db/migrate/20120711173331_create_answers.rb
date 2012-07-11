class CreateAnswers < ActiveRecord::Migration
  def up
    create_table :answers do |t|
      t.integer :question_id
      t.string :name
      t.boolean :correct

      t.timestamps
    end
  end

  def down
    drop_table :answers
  end
end
