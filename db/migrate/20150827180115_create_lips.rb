class CreateLips < ActiveRecord::Migration
  def change
    create_table :lips do |t|
      t.belongs_to :look
      t.string :selfie
      t.belongs_to :lip_item

      t.timestamps

    end
  end
end
