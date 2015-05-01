class Recipe < ActiveRecord::Base
  belongs_to :chef
  has_many :categorisations

  has_many :categories, :through => :categorisations, :source => :taxon, :source_type => "Category"
  has_many :cuisines, :through => :categorisations, :source => :taxon, :source_type => "Cuisine"
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients

  accepts_nested_attributes_for :recipe_ingredients
  validates :title, :presence => true
end
