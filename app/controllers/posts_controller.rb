class PostsController < ApiController
  # GET /api/posts
  def index
    @posts = Post.select("id, title, created_at").all
    render json: @posts
  end

  # GET /api/posts/1
  def show
    @post = Post.find(params[:id])
    render json: @post
  end
end
