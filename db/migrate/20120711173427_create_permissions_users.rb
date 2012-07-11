class CreatePermissionsUsers < ActiveRecord::Migration
  def up
    create_table :permissions_users do |t|
      t.integer :permission_id
      t.integer :user_id

      t.timestamps
    end
  end

  def down
    drop_table :permissions_users
  end
end
