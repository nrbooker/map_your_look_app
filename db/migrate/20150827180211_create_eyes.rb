class CreateEyes < ActiveRecord::Migration
  def change
    create_table :eyes do |t|
      t.belongs_to :look
      t.string :selfie
      t.belongs_to :eye_item

      t.timestamps

    end
  end
end
