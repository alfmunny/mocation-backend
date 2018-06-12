class PostsController < ApplicationController
  def index
    user = User.find(params[:user_id])

    @posts = paginate(user.posts)

    render json: @posts, meta: paginate_meta(@posts)
  end

end
