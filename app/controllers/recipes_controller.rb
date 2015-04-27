class RecipesController < ApplicationController

  def index
    @list = Recipe.all.order(created_at: :desc)
    render json: @list
  end

  def create
    @recipe = Recipe.new recipe_params
    if @recipe.valid?
      @recipe.save
      Log.log_activity(@recipe, current_user, 'created')
    end
    render json: {recipe: @recipe}
  end

  def show
    @recipe = Recipe.find_by id: params[:id]
    render json: {recipe: @recipe}
  end

  def update
    @recipe = Recipe.find_by id: params[:id]
    @recipe.tap do |recipe|
      recipe.title = recipe_params[:title]
      recipe.text = recipe_params[:text]
    end
    if @recipe.valid?
      @recipe.save
      Log.log_activity(@recipe, current_user, 'updated')
    end
    render json: {recipe: @recipe}
  end

  def destroy
    @recipe = Recipe.find_by id: params[:id]
    @recipe.destroy
    Log.log_activity(@recipe, current_user, 'destroyed')
    render json: {recipe: @recipe}
  end

  private

  def recipe_params
    params.required(:recipe).permit(:title, :text)
  end
end