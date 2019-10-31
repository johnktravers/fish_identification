class CreateFish < ActiveRecord::Migration[5.1]
  def change
    create_table :fish do |t|
      t.integer :species_code
      t.integer :family_code
      t.string :genus
      t.string :species
      t.string :english
      t.string :image
      t.references :family, foreign_key: true

      t.timestamps
    end
  end
end
