class ReviewsController < ApplicationController

  before_action :set_cocktail, only: [:new, :create]

  def new
    # @cocktail = Cocktail.find(params[:cocktail_id]) #- we need @cocktail in the form
    @review = Review.new
  end

  def create
    # @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    @review.save
    if @review.save
      redirect_to cocktail_path(@review.cocktail)
    else
      render :new
    end
  end


  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def review_params
    params.require(:review).permit(:content, :cocktail_id, :rating)
  end
end
