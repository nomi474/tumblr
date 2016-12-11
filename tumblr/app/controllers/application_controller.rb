class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def create
  	@post = Post.find(params[:post])
  	@comment = @post.comments.create(params[:comment].permit(:name, :body))

  	redirect_to post_path(@post)
  end
end
