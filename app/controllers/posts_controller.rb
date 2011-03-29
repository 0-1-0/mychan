class PostsController < ApplicationController
  # POST /posts
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to(@post.stream, :notice => 'Post was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end
end
