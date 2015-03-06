class Category < ActiveRecord::Base
  has_many :categorisations
  has_many :recipes, :through => :categorisations, :as => :taxon
end
