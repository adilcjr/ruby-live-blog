class HomeController < ApplicationController
  
  def index
    # @posts = Priora.prioritize(Post.all.order('created_at DESC'))
    @posts = Post.all.order('created_at DESC')
  end
end
