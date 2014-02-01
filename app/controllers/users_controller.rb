class UsersController < ActionController::Base

  def posts
    @user = User.find(params[:id])
    @posts = Post.all
  end

end