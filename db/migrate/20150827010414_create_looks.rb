class CreateLooks < ActiveRecord::Migration
  def change
    create_table :looks do |t|
      t.string :category
      t.belongs_to :user
      t.text :notes
      t.text :used_on
      t.string :selfie

      t.timestamps

    end
  end
end
