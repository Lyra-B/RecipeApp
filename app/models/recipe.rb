class Recipe < ActiveRecord::Base
  has_many :categories, :through => :categorisations, :source => :taxon, :source_type => "Category"
  has_many :cuisines, :through => :categorisations, :source => :taxon, :source_type => "Cuisine"
  has_many :categorisations
end
