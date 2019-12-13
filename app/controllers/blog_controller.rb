class BlogController < ApplicationController
  def index
    @posts = Post.recent 5
  end
end
