class AddCuisineIdToCategorizations < ActiveRecord::Migration
  def change
    add_column :categorisations, :cuisine_id, :integer
  end
end
