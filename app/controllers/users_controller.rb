class UsersController < ApplicationController
  def index
    @all_users = User.all
  end

  def show 
    @user = User.find(params[:id])
    # @user_posts = Post.where(author_id: @user.id)
    @recent_posts = @user.three_recent_posts
  end
end
