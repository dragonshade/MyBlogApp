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
      @posts = Post.all
      post_hash={}
      @posts.each {|p| post_hash[p.id]=p.title}

      respond_to do |format|       
         format.json { render json: post_hash }
      end
  end

  def show
    
  end

  def destroy
  end

end
