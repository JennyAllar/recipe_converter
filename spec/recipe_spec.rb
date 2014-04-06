require 'recipe'
require 'rspec'

describe "RecipeConverter" do
  it "prints on array of a hash" do
    ingredients = RecipeConverter.new([:cheese => 45, :peanut_butter => 60])

    expected = [:cheese => 45, :peanut_butter => 60]
    actual = ingredients.to_tablespoons

    expect(actual).to eq expected
  end
end