class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :category_id
      t.integer :recipe_id

      t.timestamps null: false
    end
  end
end
