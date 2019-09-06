class PostController < ApplicationController
  def create
  end

  def store
    # upload image to cloudinary
    @image = Cloudinary::Uploader.upload(params[:media])
    # create a new post object and save to db
    @post = Post.new({
      :title => params[:title],
      :body => params[:body],
      :author => params[:author],
      :media => @image['secure_url'],
      :likes => params[:likes],
      :sponsored => params[:sponsored],
      :due_date => params[:due_date]
    })
    @post.save
    # trigger an event with pusher
    redirect_to('/')
  end

  def show
    @post = Post.find(params[:id])
  end
end
