class AddKeysToCategorisations < ActiveRecord::Migration
  def change
    add_column :categorisations, :category_id, :integer
    add_column :categorisations, :recipe_id, :integer
  end
end
