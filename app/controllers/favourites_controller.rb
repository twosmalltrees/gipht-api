class FavouritesController < ApplicationController

  def index
    @favourites = current_user.favourites
    render json: @favourites
  end

  def show
    @favourite = current_user.favourites.find(params[:id])
    render json: @favourites
  end

  def create
  end

  def update
  end

  def destroy
  end

end
