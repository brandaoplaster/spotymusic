class FavoritesController < ApplicationController
  def index
  end

  def create
  end

  def destroy
    @favoritable = current_user.favorites.find_by(favoritable_type: params[:favoritable_type], favoritable_id: params[:id])
    @favoritable.destroy
  end
end
