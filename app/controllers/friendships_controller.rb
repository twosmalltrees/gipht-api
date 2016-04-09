class FriendshipsController < ApplicationController

  def index
    # Render full list of friends. Still need to sort this alphabetically.
    @friends = current_user.friends
    render json: @friends.as_json
  end

  def show
    @friend = User.find(params[:id])
    render json: @friend.as_json
  end

  def create
  end

  def confirm
  end

  def destroy
  end



end
