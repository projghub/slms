class CreateInstitutions < ActiveRecord::Migration
  def up
    create_table :institutions do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :region
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end

  def down
    drop_table :institutions
  end
end
