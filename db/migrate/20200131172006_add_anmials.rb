class AddAnmials < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.string :gender
      t.string :bio
      t.string :breed
      t.string :image
    end
  end
end
