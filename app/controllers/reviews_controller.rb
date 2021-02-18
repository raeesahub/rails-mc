class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @review = Review.new(review_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
