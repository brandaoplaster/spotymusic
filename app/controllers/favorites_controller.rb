class FavoritesController < ApplicationController
  def index
  end

  def create
    @favoritable = current_user.favorites.new(favoritable_type: params[:favoritable_type], favoritable_id: params[:id])
    @favoritable.save
  end

  def destroy
    @favoritable = current_user.favorites.find_by(favoritable_type: params[:favoritable_type], favoritable_id: params[:id])
    @favoritable.destroy
  end
end
