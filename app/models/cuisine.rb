class Cuisine < ActiveRecord::Base
  has_many :recipes, :through => :categorisations
  has_many :categorisations, :as => :taxon
end
