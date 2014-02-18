class PostsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]

  def index
  end

  def new
  end

  def update
  end

  def create
  end

  def destroy
  end
end
