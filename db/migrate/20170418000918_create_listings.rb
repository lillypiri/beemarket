class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.integer :quantity
      t.references :vendor, foreign_key: true
      t.string :species

      t.timestamps
    end
  end
end
