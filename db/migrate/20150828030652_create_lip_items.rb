class CreateLipItems < ActiveRecord::Migration
  def change
    create_table :lip_items do |t|
      t.string :store
      t.string :brand
      t.string :color

      t.timestamps null: false
    end
  end
end
