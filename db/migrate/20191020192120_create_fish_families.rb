class CreateFishFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :fish_families do |t|
      t.string :name
      t.string :english
      t.string :spanish
      t.string :image

      t.timestamps
    end
  end
end
