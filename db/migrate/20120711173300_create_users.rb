class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.integer :facebook_user_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country
      t.string :email
      t.string :phone

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end
