class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index, :list_posts]
  def index
  end

  def new
  end

  def update
  end

  def create
  end

  def list_posts
      render json: Post.select(:id,:title).limit(20).order('id desc')
  end

  def show
    
  end

  def destroy
  end

end
