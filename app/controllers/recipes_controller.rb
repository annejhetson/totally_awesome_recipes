class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render :index
  end

  def new
    @recipe = Recipe.new()
    @tags = Tag.all
    render :new
  end

  def create
    recipe = Recipe.new(params[:recipe])
    if recipe.save

      params[:tag_ids].each do |tagId|
      Tagged_recipe.create({recipe_id: recipe.id, tag_id: tagId})
      end

      flash[:notice] = "Your awesome recipe has been saved."
    end
    redirect_to ''
  end

  def show
    @recipe = Recipe.find(params[:id])
    render :show
  end

  def delete
    Recipe.find(params[:id]).destroy
    redirect_to ''
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render :edit
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(params[:recipe])
    redirect_to "/recipes/#{@recipe.id}"
  end
end
