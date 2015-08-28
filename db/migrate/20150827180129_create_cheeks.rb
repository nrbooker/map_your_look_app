class CreateCheeks < ActiveRecord::Migration
  def change
    create_table :cheeks do |t|
      t.belongs_to :look
      t.string :selfie
      t.timestamps

    end
  end
end
