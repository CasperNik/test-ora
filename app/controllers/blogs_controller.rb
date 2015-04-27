class BlogsController < ApplicationController

  def index
    @list = Blog.all
    render json: @list
  end

  def create
    @blog = Blog.new blog_params
    @blog.save if @blog.valid?
    render json: {blog: @blog}
  end

  def show
    @blog = Blog.find_by id: params[:id]
    render json: {blog: @blog}
  end

  def update
    @blog = Blog.find_by id: params[:id]
    @blog.tap do |blog|
      blog.title = blog_params[:title]
      blog.text = blog_params[:text]
    end
    @blog.save if @blog.valid?
    render json: {blog: @blog}
  end

  def destroy
    @blog = Blog.find_by id: params[:id]
    @blog.destroy
    render json: {blog: @blog}
  end

  private

  def blog_params
    params.required(:blog).permit(:title, :text)
  end
end