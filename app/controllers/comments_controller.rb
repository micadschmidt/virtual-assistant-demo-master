class CommentsController < ApplicationController
  COMMENTS_PER_PAGE = 6

  def index
    # @comments = Comment.all
    # @page =  params[:page].to_i
    @page = params[:page].to_i
    @comments = Comment.offset(@page * COMMENTS_PER_PAGE).limit(COMMENTS_PER_PAGE)
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.assistant_id = current_user.assistant.id
    if @comment.save
      redirect_to comments_path
    else
      flash[:alert] = "Something went wrong."
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  #   redirect_to assistant_path(@review.assistant), status: :see_other
  # end

  private

  def comment_params
    params.require(:comment).permit(:title, :content, :rating, :name, :assistant_id)
  end
end
