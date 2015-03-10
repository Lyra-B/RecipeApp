class AdTaxonTypetoCategorisation < ActiveRecord::Migration
  def change
    add_column :categorisations, :taxon_type, :string
  end
end
