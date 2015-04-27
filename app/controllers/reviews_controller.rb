class ReviewsController < ApplicationController

  def index
    @list = Review.all.order(created_at: :desc)
    render json: @list
  end

  def create
    @review = Review.new review_params
    @review.save if @review.valid?
    render json: {review: @review}
  end

  def show
    @review = Review.find_by id: params[:id]
    render json: {review: @review}
  end

  def update
    @review = Review.find_by id: params[:id]
    @review.tap do |review|
      review.title = review_params[:title]
      review.text = review_params[:text]
    end
    @review.save if @review.valid?
    render json: {review: @review}
  end

  def destroy
    @review = Review.find_by id: params[:id]
    @review.destroy
    render json: {review: @review}
  end

  private

  def review_params
    params.required(:review).permit(:title, :text)
  end
end