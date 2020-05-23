class RecipesController < ApplicationController
  def index
  	@search = params[:search] || 'chocolate'
  	@recipes = Recipe.all(@search)
  	@recipes.reject! do |k,v|
  	  k['thumbnail'] == ""
  	end
  end
end
