class CreateAmsfoods < ActiveRecord::Migration
  def change
    create_table :amsfoods do |t|
      t.string :titlerus
      t.text :descriptionrus
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
