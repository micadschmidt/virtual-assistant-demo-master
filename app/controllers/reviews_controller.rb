class ReviewsController < ApplicationController
  before_action :set_assistant, only: %i[new create]

  def new
    @assistant = Assistant.find(params[:assistant_id])
    # @company = Company.find(params[:user_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.assistant = @assistant
    if @review.save
      redirect_to assistant_path(@assistant)
    else
      flash[:alert] = "Something went wrong."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to assistant_path(@review.assistant), status: :see_other
  end

  private

  def set_assistant
    @assistant = Assistant.find(params[:assistant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
