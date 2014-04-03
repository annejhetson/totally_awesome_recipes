class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render :index
  end

  def new
    @recipe = Recipe.new()
    render :new
  end

  def create
    Recipe.create(params[:recipe])
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
