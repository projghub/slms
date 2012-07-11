class CreateClassroomsUsers < ActiveRecord::Migration
  def up
    create_table :classrooms_users do |t|
      t.integer :classroom_id
      t.integer :user_id

      t.timestamps
    end
  end

  def down
    drop_table :classrooms_users
  end
end
