class CreateStonecategories < ActiveRecord::Migration
  def change
    create_table :stonecategories do |t|
      t.string :categoryname
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
