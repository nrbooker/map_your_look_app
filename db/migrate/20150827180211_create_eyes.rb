class CreateEyes < ActiveRecord::Migration
  def change
    create_table :eyes do |t|
      t.integer :look_id
      t.string :store
      t.string :brand
      t.string :color

      t.timestamps

    end
  end
end
