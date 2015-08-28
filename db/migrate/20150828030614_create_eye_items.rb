class CreateEyeItems < ActiveRecord::Migration
  def change
    create_table :eye_items do |t|
      t.string :store
      t.string :brand
      t.string :color
      t.belongs_to :eye

      t.timestamps null: false
    end
  end
end
