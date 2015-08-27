class CreateCheeks < ActiveRecord::Migration
  def change
    create_table :cheeks do |t|
      t.integer :look_id
      t.string :store
      t.string :brand
      t.string :color

      t.timestamps

    end
  end
end
