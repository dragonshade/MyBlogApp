class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [:postsjson,:show, :index, :list_posts]
  def index
  end

  def new
  end

  def update
  end

  def create
  end

  def list_posts
       array = Post.select(:id,:title,:body).limit(20).order('id desc')
       array.each { |post|
           post.body=post.body[0...300]+"......."
       }
       render json: array
  end

  def postsjson
     render json: Post.find_by(id: params[:id])
  end

  def show
  
  end

  def destroy
  end

end
