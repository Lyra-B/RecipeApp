class Categorisation < ActiveRecord::Base
  belongs_to :taxon, :polymorphic => true, :source_type => :taxon
  belongs_to :recipe
end
