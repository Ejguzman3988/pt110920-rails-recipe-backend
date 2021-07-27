class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :time
      t.string :image
      t.string :instructions

      t.timestamps
    end
  end
end
