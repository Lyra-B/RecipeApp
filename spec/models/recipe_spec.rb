require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe "polymorphic categorisations" do
    before do
      @recipe = Recipe.new(:title => "Pasta Bake")
      @recipe.categorisations.build(:taxon => Category.create(:name=> "Vegeterian"))
      @recipe.categorisations.build(:taxon => Cuisine.create(:name => "Italian"))
      @recipe.save
      binding.pry
      @recipe.reload
    end

    it "should have two categorizations" do
      expect(@recipe.categorisations.length).to eq(2)
    end

    it "should have a category" do
      expect(@recipe.categories.length).to eq(1)
    end

    it "should have a cuisine" do
      expect(@recipe.cuisines.length).to eq(1)
    end

    it "should give me all taxons" do
      expect(@recipe.categorisations.taxons.length).to eq(2)
      expect(@recipe.categorisations.taxons.first.name).to eq("Vegetarian")
      expect(@recipe.categorisations.taxons.second.name).to eq("Italian")
    end
  end
end
