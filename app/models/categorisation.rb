class Categorisation < ActiveRecord::Base
  belongs_to :taxon, :polymorphic => true
  belongs_to :recipe
end
