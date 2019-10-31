class CreateFamilies < ActiveRecord::Migration[5.1]
  def change
    create_table :families do |t|
      t.integer :family_code
      t.string :name
      t.string :english
      t.integer :genera
      t.integer :species
      t.string :image

      t.timestamps
    end
  end
end
