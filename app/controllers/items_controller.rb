class ItemsController < ApplicationController

  def index
    @items = Item.all
    @recipes = []
  end

  def create
    @recipes = RecipesService.get_recipes(params[:items])['recipes']
    binding.pry
  end
end

