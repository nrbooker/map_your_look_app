class CreateLooks < ActiveRecord::Migration
  def change
    create_table :looks do |t|
      t.string :category
      t.integer :user_id
      t.text :notes
      t.date :used_on
      t.string :selfie

      t.timestamps

    end
  end
end
