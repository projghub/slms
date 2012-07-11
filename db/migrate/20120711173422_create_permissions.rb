class CreatePermissions < ActiveRecord::Migration
  def up
    create_table :permissions do |t|
      t.string :name

      t.timestamps
    end
  end

  def down
    drop_table :permissions
  end
end
