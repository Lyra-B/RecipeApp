class Cuisine < ActiveRecord::Base
  has_many :categorisations
  has_many :recipes, :through => :categorisations
end
