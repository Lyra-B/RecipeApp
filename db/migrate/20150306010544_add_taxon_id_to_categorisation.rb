class AddTaxonIdToCategorisation < ActiveRecord::Migration
  def change
    add_column :categorisations, :taxon_id, :integer
  end
end
