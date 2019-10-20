class CreateFish < ActiveRecord::Migration[5.1]
  def change
    create_table :fish do |t|
      t.string :scientific_name
      t.string :english
      t.string :spanish
      t.string :image
      t.references :fish_family, foreign_key: true

      t.timestamps
    end
  end
end
